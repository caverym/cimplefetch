//
// Created by avery on 17/01/2021.
//

#ifndef CIMPLEFETCH_CIMPLY_H
#define CIMPLEFETCH_CIMPLY_H
#include <stdlib.h>
#include <pwd.h>
#include <unistd.h>
#include <stdlib.h>

struct cUser
{
    const char *name;
    const char *home;
    const char *shell;
    const char *session;
    const char *session_type;
    const char *desktop;
    const char *pwd;


};

int cinit(struct cUser *cstruct)
{
	cstruct->name = getenv("USER");
	cstruct->home = getenv("HOME");
	//cstruct->shell = getpwuid(geteuid())->pw_shell;
	cstruct->shell = getenv("SHELL");
	cstruct->pwd = getenv("PWD");
	cstruct->desktop = getenv("XDG_SESSION_DESKTOP");
	cstruct->session_type = getenv("XDG_SESSION_TYPE");

	return 0;
}

#endif //CIMPLEFETCH_CIMPLY_H
