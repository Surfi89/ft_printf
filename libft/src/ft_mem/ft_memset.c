/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/21 12:21:58 by ajordan-          #+#    #+#             */
/*   Updated: 2021/10/19 14:21:50 by ajordan-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
*	LIBRARY
*	#include <string.h>
*	DESCRIPTION
*	The memset() function writes len bytes of value c (converted to an 
*	unsigned char) to the string b.
*	PARAMETERS
*	#1. The destiny pointer in which to write.
*	#2. The character to write.
*	#3. The number of bytes to write.
*	RETURN VALUES
*	The memset() function returns its first argument.  
*/

#include "libft.h"
#include <stdlib.h>

void	*ft_memset(void *b, int c, size_t len)
{
	size_t	i;

	i = 0;
	while (i < len)
	{
		((unsigned char *)b)[i] = c;
		i++;
	}
	return (b);
}
