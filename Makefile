##
## EPITECH PROJECT, 2023
## MyMarvinTest
## File description:
## Makefile
##

SRC = test.c
MAIN_SRC = main.c

CRITERION_SRC = tests_criterion.c

OBJ = $(SRC:.c=.o) $(MAIN_SRC:.c=.o)

NAME = program

TESTS_NAME = tests

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)
	@rm -f $(TESTS_NAME)
	@rm -f *.gcda
	@rm -f *.gcno

re: fclean all

tests_run:	fclean
	@gcc -o $(TESTS_NAME) $(SRC) $(CRITERION_SRC) -lcriterion --coverage
	@./$(TESTS_NAME)