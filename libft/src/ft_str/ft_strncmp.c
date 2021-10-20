/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajordan- <ajordan-@student.42urduliz.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/07/19 13:26:56 by ajordan-          #+#    #+#             */
/*   Updated: 2021/10/19 14:30:14 by ajordan-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
*	LIBRARY
*	#include <string.h>
*	DESCRIPTION
* 	The strncmp() function compares not more than n characters. Because 
*	strncmp() is designed for comparing strings rather than binary data, 
*	characters that appear after a `\0' character are not compared.
*	PARAMETERS
*	#1. The first str to compare.
*	#2. The second str to compare.
*	#3. The number of bytes to compare the two strings.
*	RETURN VALUES
*	The strncmp() function returns an integer greater than, equal to, or less 
*	than 0, according as the string s1 is greater than, equal to, or less than 
*	the string s2.  The comparison is done using unsigned characters, so that 
*	`\200' is greater than `\0'.
*/

#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t			cnt;
	unsigned int	diff;

	cnt = 0;
	diff = 0;
	while ((cnt < n) && !diff && (s1[cnt] != 0) && (s2[cnt] != 0))
	{
		diff = (unsigned char)s1[cnt] - (unsigned char)s2[cnt];
		cnt++;
	}
	if (cnt < n && !diff && (s1[cnt] == 0 || s2[cnt] == 0))
		diff = (unsigned char)s1[cnt] - (unsigned char)s2[cnt];
	return (diff);
}
