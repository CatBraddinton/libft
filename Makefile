#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdudko <kdudko@student.unit.ua>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/12 15:18:07 by kdudko            #+#    #+#              #
#    Updated: 2018/11/12 15:19:47 by kdudko           ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

INCLUDES := $(wildcard *.h)

FLAGS = -Wall -Wextra -Werror

SRC := $(wildcard *.c)

OBJ := $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -c $(SRC) -I $(INCLUDES)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all