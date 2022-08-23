# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 13:01:05 by dida-sil          #+#    #+#              #
#    Updated: 2022/08/23 14:34:52 by dida-sil         ###   ########.fr        #
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
# +>                                     RULES 

all:		$(NAME)

$(NAME):	$(LIBFT) $(CLIENT) $(SERVER)

$(LIBFT):	$(LIBFT_DIR)$(LIBFT)
	cp $(LIBFT_DIR)$(LIBFT) ./

$(LIBFT_DIR)$(LIBFT):
	$(MAKE) $(LIBFT_DIR)

$(CLIENT):	cli_checking $(CLT_OBJS)
	$(CC) $(CFLAGS) $(CLT_OBJS) $(LIBFT) -o $(CLIENT)

$(SERVER):	srv_checking $(SRV_OBJS)
	$(CC) $(CFLAGS) $(SRV_OBJS) $(LIBFT) -o $(SERVER)

clean:
	$(RM) $(CLT_OBJS)
	$(RM) $(SRV_OBJS)
	$(MAKE) $(LIBFT_DIR) clean

fclean: clean
	$(RM) $(SERVER) $(CLIENT) $(LIBFT)
	$(MAKE) $(LIBFT_DIR) fclean

re:			fclean all

cli_checking:
	printf "$(CLIENT) ON\n"

srv_checking:
	printf "$(SERVER) ON\n"

.PHONY:		all clean fclean re
# <+-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-'-.-' #
