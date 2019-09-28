/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cg_interpolate.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kdudko <kdudko@student.unit.ua>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/28 06:36:34 by kdudko            #+#    #+#             */
/*   Updated: 2019/09/28 06:36:36 by kdudko           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

double	interpolate(double start, double end, double interpolation)
{
	return (start + ((end - start) * interpolation));
}
