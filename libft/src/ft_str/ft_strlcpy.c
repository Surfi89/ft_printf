/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/27 09:35:18 by ajordan-          #+#    #+#             */
/*   Updated: 2021/10/19 14:29:08 by ajordan-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
*	LIBRARY
*	#include <string.h>
*	DESCRIPTION
*	strlcpy() copies up to dstsize - 1 characters from the string src to dst, 
*	NUL-terminating the result if dstsize is not 0.
*	PARAMETERS
*	#1. The destiny string in which to copy.
*	#2. The source string to copy.
*	#3. The total number of bytes in destiny.
*	RETURN VALUES
*	the strlcpy() function returns the length of the string it tried to create.
*/

#include "libft.h"

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
	size_t	srcsize;
	size_t	i;

	if (!dst || !src)
		return (0);
	srcsize = ft_strlen(src);
	i = 0;
	if (dstsize != 0)
	{
		while (src[i] != 0 && i < (dstsize - 1))
		{
			dst[i] = src[i];
			i++;
		}
		dst[i] = 0;
	}
	return (srcsize);
}
