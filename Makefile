# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: throbert <throbert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/22 05:59:42 by throbert          #+#    #+#              #
#    Updated: 2025/03/14 18:19:45 by throbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = $(wildcard *.c)

OBJDIR = ../objects
CC = cc
CFLAGS = -Wall -Wextra -Werror -g3 -j
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
