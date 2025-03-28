/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone_bonus.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: throbert <throbert@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/21 14:59:49 by rbardet-          #+#    #+#             */
/*   Updated: 2025/03/23 16:08:43 by throbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

void	ft_lstdelone(t_list *lst, void (*del)(void*))
{
	del(lst->content);
	free(lst);
	return ;
}

// int main(void)
// {
// 	t_list *lst;

// 	char str[] = "Argument 1";
// 	lst = malloc(sizeof(struct s_list));
// 	lst	-> content = str;
// 	lst	-> next = NULL;
// 	ft_lstdelone(lst, 0);
// 	printf("%s", (char *)lst);
// 	return(0);
// }
