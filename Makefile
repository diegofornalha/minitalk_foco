# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 13:01:05 by dida-sil          #+#    #+#              #
#    Updated: 2022/08/23 13:02:00 by dida-sil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# +>                                     NAMES 

NAME		= minitalk

CLIENT		= client

SERVER		= server

LIBFT		= libft.a

LIBFT_DIR	= libft/
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# +>                                     SRCS 

CLT_SRCS	= client.o

SRV_SRCS	= server.o

CLT_OBJS	= $(CLT_SRCS:.c=.o)

SRV_OBJS	= $(SRV_SRCS:.c=.o)
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

$(NAME):	$(LIBFT) $(CLIENT) $(SERVER)

$(LIBFT):	$(LIBFT_DIR)$(LIBFT)
	cp $(LIBFT_DIR)$(LIBFT) ./

$(LIBFT_DIR)$(LIBFT):
	$(MAKE) $(LIBFT_DIR)

$(CLIENT):	cli_checking $(CLT_OBJS)
	printf "[$(BLUE)$(UNDLINE)Objects of $(CLIENT)$(BLANK)] $(GREEN)Has Been $(BOLD)Compiled!$(BLANK)\n"
	$(CC) $(CFLAGS) $(CLT_OBJS) $(LIBFT) -o $(CLIENT)
	printf "[$(BLUE)$(UNDLINE)$(CLIENT)$(BLANK)] $(GREEN)Has Been $(BOLD)Created!$(BLANK)\n"

$(SERVER):	srv_checking $(SRV_OBJS)
	printf "[$(BLUE)$(UNDLINE)Objects of $(SERVER)$(BLANK)] $(GREEN)Has Been $(BOLD)Compiled!$(BLANK)\n"
	$(CC) $(CFLAGS) $(SRV_OBJS) $(LIBFT) -o $(SERVER)
	printf "[$(BLUE)$(UNDLINE)$(SERVER)$(BLANK)] $(GREEN)Has Been $(BOLD)Created!$(BLANK)\n"

clean:
	$(RM) $(CLT_OBJS)
	printf "[$(BLUE)$(UNDLINE)Objects of $(CLIENT)$(BLANK)] $(YELLOW)Has Been $(BOLD)Deleted!$(BLANK)\n"
	$(RM) $(SRV_OBJS)
	printf "[$(BLUE)$(UNDLINE)Objects of $(SERVER)$(BLANK)] $(YELLOW)Has Been $(BOLD)Deleted!$(BLANK)\n"
	$(MAKE) $(LIBFT_DIR) clean

fclean: clean
	$(RM) $(SERVER) $(CLIENT) $(LIBFT)
	printf "[$(BLUE)$(UNDLINE)$(CLIENT)$(BLANK)] $(RED)Has Been $(BOLD)Deleted!$(BLANK)\n"
	printf "[$(BLUE)$(UNDLINE)$(SERVER)$(BLANK)] $(RED)Has Been $(BOLD)Deleted!$(BLANK)\n"
	$(MAKE) $(LIBFT_DIR) fclean

re:			fclean all

cli_checking:
	printf "$(BOLD)Checking [$(BLUE)$(UNDLINE)Objects of $(CLIENT)$(BLANK)]...\n"

srv_checking:
	printf "$(BOLD)Checking [$(BLUE)$(UNDLINE)Objects of $(SERVER)$(BLANK)]...\n"

.PHONY:		all clean fclean re
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
# vim: fdm=marker fmr=+>,<+ ts=4 sw=4 nofen noet:
