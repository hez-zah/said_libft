NAME = libft.a
SRC = ft_isalpha.c ft_isdigit.c\
		ft_isalnum.c
OBJ = $(SRC:%.c=%.o)
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
CC = gcc
HEADER = libft.h

all : $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "tout est make"

%.o:%.c $(HEADER)
	@$(CC) $(CFLAGS) -o $@ -c $<

clean :
	@$(RM) $(OBJ)

fclean : clean
	@$(RM) $(NAME)
	@echo "tout est clean"

re : fclean $(NAME)