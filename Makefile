# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lotrapan <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/18 19:04:51 by lotrapan          #+#    #+#              #
#    Updated: 2024/02/19 18:45:45 by lotrapan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME        = pipex
CC          = cc
CFLAGS      = -Wall -Wextra -Werror -g
RM          = rm -f
LIBFT 		= libft/libft.a
SRC_DIR     = src
OBJ_DIR     = .dir
SRCS := pipex.c \
utils.c \

OBJS := $(SRCS:.c=.o)

all: $(NAME)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@
	
$(NAME): $(OBJS)
	@[ -f $(LIBFT) ] || make -C libft/
	$(info ${BOLD}Creating  -> ${BLUE}libft.a${NO_COLOR})
	$(CC) $(OBJS) -o $(NAME) $(LIBFT)
	echo "${BOLD}Creating  -> ${RED}$(NAME)${NO_COLOR}"
	${MAKE} camel
	
clean:
	$(RM) -r $(OBJ_DIR)
	$(RM) $(OBJS)
	
fclean: clean
	make clean -C libft/
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean re all
.SILENT:

RED         := ${shell tput setaf 1}
BLUE        := ${shell tput setaf 4}
NO_COLOR    := ${shell tput sgr0}
BOLD        := ${shell tput bold}

camel:
	
	@echo '	    ⣎⣓⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ '
	@echo '	⢰⡩⢪⡁⢉⣿⠄⢿⣶⠆⠀⠀⠀⡠⠒⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀'
	@echo '	⣾⣀⣎⡱⢢⡉⠴⠀⡾⠀⠀⠀⡸⠒⠀⠀⠱⡄⠀⠀⠀⠀⠀⠀⠀'
	@echo '	⠙⠛⠁⠀⠘⠀⠀⢸⠁⢀⠠⠮⣤⣀⣀⡀⣀⣸⠷⠦⢀⠀⠀⠀⠀'
	@echo '	⠀⠀⠀⠀⠘⡄⠀⠈⠒⡎⠀⠀⠀⠀⠈⠉⠉⠀⠀⠈⢒⠵⠀⠀⠀'
	@echo '	⠀⠀⠀⠀⠀⠈⠢⠄⡀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠘⣗⡀⠀⠀'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⠀⠈⡟⡀⠀⠀⣰⣞⣀⢠⠶⡀⠀⠸⡉⢳⠦⠀'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⢡⠀⠠⠃⠀⠀⠈⠶⡈⠣⡀⢱⠵⣀⠇'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣰⠀⢰⠀⠀⠀⠀⠀⠈⢣⢥⢠⠇⠹⠀'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢩⠏⠇⠀⠀⠀⠀⠀⢀⢆⠞⡜⠀⠀⠀'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⢀⣠⠎⠜⠐⡄⠀⠀⠀⣀⡠⠊⣦⠂⠃⠀⠀⠀'
	@echo '	⠀⠀⠀⠀⠀⠀⠀⠈⠛⠯⢎⣢⡥⠀⠀⠘⠺⠼⢮⡟⣄⠇⠀⠀⠀'

   