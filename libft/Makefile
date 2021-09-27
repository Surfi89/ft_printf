# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/27 09:39:13 by ajordan-          #+#    #+#              #
#    Updated: 2021/09/27 13:40:33 by ajordan-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Variables

NAME		=	libft.a
INCLUDES	=	../includes
SRCS_DIR 	=	src/
OBJS_DIR	=	bin/
CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra
RM			=	rm -f
AR			=	ar rcs

#Colors

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

SRC_FILES	=	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
				ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
				ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
				ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
				ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
				ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c

BONUS_FILES	= 	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
				ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
				ft_lstmap.c

#Binaries

SRCS 				= 	$(addprefix $(SRCS_DIR), $(SRC_FILES))

OBJS				=	$(SRC_FILES:.c=.o)
OBJS_PREFIXED		=	$(addprefix $(OBJS_DIR), $(OBJS))

BONUS_OBJS 			=	$(BONUS_FILES:.c=.o)
BONUS_OBJS_PREFIXED	=	$(addprefix $(OBJS_DIR), $(BONUS_OBJS))

###

$(OBJS_DIR)%.o : $(SRCS_DIR)%.c
			@mkdir -p $(OBJS_DIR)
			@echo "$(YELLOW)Compiling: $< $(DEF_COLOR)"
			@$(CC) $(CFLAGS) -I $(INCLUDES) -c $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS_PREFIXED)
			@$(AR) $(NAME) $(OBJS_PREFIXED)
			@echo "$(GREEN)Libft compiled!$(DEF_COLOR)"

bonus:		$(BONUS_OBJS_PREFIXED)
			@$(AR) $(NAME) $(BONUS_OBJS_PREFIXED)
			@echo "$(GREEN)Libft bonus compiled!$(DEF_COLOR)"

clean:
			@$(RM) -r $(OBJS_DIR)
			@echo "$(BLUE)Libft binary files cleaned!$(DEF_COLOR)"

fclean:		clean
			@$(RM) $(NAME)
			@echo "$(CYAN)Libft executable files cleaned!$(DEF_COLOR)"

re:			fclean all

.PHONY:		all clean fclean re
