/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_tab.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: throbert <throbert@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/03 21:30:41 by rbardet-          #+#    #+#             */
/*   Updated: 2025/03/23 16:08:43 by throbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

char	**free_tab(char **tab)
{
	int		a;

	if (!tab)
		return (NULL);
	a = 0;
	while (tab[a] != NULL)
	{
		free(tab[a]);
		tab[a] = NULL;
		a++;
	}
	free(tab);
	return (NULL);
}
