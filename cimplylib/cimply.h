//
// Created by avery on 17/01/2021.
//

#ifndef CIMPLEFETCH_CIMPLY_H
#define CIMPLEFETCH_CIMPLY_H
#include <stdlib.h>

struct cimply {
	const char *name;
	const char *home;
	const char *shell;
	const char *desktop;
	const char *pwd;
};

int cimple(struct cimply *cstruct)
{
	cstruct->name = getenv("USER");
	cstruct->home = getenv("HOME");
	cstruct->shell = getenv("SHELL");
	cstruct->pwd = getenv("PWD");
	cstruct->desktop = getenv("XDG_SESSION_DESKTOP");

	return 0;
}

#endif				//CIMPLEFETCH_CIMPLY_H
