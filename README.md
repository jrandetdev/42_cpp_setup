CPP Exercise Setup Script
Automatically creates 42 C++ module directory structures with exercise folders, Makefiles, and boilerplate code.
Remote execution
bash/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/setup-cpp.sh)" 5 6
Install
This script creates the alias cpp-setup in your ~/.zshrc and ~/.bashrc.
bash/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/install.sh)"
Run
bashcpp-setup 5 6
Examples
bashcd ~/Desktop/42projects
cpp-setup 5 6    # Creates CPP05 with ex00-ex05
cpp-setup 2 4    # Creates CPP02 with ex00-ex03
cpp-setup 8 1    # Creates CPP08 with ex00
Generated Structure
CPP05/
├── ex00/
│   ├── main.cpp
│   ├── TO_REPLACE.hpp
│   └── Makefile
├── ex01/
└── ex02/
About
A setup script to quickly generate 42 CPP module structures with proper boilerplate code.
Resources

Saves 15-20 minutes of setup per module
Always uses latest version from GitHub
No local files needed
