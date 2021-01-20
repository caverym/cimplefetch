#include <stdio.h>
#include <stdlib.h>
#include <sys/utsname.h>
#include <sys/sysinfo.h>
#include <string.h>
#include <argp.h>
#include "cimplylib/cimply.h"

struct utsname uname_info;
struct cimply user_info;
struct sysinfo system_info;

const char *argp_program_version = "Cimplefetch version 0.2";

// uname

int print_uptime(int secondes)
{
	int heures, minutes;

	heures = (secondes / 3600);
	minutes = (secondes - (3600 * heures)) / 60;

	return printf("Uptime:  %d H, %d M\n", heures, minutes);
}

int print_full_uptimme(int secondes) {
	int heures, minutes, sec;

	heures = (secondes / 3600);
	minutes = (secondes - (3600 * heures)) / 60;
	sec = (secondes - (3600 * heures) - (minutes * 60));

	return printf("Uptime:  %d hours, %d minutes, %d seconds (%d total seconds)\n", heures, minutes, sec, secondes);
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
	return printf("Arch:    %s\n", uname_info.machine);
}


// cimple

int print_userinfo()
{
	return printf("         %s@%s\n", user_info.name, uname_info.nodename);
}

int print_user()
{
	if (user_info.name == NULL)
		return -1;
	return printf("User:    %s\n", user_info.name);
}

int print_shell()
{
	// return printf("Shell:   %s\n", getenv("SHELL"));
	char *shell = getenv("SHELL");
	if (shell == NULL)
		return -1;
	return printf("Shell:   %s\n", shell);
}

int print_home()
{
	if (user_info.home == NULL)
		return -1;
	return printf("Home:    %s\n", user_info.home);
}

int print_desktop()
{
	char *desktop = getenv("XDG_SESSION_DESKTOP");

	if (desktop == NULL)
		return -1;

	if (strcmp(desktop, "gnome") == 0)
		desktop = "GNOME";
	if (strcmp(desktop, "gnome-xorg") == 0)
		desktop = "GNOME on Xorg";
	if (strcmp(desktop, "xfce") == 0)
		desktop = "Xfce";


	return printf("Desktop: %s\n", desktop);
}

int print_pwd()
{
	if (user_info.pwd == NULL)
		return -1;
	return printf("PWD:     %s\n", user_info.pwd);
}


int print_all()
{
	print_userinfo();
	print_user();
	print_os();
	print_kernel();
	print_arch();
	print_full_uptimme(system_info.uptime);

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
		case 'T':
			print_full_uptimme(system_info.uptime);
			break;
		case 't':
			print_uptime(system_info.uptime);
			break;
		case 'u':
			print_user();
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
	cimple_init(&user_info);

	if (argc == 1)
		return print_default();

	struct argp_option options[] =
		{
			{"all", 'a', 0, 0, "Print all"},
			{"arch", 'A', 0, 0, "View system architecture"},
			{"desktop", 'd', 0, 0, "View current user desktop environment"},
			{"home", 'H', 0, 0, "View current user home"},
			{"kernel", 'k', 0 ,0, "View kernel info"},
			{"os", 'o', 0, 0, "View OS info"},
			{"shell", 's', 0, 0, "View current user shell"},
			{"full-uptime", 'T', 0, 0, "View full system uptime"},
			{"uptime", 't', 0, 0, "View system uptime"},
			{"user", 'u', 0, 0, "View current user info"},
			{ 0 }
		};

	struct argp argp = { options, parse_opt};

	return argp_parse(&argp, argc, argv, 0, 0, 0);

}

