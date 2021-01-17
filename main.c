#include <stdio.h>
#include <sys/utsname.h>
#include <sys/sysinfo.h>
#include "cimplylib/cimply.h"

struct utsname uname_info;
struct cUser user_info;
struct sysinfo system_info;

int print_uptime(int secondes)
{
	int heures, minutes;

	heures = (secondes/3600);
	minutes = (secondes -(3600*heures))/60;
	// secondes = (secondes -(3600*heures)-(minutes*60));

	printf("Uptime: %dH %dM\n", heures, minutes);

	return 0;
}

int main()
{
	uname(&uname_info);
	sysinfo(&system_info);
	cinit(&user_info);

	printf("        %s@%s\n", user_info.name, uname_info.nodename);
	printf("Kernel: %s %s\n", uname_info.sysname, uname_info.release);
	print_uptime(system_info.uptime);
	printf("Shell:  %s\n", user_info.shell);


	return 0;
}
