# CPP Exercise Setup Script

Got tired of manually creating the same folder structure for every CPP module at 42? Yeah, me too.

This script creates all the exercise directories with basic files so you can jump straight into coding.

## What it does

Basically creates this:
```
CPP05/
├── ex00/
│   ├── main.cpp
│   ├── TO_REPLACE.hpp  
│   └── Makefile
├── ex01/
│   └── (same files)
└── ex02/
    └── (same files)
```

Each folder gets a basic main.cpp, header file with class template, and a working Makefile.

## Setup

**Add this alias to your ~/.zshrc:**
```bash
# 42 CPP exercise setup
alias cpp-setup='function _cpp_setup() { 
    if [ $# -ne 2 ]; then
        echo "Usage: cpp-setup <module> <exercises>"
        echo "Example: cpp-setup 5 6 (creates CPP05 with ex00-ex05)"
        return 1
    fi
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/YOURUSERNAME/YOURREPO/main/setup-cpp.sh)" $1 $2
}; _cpp_setup'
```

**Reload your shell:**
```bash
source ~/.zshrc
```

## Usage

**Important:** The script creates the CPP module in your **current directory**. So navigate to where you want it first!

```bash
cd ~/Desktop/cpp_modules    # Go where you want the CPP folder
cpp-setup <module> <exercises>
```

**Examples:**
```bash
cd ~/Desktop/42projects
cpp-setup 5 6    # Creates ~/Desktop/42projects/CPP05/ with ex00-ex05

cd ~/Documents/school
cpp-setup 2 4    # Creates ~/Documents/school/CPP02/ with ex00-ex03  

cpp-setup 8 1    # Creates CPP08/ in whatever folder you're currently in
cpp-setup        # Shows usage help
```

## What gets created

**main.cpp:**
```cpp
#include "TO_REPLACE.hpp"
#include <iostream>

int main()
{
    return 0;
}
```

**TO_REPLACE.hpp:**
Basic class with constructor, copy constructor, assignment operator, destructor. You know the drill.

**Makefile:**
Already set up with c++98 flags and all the 42 requirements. Just works.

## Setup for sharing

1. Create a GitHub repo
2. Upload your `setup-cpp.sh` script
3. Replace `YOURUSERNAME/YOURREPO` in the alias above
4. Share the alias with classmates

## Notes

- Only works with single digits (0-9) for both module and exercise count
- Script validates input so it won't break if you mess up
- All the generated files have placeholder content - you still gotta write the actual code
- Add the alias to everyone's .zshrc to use it

That's it. Saves me like 5 minutes every module, which adds up.
