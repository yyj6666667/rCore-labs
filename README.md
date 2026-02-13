2.13 

* lambda's writing style:
  ```rust
  (base_i..base_i + SINGLE_APP_SIZE)
    .for_each(|whatever_you_like|  unsafe {
      (whatever_you_like as *mut u8).write_volatile(0) // write_volatile is to prevent compiler delete accidentally
    })
  ```
  * another style: core::slice 包装
  ```rust
  let slice_yyj = unsafe {
    core::slice::from_raw_parts_mut(ptr, len)
  };
  slice_yyj.fill(0);
  ```
* 汇编传入参数a0， a1 ... 不是显式的
  c 与 rust 的衔接部分
  ```rust
  core::arch::global_asm!(include_str!("switch.S"));
  extern "C" {
    pub fn __switch(
      current_taskcontent_ptr: *mut TaskContext,
      next_taskcontent_ptr: *const TaskContext;
    )
  }
  ```
    其中：
  ```rust
  #[repr(C)]
  pub struct TaskContext {
    ra: usize,
    sp: usize,
    s: [usize; 12],
  }
  ```
* 函数宏： 真.字面意思
 ```asm
 .macro SAVE_SN n
  sd s\n, (\n + 2)*8(a0)
 .endm

  sd ra, 0(a0)
  .set n, 0
  .rept 12
    SAVE_SN %n
    .set n, n + 1
  .endr
 ```
 * 区分 __switch 和 __alltraps, __restore 的不同，就看caller-saved, callee-saved registers

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
git clone https://github.com/LearningOS/rCore-Tutorial-Code-2025S.git
cd rCore-Tutorial-Code-*2025S
git clone https://github.com/LearningOS/rCore-Tutorial-Test-2025S.git user
cd os
git checkout ch$ID
# run OS in ch$ID
make run
```
Notice: $ID is from [1-9]

### Grading

```bash
# setup build&run environment first
git clone https://github.com/LearningOS/rCore-Tutorial-Code-2025S.git
cd rCore-Tutorial-Code-2025S
rm -rf ci-user
git clone https://github.com/LearningOS/rCore-Tutorial-Checker-2025S.git ci-user
git clone https://github.com/LearningOS/rCore-Tutorial-Test-2025S.git ci-user/user
git checkout ch$ID
# check&grade OS in ch$ID with more tests
cd ci-user && make test CHAPTER=$ID
```
Notice: $ID is from [3,4,5,6,8]