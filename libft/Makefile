# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 13:01:30 by dida-sil          #+#    #+#              #
#    Updated: 2022/08/23 13:01:58 by dida-sil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# +>                                     NAMES 

NAME		= libft.a

PRINTF		= libftprintf.a

PRINTF_DIR	= ft_printf/
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# +>                                     SRCS 

SRCS	= ft_atoi.c       \
		  ft_bzero.c      \
		  ft_calloc.c     \
		  ft_isalnum.c    \
		  ft_isalpha.c    \
		  ft_isascii.c    \
		  ft_isdigit.c    \
		  ft_isprint.c    \
		  ft_itoa.c       \
		  ft_memchr.c     \
		  ft_memcmp.c     \
		  ft_memcpy.c     \
		  ft_memmove.c    \
		  ft_memset.c     \
		  ft_nbrlen.c     \
		  ft_putchar_fd.c \
		  ft_putendl_fd.c \
		  ft_putnbr_fd.c  \
		  ft_putstr_fd.c  \
		  ft_split.c      \
		  ft_strchr.c     \
		  ft_strdup.c     \
		  ft_striteri.c   \
		  ft_strjoin.c    \
		  ft_strlcat.c    \
		  ft_strlcpy.c    \
		  ft_strlen.c     \
		  ft_strmapi.c    \
		  ft_strncmp.c    \
		  ft_strnstr.c    \
		  ft_strrchr.c    \
		  ft_strtrim.c    \
		  ft_substr.c     \
		  ft_tolower.c    \
		  ft_toupper.c

OBJS	= $(SRCS:.c=.o)
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# +>                                    ALIASES 

AR			= ar rcs
RM			= rm -rf
CC			= cc
MAKE		= make -C
CFLAGS		= -g -Wall -Wextra -Werror
MAKEFLAGS	+= --silent
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# +>                                   TXT CODE 

BLANK			= \e[m
RED				= \e[38;5;9m
YELLOW			= \e[38;5;11m
GREEN			= \e[38;5;2m
BLUE			= \e[38;5;6m
PURPLE			= \e[38;5;5m
PINK			= \e[38;5;13m
WHITE			= \e[38;5;15m

STRONG			= \e[1m
SHADOW			= \e[2m
ITALIC			= \e[3m
UNDLINE			= \e[4m
UPPLINE			= \e[53m
DUNDLINE		= \e[21m
CENSORED		= \e[9m
UPALIGN			= \e[73m
DWALIGN			= \e[74m
FULLER			= \e[7m
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# +>                                     RULES 

all:		$(NAME)

$(NAME):	checking $(OBJS) compiled $(PRINTF)
	$(AR) $(NAME) $(OBJS)
	printf "[$(BLUE)$(UNDLINE)$(NAME)$(BLANK)] $(GREEN)Has Been $(BOLD)Created!$(BLANK)\n"

$(PRINTF):	$(PRINTF_DIR)$(PRINTF)
	cp $(PRINTF_DIR)$(PRINTF) ./$(NAME)

$(PRINTF_DIR)$(PRINTF):
	$(MAKE) $(PRINTF_DIR)

clean:
	$(RM) $(OBJS)
	printf "[$(BLUE)$(UNDLINE)Objects of $(NAME)$(BLANK)] $(YELLOW)Has Been $(BOLD)Deleted!$(BLANK)\n"
	$(MAKE) $(PRINTF_DIR) clean

fclean:	clean
	$(RM) $(NAME)
	printf "[$(BLUE)$(UNDLINE)$(NAME)$(BLANK)] $(RED)Has Been $(BOLD)Deleted!$(BLANK)\n"
	$(RM) $(PRINTF_DIR)$(PRINTF)
	printf "[$(BLUE)$(UNDLINE)libftprintf.a$(BLANK)] $(RED)Has Been $(BOLD)Deleted!$(BLANK)\n"

re:			recompiling fclean all

checking:
	printf "$(BOLD)Checking [$(BLUE)$(UNDLINE)Objects of $(NAME)$(BLANK)]...\n"

compiled:
	printf "[$(BLUE)$(UNDLINE)Objects of $(NAME)$(BLANK)] $(GREEN)Has Been $(BOLD)Compiled!$(BLANK)\n"

recompiling:
	printf "[$(BLUE)$(UNDLINE)$(NAME)$(BLANK)] is Being $(BOLD)Recompiled$(BLANK)...\n"

.PHONY:		all clean fclean re
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# vim: fdm=marker fmr=+>,<+ ts=4 sw=4 nofen noet:
