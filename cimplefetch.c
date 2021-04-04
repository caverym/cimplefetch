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
const char *argp_program_version = "Cimplefetch " VERSION " by Avery"
"\nusing libcimply " CIMPLY_VERSION;  // Expects libcimply 0.5

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

	return printf("Uptime:  %d hour(s), %d minutes, %d seconds" 
			" (%d total seconds)\n",
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

int print_host()
{
	return printf("Host:    %s\n", user_info.hostname);
}

int print_userinfo()
{
	return printf("         %s@%s\n", user_info.name, user_info.hostname);
}

int print_user()
{
	if (user_info.name == NULL)
		return -1;
	return printf("User:    %s\n", user_info.name);
}

int find_stuff(int way, char string[24], char item)
{
    switch (way) {
        case 0:
            for (int i = 24; i >= 0; i--) {
                if (string[i] == item)
                    return i+1;
            } return 24;
        case 1:
            for (int i = 0; i <= 24; i++) {
                if (string[i] == item)
                    return i-1;
            } return 0;
    }
    return -1;
}

int print_shell()
{
    int begining;
    int end;
    char shell[24];
	char *shell_string = getenv("SHELL");

	if (!shell_string)
		return -1;

    strcpy(shell, shell_string);

    begining = find_stuff(0, shell, '/');
    end = find_stuff(1, shell, '\0');

    printf("Shell:   ");
    for (int i = begining; i <= end; i++) {
        printf("%c", shell[i]);
    }

    return printf("\n");
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
		desktop = "GNOME";
	if (strcmp(desktop, "xfce") == 0)
		desktop = "Xfce";

	return printf("Desktop: %s\n", desktop);
}

int print_cwd()
{
	if (user_info.cwd == NULL)
		return -1;
	return printf("CWD:     %s\n", user_info.cwd);
}

int print_session()
{
	char session[10];
	char *session_string = getenv("XDG_SESSION_TYPE");

	if (!session_string)
		return -1;
	
	strcpy(session, getenv("XDG_SESSION_TYPE"));

	if (session[1] == '1') {
		strcpy(session, "X11");
	} else {
		strcpy(session, "Wayland");
	}
	
	return printf("Session: %s\n", session);
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
	print_host();
	print_arch();
	#ifndef __APPLE__
	print_full_uptime(system_info.uptime);
	#else
	mac_print_time(1);
	#endif
	print_shell();
	print_desktop();
	print_session();
	print_home();
	print_cwd();

	return 0;
}

static int parse_opt(int key, char *arg, struct argp_state *state)
{
	switch (key)
	{
		case 'A':
			print_all();
			break;
		case 'a':
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
		case 'n':
			print_host();
			break;
		case 'o':
			print_os();
			break;
		case 's':
			print_shell();
			break;
		case 'S':
			print_session();
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
	cimple(&user_info);

	#ifndef __APPLE__
	sysinfo(&system_info);
	#endif

	if (argc == 1)
		return print_default();

	struct argp_option options[] =
		{
		{"all", 'A', 0, 0, "Print all"},
		{"arch", 'a', 0, 0, "View system architecture"},
		{"desktop", 'd', 0, 0, "View current desktop environment"},
		{"home", 'H', 0, 0, "View current user home"},
		{"kernel", 'k', 0 ,0, "View kernel info"},
		{"host", 'n', 0, 0, "View system hostname"},
		{"os", 'o', 0, 0, "View OS info"},
		{"shell", 's', 0, 0, "View current user shell"},
		{"session", 'S', 0, 0, "View XDG Session type"},
		{"full-uptime", 'T', 0, 0, "View full system uptime"},
		{"uptime", 't', 0, 0, "View system uptime"},
		{"user", 'u', 0, 0, "View current user info"},
		{ 0 }
		};

	struct argp argp = { options, parse_opt};

	return argp_parse(&argp, argc, argv, 0, 0, 0);
}

