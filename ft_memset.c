#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	size_t			i;
	unsigned char	*led;

	led = (unsigned char *)b;
	i = 0;
	while (i < len)
	{
		led[i] = (unsigned char)c;
		i++;
	}
	return (led);
}