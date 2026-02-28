# Operating Systems

This repository contains programs and scripts related to Operating Systems concepts, including Bash shell scripting and Linux kernel-level programming in C. It is created for learning, practicing, and implementing system-level concepts used in different operating environments. It focuses on automation, command-line operations, system programming, and understanding how operating systems work internally.

---

## Contents

This repository includes Bash shell scripts for automation, file and directory handling, conditional statements, loops, functions, user input handling, process management, and system utilities. It also includes Linux kernel-level programs written in C, covering kernel modules, system-level programming, process and memory concepts, file system interaction, and basic kernel development practices.

---

## Requirements

For Shell Scripts:
Shell scripts in this repository can run on Linux, macOS, Windows (using WSL or Git Bash), or any system that supports Bash version 4 or above. Basic knowledge of Linux/Unix commands is recommended.

For Kernel Programs:
Kernel-level programs cannot run on native Windows. They require a Linux system or Windows Subsystem for Linux (WSL). You will need GCC compiler, Linux kernel headers installed, and root privileges to load kernel modules. Kernel programs must be compiled and executed inside a Linux environment.

---

## How to Run Shell Scripts

Clone the repository:
```bash
git clone https://github.com/anushkaadak2684/Operating-Systems.git
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

## How to Compile and Run Kernel Programs

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

The purpose of this repository is to strengthen Operating Systems fundamentals, improve automation skills, understand Linux internals, learn kernel-level programming, prepare for technical interviews, and gain hands-on experience with real-world system programming.

---

## Topics Covered

Bash scripting fundamentals, variables and environment variables, input and output redirection, command-line arguments, conditional logic, loops, functions, error handling, debugging techniques, process management, Linux kernel basics, kernel module development, and system-level programming in C.

---

## Contributing

This repository is created for educational purposes. To contribute, fork the repository, create a new branch, commit your changes, and open a pull request for improvements related to Operating Systems, shell scripting, or kernel programming
