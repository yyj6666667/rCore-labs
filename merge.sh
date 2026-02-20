#!/bin/bash
set -e # 遇到任何错误立即停止

# ==========================================
# 1. 定义你要合并的分支
# ==========================================
BRANCHES=("ch1" "ch2" "ch3" "ch4" "ch5")

# 拉取远程所有分支信息
git fetch --all

# 确保本地有这些分支（如果没有，基于远程创建）
for br in "${BRANCHES[@]}"; do
    if ! git show-ref --verify --quiet refs/heads/"$br"; then
        echo "本地未找到 $br，正在基于 origin/$br 创建..."
        git branch "$br" "origin/$br" || true
    fi
done


echo "正在创建最终分支 all-records..."
git checkout --orphan all-records
git rm -rf .  # 清空所有现有文件，保证干净
git commit --allow-empty -m "chore: init merge branch"

# ==========================================
# 3. 开始合并
# ==========================================
for br in "${BRANCHES[@]}"; do
    echo "------------------------------------------------"
    echo "正在处理分支: $br -> 目标目录: ${br}_dir"

    git merge -s ours --no-commit --allow-unrelated-histories "$br"

    # 【关键步骤 B】：手动把该分支的文件“读”进子目录
    # --prefix 指定放入哪个子文件夹
    # -u 更新 index 和工作区
    git read-tree --prefix="${br}_dir/" -u "$br"

    # 【关键步骤 C】：提交
    git commit --no-edit -m "Merge branch '$br' into subdirectory '${br}_dir'"

    echo "成功合并 $br"
done

echo "------------------------------------------------"
echo "🎉 全部完成！所有分支已合并到 all-records，且互不干扰。"
echo "请输入以下命令查看结果："
echo "git log --graph --oneline --all"