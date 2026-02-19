* mmap: 安全映射 + 地址分配
  ```rust
  pub fn sys_mmap(_start: usize, _len: usize, _prot: usize) -> isize {
    trace!("kernel: sys_mmap NOT IMPLEMENTED YET!");
    if _start % PAGE_SIZE != 0 { // 如果虚拟地址没有按页对齐直接失败
        return -1;
    }
    if _prot & !0x7 != 0 { // _prot 其余位必须为 0
        return -1;
    }
    if _prot & 0x7 == 0 { // 这样的内存无意义
        return -1;
    }
    let num_pages = (_len + PAGE_SIZE - 1) / PAGE_SIZE; // page 数向上取整
    let mut map_perm: MapPermission = MapPermission::U; // MapPermission::V 会在 page_table 的 map 中被加上
    if _prot & 0x1 != 0 { // read
        map_perm |= MapPermission::R;
    }
    if _prot & 0x2 != 0 { // write
        map_perm |= MapPermission::W;
    }
    if _prot & 0x4 != 0 { // execute
        map_perm |= MapPermission::X;
    }
    let vpn = VirtAddr::from(_start).floor();
    match map_for_current_task(vpn, num_pages, map_perm) {
        0 => {
            return 0;
        },
        _ => {
            return -1;
        }
    };
  }

  pub fn map_for_current_task(start_vpn: VirtPageNum, num_pages: usize, map_perm: MapPermission) -> isize {
    //前期的安全检查
    let task_id = get_current_task_id();
    let memory_set = &mut TASK_MANAGER.inner.exclusive_access().tasks[task_id].memory_set;
    let mut end_vpn = start_vpn;
    // 检查亟待映射的虚拟地址是否已经被映射了
    for _ in 0..num_pages {
        if let Some(pte) = memory_set.translate(end_vpn) {
            if pte.is_valid() { // vpn 已经被映射到了已经存在的物理页
                return -1;
            }
        }
        end_vpn.step();
    }
    let start_va = VirtAddr::from(start_vpn);
    let end_va = VirtAddr::from(end_vpn);
    // 真正的映射是发生在 memory_set 的 insert_framed_area 中
    memory_set.insert_framed_area(start_va, end_va, map_perm);
    return 0;
  }
  ```
* 记录一个有代表性的函数： `translate_byte_buffer`
  map addr from user virtual space to kernel virtual space
  ```rust
  pub fn translated_byte_buffer(token: usize, ptr: *const u8,
    len: usize) -> Vec<&'static mut [u8]> {
    let page_table = PageTable::from_token(token);
    let mut start = ptr as usize;
    let end = start + len;
    let mut v = Vec::new();
    while start < end {
      let start_va :VirtAddr = start.into();
      let mut vpn = start_va.floor();
      let ppn = page_table.translate(vpn).unwarp().ppn();

      vpn += 1;
      //handle the last page:
      let mut end_va = min(VirtAddr::from(end), vpn.into());
      if end_va.page_offset() == 0 {
        //include at least the first page and middle pages
        v.push(&mut ppn.get_bytes_array()[start_va.page_offset()..]);
      } else {
        v.push(&mut ppn.get_bytes_array()[start_va.page_offset()..end_va.page_offset()]);
      }

      start = end_va.into();
    }
    v
  }
  ```
* 内核也是在虚拟地址空间里工作，只是对物理内存做了恒等映射，所以看起来像“直接访问物理地址”
* sys_get_time 的实现：不能直接解引用用户指针，必须通过「当前进程的页表」把用户地址翻译成内核能访问的物理页再写
* 当前实验是：进程和内核各一张页表，trap 时切换 satp，两套地址空间独立。另外一种设计是一张表里既有用户区又有内核区。

# rCore-Tutorial-Code-2025S

### Code
- [Soure Code of labs for 2025S](https://github.com/LearningOS/rCore-Tutorial-Code-2025S)
### Documents

- Concise Manual: [rCore-Tutorial-Guide-2025S](https://LearningOS.github.io/rCore-Tutorial-Guide-2025S/)

- Detail Book [rCore-Tutorial-Book-v3](https://rcore-os.github.io/rCore-Tutorial-Book-v3/)


### OS API docs of rCore Tutorial Code 2025S
- [OS API docs of ch1](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch1/os/index.html)
  AND [OS API docs of ch2](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch2/os/index.html)
- [OS API docs of ch3](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch3/os/index.html)
  AND [OS API docs of ch4](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch4/os/index.html)
- [OS API docs of ch5](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch5/os/index.html)
  AND [OS API docs of ch6](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch6/os/index.html)
- [OS API docs of ch7](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch7/os/index.html)
  AND [OS API docs of ch8](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch8/os/index.html)
- [OS API docs of ch9](https://learningos.github.io/rCore-Tutorial-Code-2025S/ch9/os/index.html)

### Related Resources
- [Learning Resource](https://github.com/LearningOS/rust-based-os-comp2022/blob/main/relatedinfo.md)


### Build & Run

```bash
# setup build&run environment first
$ git clone https://github.com/LearningOS/rCore-Tutorial-Code-2025S.git
$ cd rCore-Tutorial-Code-2025S
$ git clone https://github.com/LearningOS/rCore-Tutorial-Test-2025S.git user
$ cd os
$ git checkout ch$ID
$ make run
```
Notice: $ID is from [1-9]

### Grading

```bash
# setup build&run environment first
 git clone https://github.com/LearningOS/rCore-Tutorial-Code-2025S.git
 cd rCore-Tutorial-Code-2025S
 git clone https://github.com/LearningOS/rCore-Tutorial-Checker-2025S.git ci-user
 git clone https://github.com/LearningOS/rCore-Tutorial-Test-2025S.git ci-user/user
 cd ci-user && make test CHAPTER=4
```
Notice: $ID is from [3,4,5,6,8]