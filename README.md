# Operating Systems

This repository contains programs and scripts related to Operating Systems concepts, including Bash shell scripting and Linux kernel-level programming in C. It is created for learning, practicing, and implementing system-level concepts used in different operating environments.

---

## Contents

### 1. Bash Shell Scripting

- Automation tasks using Bash  
- File and directory handling  
- Conditional statements (if-else, case)  
- Loops (for, while, until)  
- Functions in Bash  
- User input handling  
- Process management  
- Basic system utilities  
- Command-line operations  

---

### 2. Linux Kernel Programming (C Language)

- System-level programs written in C  
- Linux kernel modules  
- Kernel module compilation and loading  
- Process-related concepts  
- Memory-related concepts  
- File system interaction  
- Basic device-level interaction  
- Linux system programming fundamentals  

---

## Requirements

### For Shell Scripts

- Linux system  
- macOS  
- Windows (using WSL or Git Bash)  
- Bash version 4 or above  
- Basic knowledge of Linux/Unix commands  

### For Kernel and System-Level C Programs

- Linux system or WSL (Windows Subsystem for Linux)  
- GCC compiler  
- Linux kernel headers  
- Root privileges (for loading kernel modules)  
- Basic understanding of kernel compilation  

Note: Kernel programs cannot run on native Windows and must be executed inside a Linux environment.

---

## How to Run Shell Scripts

Clone the repository:
```bash
git clone https://github.com/anushkaadak2684/Shell-Scripting.git
```

Navigate into the directory:
```bash
cd Operating-Systems
```

Give execution permission:
```bash
chmod +x script_name.sh
```

Run the script:
```bash
./script_name.sh
```

---

## How to Compile and Run C Programs (User-Level)

Compile the C program:
```bash
gcc filename.c
```

Run the program:
```bash
./a.out
```

Compile with custom output name:
```bash
gcc filename.c -o output_name
```

Run:
```bash
./output_name
```

---

## How to Compile and Run Kernel Modules

Install kernel headers (Ubuntu example):
```bash
sudo apt install linux-headers-$(uname -r)
```

Compile using Makefile:
```bash
make
```

Insert the module:
```bash
sudo insmod module_name.ko
```

Check kernel logs:
```bash
dmesg
```

Remove the module:
```bash
sudo rmmod module_name
```

---

## Purpose

- Strengthen Operating Systems fundamentals  
- Improve automation skills  
- Understand Linux internals  
- Learn kernel-level programming  
- Gain hands-on system programming experience  
- Prepare for technical interviews  

---

## Topics Covered

- Bash syntax  
- Variables and environment variables  
- Input/output redirection  
- Command-line arguments  
- Conditional logic  
- Loops  
- Functions  
- Error handling  
- Debugging techniques  
- Process management  
- Linux kernel basics  
- Kernel module development  
- System-level programming in C  

---

## Contributing

- Fork the repository  
- Create a new branch  
- Commit your changes  
- Push to your fork  
- Open a pull request  
- Contribute improvements related to shell scripting, or kernel programming  
