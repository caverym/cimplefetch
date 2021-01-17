#include <stdio.h>
#include <sys/utsname.h>
#include <sys/sysinfo.h>
#include <argp.h>
#include "cimplylib/cimply.h"

struct utsname uname_info;
struct cimply user_info;
struct sysinfo system_info;

const char *argp_program_version = "version 0.1";

// uname

int print_uptime(int secondes)
{
	int heures, minutes;

	heures = (secondes / 3600);
	minutes = (secondes - (3600 * heures)) / 60;

	return printf("Uptime:  %dH %dM\n", heures, minutes);
}

int print_kernel()
{
	return printf("Kernel:  %s\n", uname_info.release);
}

int print_os()
{
	return printf("OS:      %s\n", uname_info.sysname);
}

int print_arch()
{
	return printf("Machine: %s\n", uname_info.machine);
}


// cimple

int print_userinfo()
{
	return printf("         %s@%s\n", user_info.name, uname_info.nodename);
}

int print_shell()
{
	return printf("Shell:   %s\n", user_info.shell);
}

int print_home()
{
	return printf("Home:    %s\n", user_info.home);
}

int print_desktop()
{
	return printf("Desktop: %s\n", user_info.desktop);
}

int print_pwd()
{
	return printf("PWD:     %s\n", user_info.pwd);
}



int print_all()
{
	print_userinfo();
	print_os();
	print_kernel();
	print_arch();
	print_uptime(system_info.uptime);

	print_shell();
	print_desktop();
	print_home();
	print_pwd();

	return 0;
}

static int parse_opt(int key, char *arg, struct argp_state *state)
{
	switch (key)
	{
		case 'a':
			print_all();
			break;
		case 'A':
			print_arch();
			break;
		case 'd':
			print_desktop();
			break;
		case 'H':
			print_home();
			break;
		case 'k':
			print_kernel();
			break;
		case 'o':
			print_os();
			break;
		case 's':
			print_shell();
			break;
		case 't':
			print_uptime(system_info.uptime);
			break;
		case 'u':
			print_userinfo();
			break;
	}

	return 0;
}

int print_default()
{
	print_userinfo();
	print_os();
	print_kernel();
	print_uptime(system_info.uptime);
	print_shell();

	return 0;
}

int main(int argc, char *argv[])
{
	uname(&uname_info);
	sysinfo(&system_info);
	cimple(&user_info);

	if (argc == 1)
		return print_default();

	struct argp_option options[] =
		{
			{"all", 'a', 0, 0, "Print all"},
			{"arch", 'A', 0, 0, "View machine"},
			{"desktop", 'd', 0, 0, "View current user desktop environment"},
			{"home", 'H', 0, 0, "View current user home"},
			{"kernel", 'k', 0 ,0, "View kernel info"},
			{"os", 'o', 0, 0, "View OS info"},
			{"shell", 's', 0, 0, "View current user shell"},
			{"uptime", 't', 0, 0, "View system uptime"},
			{"user", 'u', 0, 0, "View current user info"},
			{ 0 }
		};

	struct argp argp = { options, parse_opt};

	return argp_parse(&argp, argc, argv, 0, 0, 0);

}

// a b c d e f g h i j k l m n o p q r s t u v w z y z