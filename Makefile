##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## my makefile
##

NAME	=	hidenp

COMPIL	=	-Llib/my -lmy

TFLAG	=	./tests/test_my_hidenp.c -lcriterion --coverage -fprofile-arcs

CFLAGS	=	-I include/

all:		$(NAME)

$(NAME):	$(OBJ)
		make -C lib/my
		make clean -C lib/my
		gcc -o $(NAME) $(SRC) src/main.c $(COMPIL) $(CFLAGS)

clean:
		rm -f $(OBJ)
		rm -f *.o

fclean: clean
		rm -f $(NAME)

re:		fclean all

tests_run:
		make -C ./lib/my re
		gcc -o $(NAME) $(SRC) $(TFLAG) $(COMPIL) $(CFLAGS)
		-./$(NAME)
		gcovr --exclude tests/
		rm -f *.gcno
		rm -f *.gcda
