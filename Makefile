#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdudko <kdudko@student.unit.ua>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/12 15:18:07 by kdudko            #+#    #+#              #
#    Updated: 2019/08/20 17:04:47 by kdudko           ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

CC := clang
FLAGS = -Wall -Wextra -Werror

INC_DIR	:= inc/

INCS := $(INC_DIR)libft.h\
		$(INC_DIR)get_next_line.h\
		$(INC_DIR)my_cg_lib.h\

SRC := 	ft_atoi.c ft_atoi_base.c ft_bzero.c ft_count_words.c ft_isalnum.c\
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_isspace.c ft_itoa.c\
		ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c\
		ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c\
		ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar_fd.c\
		ft_putchar.c ft_putendl_fd.c ft_putendl.c ft_putnbr_fd.c ft_isalpha.c\
		ft_putnbr.c ft_putstr_fd.c ft_putstr.c ft_search_and_replace.c\
		ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c \
		ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c\
		ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmap.c\
		ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strndup.c\
		ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c\
		ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c\
		get_next_line.c count_digits.c ft_swap.c\
		\
		cg_interpolate.c cg_close.c\

OBJ := $(SRC:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	@printf "Creating $(NAME)\n"
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@printf "$(NAME) was successfully created\n"

$(OBJ): $(SRC) $(INCS)
	@printf "Creating objects files ...\n"
	@$(CC) $(FLAGS) -c $(SRC) -I $(INCS)

clean:
	@rm -rf $(OBJ) inc/get_next_line.h.gch inc/libft.h.gch inc/my_cg_lib.h.gch
	@printf "$(NAME) object files removed\n"
	@printf "get_next_line.h.gch removed\n"
	@printf "libft.h.gch object removed\n"
	@printf "my_cg_lib.h.gch object removed\n"

fclean: clean
	@rm -rf $(NAME)
	@printf "$(NAME) removed\n"

re: fclean all
