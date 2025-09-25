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

## Quick install (works on school computers)

Just run this one line:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/YOURUSERNAME/YOURREPO/main/setup-cpp.sh)"
```

## Usage

```bash
setup-cpp <cpp_module> <num_exercises>
```

Examples:
```bash
setup-cpp 5 6    # Makes CPP05 with ex00-ex05
setup-cpp 2 4    # Makes CPP02 with ex00-ex03  
setup-cpp 8 1    # Makes CPP08 with just ex00
```

## If you want to install it locally

```bash
mkdir ~/bin
curl -o ~/bin/setup-cpp https://raw.githubusercontent.com/YOURUSERNAME/YOURREPO/main/setup-cpp.sh
chmod +x ~/bin/setup-cpp
```

Add to your ~/.bashrc:
```bash
alias setup-cpp='~/bin/setup-cpp'
```

Then `source ~/.bashrc` and you're good.

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

1. Make a GitHub repo
2. Upload the script  
3. Change YOURUSERNAME/YOURREPO in the curl command
4. Share with your friends

## Notes

- Only works with single digits (0-9) for both module and exercise count
- Script checks your input so it won't break if you mess up
- All the generated files have placeholder content - you still gotta write the actual code :)

That's it. Saves me like 5 minutes every module, which adds up.
