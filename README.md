* 调度器： 在队列中寻找stride 最小的任务并移出返回
* 整体行为：每次调度从就绪队列取 stride 最小的任务运行；该任务在一次运行后让出 CPU 时先执行 stride += pass 再入队，从而实现按优先级（pass 小 == 更常被选中）的 stride 调度
```rust
pub fn fetch(&mut self) -> Option<Arc<TaskControlBlock>> {
    if self.ready_queue.is_empty() {
        return None;
    }
    let mut min_idx = 0;
    let mut min_stride = self.ready_queue[0].inner_exclusive_access().stride;
    for i in 1..self.ready_queue.len() {
        let s = self.ready_queue[i].inner_exclusive_access().stride;
        if s < min_stride {
            min_stride = s;
            min_idx = i;
        }
    }
    self.ready_queue.remove(min_idx)
}
```

* 值得深思的点： 父进程持有子进程的Arc<TaskControlBlock>, 子进程退出后不能立刻释放TaskControlBlock， 因为父进程持有。相反， 子进程只能持有父进程的Weak<TaskControlBlock>
  * 原因： 子进程退出后，内核还要保留它的 exit_code 等信息，供父进程之后 waitpid 读取。如果子一退出就释放 TCB，exit_code 就丢失了
* reading ch5, TaskControlBlock is a very important control structure.worth writing once.
```rust
  pub struct TaskControlBlock {
    pub pid: PidHandle, //impl Drop trait
    pub kernel_stack: KernelStack,
    inner: UPSafeCell<TaskControlBlockInner>,
  }

  impl TaskControlBlock {
    pub fn xxx(&self) -> xxx {
      self.xxx
    }
  }

  pub struct TaskControlBlockInner {
    pub trap_cx_ppn: PhysPageNum, // 虚拟空间中固定了一页记录trap前的信息
    pub base_size: usize,         // starting point in vitual space
    pub task_cx: TaskContent,
    pub memory_set: MemorySet,
    pub parent: Option<Weak<TaskControlBlock>>,
    pub children: Vec<Arc<TaskControlBlock>>,
    pub exit_code: i32,
    pub heap_bottom: usize,      // heap_bottom == base_size == user_sp at first init, still remains some confusion
    pub program_brk: usize,
    pub stride: usize,
    pub priority: isize,
  }
```

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
# run OS in ch$ID
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
 cd ci-user && make test CHAPTER=5
```
Notice: $ID is from [3,4,5,6,8]