/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/21 13:31:23 by ajordan-          #+#    #+#             */
/*   Updated: 2021/10/19 14:30:42 by ajordan-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
*	LIBRARY
*	#include <string.h>
*	DESCRIPTION
*	The strnstr() function locates the first occurrence of the null-terminated 
*	string needle in the string haystack, where not more than len characters are 
*	searched.  Characters that appear after a `\0' character are not searched.
*	PARAMETERS
*	#1. The string in which to check for the occurence of the substring.
*	#2. The substring to check the occurence of.
*	#3. The number of bytes to check in haystack.
*	RETURN VALUES
*	If needle is an empty string, haystack is returned; if needle occurs nowhere 
*	in haystack, NULL is returned; otherwise a pointer to the first character of 
*	the first occurrence of needle is returned.
*/

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	h;
	size_t	n;

	h = 0;
	if (needle[0] == '\0')
		return ((char *)haystack);
	while (haystack[h] != '\0')
	{
		n = 0;
		while (haystack[h + n] == needle[n] && (h + n) < len)
		{
			if (haystack[h + n] == '\0' && needle[n] == '\0')
				return ((char *)&haystack[h]);
			n++;
		}
		if (needle[n] == '\0')
			return ((char *)haystack + h);
		h++;
	}
	return (0);
}
