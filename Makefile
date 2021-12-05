NAME	= libftprintf.a
SRC		=
CFLAGS 	= -Wall -Wextra -Werror
ARFLAGS	= rcs
CC		= clang
RM		= rm -f
OBJ		= $(SRC:.c=.o)
LIBFT_PATH	= ./libft
LIBFT_NAME	= $(LIBFT_PATH)/libft.a

.c.o:
			$(CC) $(CFLAG) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJ)
			ar $(ARFLAGS) $(NAME) $(OBJ)

all:		$(NAME)

clean:
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

cleanall:	fclean
			$(RM) *.out core *.so

re:			fclean all

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
	gcc -nostartfiles -shared -o libft.so $(OBJ)

.PHONY:		all clean fclean re cleanall
