#!/bin/bash

output_help_message()
{
	echo "Input Error!" 
	echo "Correct use:  $0 <module number> <number of excercises>"
	echo "Example: $0 5 6 (creates CPP05 with ex00/ - ex05/)"
	exit 1
}

fill_header_file_with_class()
{
cat << 'EOF' > "$templatehpp"
#ifndef TO_REPLACE_HPP
#define TO_REPLACE_HPP

class ToReplace
{
	private:
		// Private members

	public:
		ToReplace();
		ToReplace(const ToReplace& other);
		ToReplace& operator=(const ToReplace& other);
		~ToReplace();
			
		// Public methods
	};

#endif
EOF
}

fill_makefile()
{
	cat << 'EOF' > "$Makefile"
NAME		=	TO_REPLACE
DIR_SRC		=	./
DIR_BUILD	=	./build
CXX			=	c++
CXXFLAGS	=	-std=c++98 -Wall -Werror -Wextra -pedantic 
LDINCLUDE	=	-I$(DIR_SRC)

SRCS		=	main.cpp
SRCS_NAME	=	$(basename $(SRCS))
OBJS		=	$(addsuffix .o, $(addprefix $(DIR_BUILD)/, $(SRCS_NAME)))

all: $(NAME)

$(NAME): $(OBJS)
	@$(CXX) $(OBJS) $(CXXFLAGS) -o $@

$(DIR_BUILD)/%.o: $(DIR_SRC)/%.cpp
	@mkdir -p $(dir $@) 
	@$(CXX) $(CXXFLAGS) $(LDINCLUDE) -c $< -o $@

clean:
	@rm -rf $(OBJS)
	@rm -rf $(DIR_SRC)/*.replace
	@rm -rf $(DIR_SRC)/*.txt
	@rm -rf $(DIR_BUILD)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
EOF
}

fill_main()
{
cat << 'EOF' > "$maincpp"
#include "TO_REPLACE.hpp"
#include <iostream>

int main()
{
	return 0;
}
EOF
}

if [ $# -ne 2 ];
then
	output_help_message
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]];
then
	echo "$0: error: both module number and number of excercises need to be a number." >&2;
	exit 1
fi

module_num=$1
num_exercise=$2
if [ ${#module_num} -gt 10 ] || [ ${#num_exercise} -gt 10 ];
then
	echo "$0: error: number has to be between 0 and 9 for both entries."
	exit 1
fi

module_dir="CPP0$module_num"
#mkdir -p CPP$module_num
#echo "Created module: $module_dir"

for i in $(seq 0 $((num_exercise - 1))); do

	ex_dir=$(printf "ex%02d" $i)
	full_path="$module_dir/$ex_dir"
	mkdir -p "$full_path"

	maincpp="$full_path/main.cpp"
	templatehpp="$full_path/TO_REPLACE.hpp"
	Makefile="$full_path/Makefile"

	touch $maincpp
	touch $templatehpp
	touch $Makefile

	fill_main
	fill_header_file_with_class
	fill_makefile

	echo "[$((i + 1))/$num_exercise] Created $full_path"
done
