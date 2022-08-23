/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/23 13:04:44 by dida-sil          #+#    #+#             */
/*   Updated: 2022/08/23 13:04:44 by dida-sil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//alphanumeric character test, it's equal (isalpha || isdigit)

int	ft_isalnum(int c)
{
	if (c >= '0' && c <= '9')
	{
	}
	else if (c >= 'a' && c <= 'z')
	{
	}
	else if (c >= 'A' && c <= 'Z')
	{
	}
	else
		return (0);
	return (1);
}
