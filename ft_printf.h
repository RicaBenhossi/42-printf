/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: luricard <luricard@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/12 20:17:43 by luricard          #+#    #+#             */
/*   Updated: 2021/10/12 20:41:11 by luricard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF
# define FT_PRINTF

// This allow us to use a_start, va_arg, va_copy and va_end
# include <stdarg.h>
# include "./libft/libft.h"

# define FD 1

int ft_printf(const char *format, ...);

#endif
