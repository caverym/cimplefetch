#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <argp.h>

#include <libcimply.h>
struct cimply user_info;

#include <sys/utsname.h>
struct utsname uname_info;

// To compile on macOS, run with this:
// `gcc -Wall -g -o cimplefetch cimplefetch.c -largp -lcimply`
// you must have glib, argp-standalone and libcimply installed
#ifndef __APPLE__
#include <sys/sysinfo.h>
struct sysinfo system_info;
#else
#include <sys/sysctl.h>
#endif

#define VERSION "0.4"
const char *argp_program_version = "Cimplefetch "VERSION" by Avery\nusing libcimply " CIMPLY_VERSION;

// uname

int print_uptime(int secondes)
{
	int heures, minutes;

	heures = (secondes / 3600);
	minutes = (secondes - (3600 * heures)) / 60;

	return printf("Uptime:  %d H, %d M\n", heures, minutes);
}

int print_full_uptime(int secondes) {
	int heures, minutes, sec;

	heures = (secondes / 3600);
	minutes = (secondes - (3600 * heures)) / 60;
	sec = (secondes - (3600 * heures) - (minutes * 60));

	return printf("Uptime:  %d hour(s), %d minutes, %d seconds (%d total seconds)\n",
	heures, minutes, sec, secondes);
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
	char *home = getenv("HOME");
	if (home == NULL)
		return -1;
	return printf("Home:    %s\n", home);
}

int print_desktop()
{
	char *desktop = getenv("XDG_SESSION_DESKTOP");

	if (desktop == NULL) {
		#ifdef __APPLE__
		desktop = "Finder";
		#else
		return -1;
		#endif
	}

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
	if (user_info.cwd == NULL)
		return -1;
	return printf("PWD:     %s\n", user_info.cwd);
}

#ifdef __APPLE__
/* length 0 for short, 1 for long */
int mac_print_time(int length)
{
	struct timeval mactime;
	switch (length) {
		case 0:
			return print_uptime(mactime.tv_sec);
		case 1:
			return print_full_uptime(mactime.tv_sec);
	}
	return 0;
}
#endif

int print_all()
{
	print_userinfo();
	print_user();
	print_os();
	print_kernel();
	print_arch();
	#ifndef __APPLE__
	print_full_uptime(system_info.uptime);
	#else
	mac_print_time(1);
	#endif
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
		#ifndef __APPLE
		case 'T':
			print_full_uptime(system_info.uptime);
			break;
		case 't':
			print_uptime(system_info.uptime);
			break;
		#else
		case 'T':
			mac_print_time(1);
			break;
		case 't':
			mac_print_time(0);
			break;
		#endif	
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
	#ifndef __APPLE
	print_uptime(system_info.uptime);
	#else
	mac_print_time(0);
	#endif
	print_shell();

	return 0;
}

int main(int argc, char *argv[])
{
	uname(&uname_info);
	cimple_init(&user_info);

	#ifndef __APPLE__
	sysinfo(&system_info);
	#endif

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
