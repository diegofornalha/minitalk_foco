/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dida-sil <dida-sil@student.42.rio>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/23 13:04:08 by dida-sil          #+#    #+#             */
/*   Updated: 2022/08/23 13:04:09 by dida-sil         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

//copy byte string

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	int	i;

	if (!dst && !src)
		return (0);
	i = 0;
	while (n --)
	{	
		*(char *)(dst + i++) = *(char *) src++;
	}
	return (dst);
}
