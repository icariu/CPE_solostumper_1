##
## EPITECH PROJECT, 2019
## makefile
## File description:
## my makefile
##

SRC	=	my_putchar.c			\
		my_put_nbr.c			\
		my_putstr.c			\
		my_strlen.c			\

OBJ	=	$(SRC:.c=.o)

NAME	=	libmy.a

CFLAGS =	-I../../include

all:		$(NAME)

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:		clean
	rm -f $(NAME)

re:	fclean all
