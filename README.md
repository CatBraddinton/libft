# libft
Most of libc function recoded using &lt;unistd.h>,  &lt;string.h>  and &lt;stdlib.h>.

## Instructions
To use a library

Open terminal in project folder (or any you think it should be) and clone this repository
```
   git clone https://github.com/CatBraddinton/libft.git
```
Change to libft directory
```
  cd libft
```
Following two commands will compile libft.a archive and after that remove all objects files
```
   make && make clean
```
Now you can use libft.a to compile your project

## Makefile

### Makefile can do following:

  make all:  will compile libft.a
  
  make clean: will remove all objects files
  
  make fclean: will remove all objects files AND libft.a itself
  
  make re: will will remove all objects files AND libft.a itself and compile libft.a again.
  
  Feel free to change variables. As a mandatory part of this project, libft.a should compile with -Wall -Wextra -Werror flags. If you dont need them or you need to add other flags, just do it. 
  
### There are no *restrict KEYWORD in function prototypes.

![EVALUATION](https://github.com/CatBraddinton/libft/blob/master/Screen%20Shot%202019-01-16%20at%201.04.50%20PM.png)
