#include <stdio.h>

int main() 
{
	int num = 10;
	printf("Value of variable num is: %d", num);
	/* To print the address of a variable we use %p
	 * format specifier and amersand (&) sign just 
	 * before the variable name like &num/
	 */

	printf("\nAddress of variable num is: %p", &num);
	printf("\n");
	return 0;
}
