# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/06 09:51:37 by ajordan-          #+#    #+#              #
#    Updated: 2021/10/20 02:05:17 by ajordan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Variables

NAME		= libftprintf.a
INCLUDES	= includes
LIBFT		= libft
SRCS_DIR	= src/
OBJS_DIR	= obj/
CC			= gcc
CFLAGS		= -Wall -Werror -Wextra -I
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

SRC_FILES	=	ft_printf ft_printf_utils ft_print_ptr ft_print_unsigned ft_print_hex


SRCS 		= 	$(addprefix $(SRCS_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJS 		= 	$(addprefix $(OBJS_DIR), $(addsuffix .o, $(SRC_FILES)))

###

OBJSF		=	.cache_exists

all:			$(NAME)

$(NAME):		$(OBJS) $(OBJS_DIR) $(INCLUDES)
				@make -C $(LIBFT)
				@cp libft/libft.a .
				@mv libft.a $(NAME)
				@$(AR) $(NAME) $(OBJS)
				@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c | $(OBJSF)
				@echo "$(YELLOW)Compiling: $< $(DEF_COLOR)"
				@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(OBJSF):
			@mkdir -p $(OBJS_DIR)

clean:
				@$(RM) -rf $(OBJS_DIR)
				@make clean -C $(LIBFT)
				@echo "$(BLUE)ft_printf object files cleaned!$(DEF_COLOR)"

fclean:			clean
				@$(RM) -f $(NAME)
				@$(RM) -f $(LIBFT)/libft.a
				@echo "$(CYAN)ft_printf executable files cleaned!$(DEF_COLOR)"
				@echo "$(CYAN)libft executable files cleaned!$(DEF_COLOR)"

re:				fclean all
				@echo "$(GREEN)Cleaned and rebuilt everything for ft_printf!$(DEF_COLOR)"

norm:
	@norminette $(SRCS) $(INCLUDES) $(LIBFT) | grep -v Norme -B1 || true

.PHONY:			all clean fclean re norm
