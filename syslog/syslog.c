#include <stdio.h>
#include <syslog.h>

int print(char *s)
{
	printf("[%s %s %d]%s", __FILE__, __func__, __LINE__, s);
	return 0;
}
