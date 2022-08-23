/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/23 13:04:40 by dida-sil          #+#    #+#             */
/*   Updated: 2022/08/23 13:04:40 by dida-sil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//alphanumeric character test, it's equal (isupper || islower)

int	ft_isalpha(int c)
{
	if (c >= 'a' && c <= 'z')
	{
	}
	else if (c >= 'A' && c <= 'Z')
	{
	}
	else
		return (0);
	return (1);
}
