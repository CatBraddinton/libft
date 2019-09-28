/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdudko <kdudko@student.unit.ua>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/28 06:42:58 by kdudko            #+#    #+#             */
/*   Updated: 2019/09/28 06:42:59 by kdudko           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "inc/get_next_line.h"

static int	get_one_line(const int fd, char **str, char **line, int read_ret)
{
	int		i;
	char	*temp;

	i = 0;
	while (str[fd][i] && str[fd][i] != '\n')
		i++;
	if (str[fd][i] == '\n')
	{
		*line = ft_strsub(str[fd], 0, i);
		temp = ft_strdup(str[fd] + i + 1);
		free(str[fd]);
		str[fd] = ft_strdup(temp);
		free(temp);
	}
	else if (str[fd][i] == '\0')
	{
		if (read_ret == BUFF_SIZE)
			get_next_line(fd, line);
		*line = ft_strdup(str[fd]);
		ft_strdel(&str[fd]);
	}
	return (1);
}

int			get_next_line(const int fd, char **line)
{
	static char	*str[MAX_FD];
	char		buffer[BUFF_SIZE + 1];
	char		*temp;
	int			read_ret;

	if (fd < 0)
		return (-1);
	while ((read_ret = read(fd, buffer, BUFF_SIZE)) > 0)
	{
		buffer[read_ret] = '\0';
		if (!str[fd])
			str[fd] = ft_strnew(1);
		temp = ft_strjoin(str[fd], buffer);
		free(str[fd]);
		str[fd] = ft_strdup(temp);
		free(temp);
		if (ft_strchr(buffer, '\n'))
			break ;
	}
	if (read_ret == 0 && (!str[fd] || str[fd][0] == '\0'))
		return (0);
	if (read_ret < 0)
		return (-1);
	return (get_one_line(fd, str, line, read_ret));
}
