/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/23 13:01:12 by dida-sil          #+#    #+#             */
/*   Updated: 2022/08/23 14:26:10 by dida-sil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

int	main(int argc, char *argv[])
{
	pid_t	n_pid;

	signal(SIGUSR1, ft_return);
	signal(SIGUSR2, ft_return);
	if ((argc != 3) || (!ft_isalldigit(argv[1])))
	{
		ft_printf("Incorrect\n");
		ft_printf("[./client <PID> <STR>]\n");
		exit(EXIT_FAILURE);
	}
	n_pid = ft_atoi(argv[1]);
	while (*argv[2])
		ft_atobin(*argv[2]++, n_pid);
	ft_atobin(0, n_pid);
	kill(getpid(), SIGUSR2);
}

void	ft_atobin(char c, pid_t n_pid)
{
	int	count;

	count = 8;
	while (count--)
	{
		if (c & (1 << count))
			kill (n_pid, SIGUSR2);
		else
			kill (n_pid, SIGUSR1);
		usleep(250);
	}
}

int	ft_isalldigit(char	*str)
{
	while (*str)
	{
		if (!ft_isdigit(*str++))
			return (0);
	}
	return (1);
}

void	ft_return(int signum)
{
	if (signum == SIGUSR1)
	{
		ft_printf ("Success\n");
		exit(EXIT_SUCCESS);
	}
	else
	{
		ft_printf ("Failed\n");
		exit(EXIT_FAILURE);
	}
}
