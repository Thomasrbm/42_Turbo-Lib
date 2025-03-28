/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: throbert <throbert@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/18 15:31:03 by rbardet-          #+#    #+#             */
/*   Updated: 2025/03/23 16:08:43 by throbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*content1;

	content1 = malloc(sizeof(t_list));
	if (!content1)
		return (NULL);
	content1->content = content;
	content1->next = NULL;
	return (content1);
}
// int main(void)
// {
//     t_list *list = ft_lstnew("Hello");
//     printf("%s\n", (char *)list->content);
//     printf("%p\n", list->next);
//     return (0);
// }
