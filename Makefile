# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/06 09:51:37 by ajordan-          #+#    #+#              #
#    Updated: 2021/09/10 13:33:06 by ajordan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a

SRCS		= ft_printf.c ft_printf_utils.c ft_print_ptr.c ft_print_unsigned.c ft_print_hex.c

OBJS		= $(SRCS:.c=.o)

INCLUDE		= ./libft

LIBFT		= ./libft/libft.a

CC			= gcc

CFLAGS		= -Wall -Werror -Wextra

RM			= rm -f

# Colors
DEF_COLOR = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
MAGENTA = \033[0;95m
CYAN = \033[0;96m
WHITE = \033[0;97m

%.o : %.c
		@echo "$(YELLOW)Compiling: $< $(DEF_COLOR)"
		@$(CC) $(CFLAGS) -c $< -o $@

$(NAME):	$(OBJS) $(INCLUDE)
				@make -C $(INCLUDE)
				@cp libft/libft.a .
				@mv libft.a $(NAME)
				@ar rcs $(NAME) $(OBJS)
				@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"

all:		$(NAME)

clean:
				@$(RM) $(OBJS)
				@make clean -C libft
				@echo "$(BLUE)Objects files cleaned in ft_printf!$(DEF_COLOR)"

fclean:		clean
				@$(RM) $(NAME)
				@$(RM) $(LIBFT) a.out
				@echo "$(CYAN)ft_printf executable files cleaned!$(DEF_COLOR)"
				@echo "$(CYAN)libft executable files cleaned!$(DEF_COLOR)"

re:			fclean all
				@echo "$(YELLOW)Cleaned and rebuilt everything for ft_printf!$(DEF_COLOR)"

.PHONY:		all clean fclean re
