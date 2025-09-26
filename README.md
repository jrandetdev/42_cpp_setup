# CPP Exercise Setup Script

A setup script to automatically create 42 C++ module directory structures with exercise folders, Makefiles, and boilerplate code.

## Remote execution
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/setup-cpp.sh)" 5 6
```

## Install

This script simply creates the alias `cpp-setup` in your `~/.zshrc` and `~/.bashrc`.
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/install.sh)"
```

## Run
```sh
cpp-setup 5 6
```

## Examples
cd ~/Desktop/42projects
cpp-setup 5 6    # Creates CPP05 with ex00-ex05
cpp-setup 2 4    # Creates CPP02 with ex00-ex03
cpp-setup 8 1    # Creates CPP08 with ex00

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
