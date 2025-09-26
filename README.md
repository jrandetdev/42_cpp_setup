# CPP Exercise Setup Script

A setup script to automatically create 42 C++ module directory structures with exercise folders, Makefiles, and boilerplate code.

## Remote execution
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/42_cpp_setup/main/42_cpp_setup.sh)" 5 6
```

## Install

This script simply creates the alias `cpp-setup` in your `~/.zshrc` and `~/.bashrc`.
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/42_cpp_setup/main/install.sh)"
```

## Use the script step by step:

**Step 1:**
Navigate to your 42 directory for circle_4 (or where you want to put your CPP02 foler for example)

**Step 2:**
run the script
```sh
42_cpp_setup 5 6
```

## Examples
cd ~/Desktop/42projects
42_cpp_setup 5 6    # Creates CPP05 with ex00-ex05
42_cpp_setup 2 4    # Creates CPP02 with ex00-ex03
42_cpp_setup 8 1    # Creates CPP08 with ex00

## Generated Structure
```
CPP05/
├── ex00/
│   ├── main.cpp
│   ├── TO_REPLACE.hpp
│   └── Makefile
├── ex01/
│   ├── main.cpp
│   ├── TO_REPLACE.hpp
│   └── Makefile
└── ex02/
├── main.cpp
├── TO_REPLACE.hpp
└── Makefile
```

## About

A setup script to quickly generate 42 CPP module structures with proper boilerplate code. Saves 15-20 minutes of manual setup per module.
