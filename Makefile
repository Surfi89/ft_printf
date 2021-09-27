# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/06 09:51:37 by ajordan-          #+#    #+#              #
#    Updated: 2021/09/27 13:56:08 by ajordan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Variables

NAME		= libftprintf.a
INCLUDES	= includes
LIBFT		= libft
SRCS_DIR	= src/
OBJS_DIR	= bin/
CC			= gcc
CFLAGS		= -Wall -Werror -Wextra
RM			= rm -f
AR			= ar rcs

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

#Sources

SRC_FILES	= ft_printf.c ft_printf_utils.c ft_print_ptr.c ft_print_unsigned.c ft_print_hex.c

#Binary

SRCS 		= $(addprefix $(SRCS_DIR), $(SRC_FILES))
OBJS 		= $(SRC_FILES:.c=.o) 
OBJS_PREFIX	= $(addprefix $(OBJS_DIR), $(OBJS))

###

all:			$(NAME)

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
				@mkdir -p $(OBJS_DIR)
				@echo "$(YELLOW)Compiling: $< $(DEF_COLOR)"
				@$(CC) $(CFLAGS) -I $(INCLUDES) -c $< -o $@

$(NAME):		$(OBJS_PREFIX) $(OBJS_DIR) $(INCLUDES)
				@make -C $(LIBFT)
				@cp libft/libft.a .
				@mv libft.a $(NAME)
				@$(AR) $(NAME) $(OBJS_PREFIX)
				@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"

clean:
				@$(RM) -r $(OBJS_DIR)
				@make clean -C $(LIBFT)
				@echo "$(BLUE)ft_print binary files cleaned!$(DEF_COLOR)"

fclean:			clean
				@$(RM) $(NAME)
				@$(RM) $(LIBFT)/libft.a
				@echo "$(CYAN)ft_printf executable files cleaned!$(DEF_COLOR)"
				@echo "$(CYAN)libft executable files cleaned!$(DEF_COLOR)"

re:				fclean all
				@echo "$(GREEN)Cleaned and rebuilt everything for ft_printf!$(DEF_COLOR)"

.PHONY:			all clean fclean re
