# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: throbert <throbert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/22 05:59:42 by rbardet-          #+#    #+#              #
#    Updated: 2025/03/14 16:25:25 by throbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
	ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c free_tab.c tab_size.c ft_tabchr.c \
	ft_printf_s.c ft_printf_id.c ft_printf_p.c ft_printf_prc.c ft_strtok.c \
	ft_printf_u.c ft_printf_xmin.c ft_printf_xmaj.c ft_printf_c.c ft_printf.c \
	get_next_line_bonus.c ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
	ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
	sort_str_tab.c print_tab.c is_space.c tablen.c ft_tabdup.c sort_alpha_tab.c ft_strndup.c

OBJDIR = ../objects
CC = cc
CFLAGS = -Wall -Wextra -Werror -g3
OBJS = $(patsubst %.c, $(OBJDIR)/%.o, $(SRCS))

RM = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "\033[35mCompiled $(NAME) successfully!\033[0m"

$(OBJDIR)/%.o: %.c
	@mkdir -p $(OBJDIR)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@if [ -d "$(OBJDIR)" ]; then \
		echo "\033[33mCleaning object files...\033[0m"; \
		$(RM) -r $(OBJDIR); \
		echo "\033[32mClean completed successfully!\033[0m"; \
	else \
		echo "\033[33mNo objects to clean.\033[0m"; \
	fi

clear:
	@if [ -d "$(OBJDIR)" ]; then \
		echo "\033[33mCleaning object files...\033[0m"; \
		$(RM) -r $(OBJDIR); \
		echo "\033[32mClean completed successfully!\033[0m"; \
	else \
		echo "\033[33mNo objects to clean.\033[0m"; \
	fi

fclean: clean
	@if [ -f "$(NAME)" ]; then \
		echo "\033[33mRemoving $(NAME)...\033[0m"; \
		$(RM) $(NAME); \
		echo "\033[32mFull clean completed successfully!\033[0m"; \
	else \
		echo "\033[33mNo executable to clean.\033[0m"; \
	fi

fclear: clean
	@if [ -f "$(NAME)" ]; then \
		echo "\033[33mRemoving $(NAME)...\033[0m"; \
		$(RM) $(NAME); \
		echo "\033[32mFull clean completed successfully!\033[0m"; \
	else \
		echo "\033[33mNo executable to clean.\033[0m"; \
	fi

re: fclean all

.PHONY: all clean fclean re
