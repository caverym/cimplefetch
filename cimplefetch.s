	.file	"cimplefetch.c"
	.text
.Ltext0:
	.globl	user_info
	.bss
	.align 32
	.type	user_info, @object
	.size	user_info, 1056
user_info:
	.zero	1056
	.globl	uname_info
	.align 32
	.type	uname_info, @object
	.size	uname_info, 390
uname_info:
	.zero	390
	.globl	system_info
	.align 32
	.type	system_info, @object
	.size	system_info, 112
system_info:
	.zero	112
	.globl	argp_program_version
	.section	.rodata
	.align 8
.LC0:
	.string	"Cimplefetch 0.4 by Avery\nusing libcimply 0.5"
	.section	.data.rel.local,"aw"
	.align 8
	.type	argp_program_version, @object
	.size	argp_program_version, 8
argp_program_version:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"Uptime:  %d H, %d M\n"
	.text
	.globl	print_uptime
	.type	print_uptime, @function
print_uptime:
.LFB6:
	.file 1 "cimplefetch.c"
	.loc 1 28 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 31 9
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$11, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 32 30
	movl	-8(%rbp), %eax
	imull	$-3600, %eax, %edx
	.loc 1 32 22
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 1 32 10
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 34 9
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 35 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	print_uptime, .-print_uptime
	.section	.rodata
	.align 8
.LC2:
	.string	"Uptime:  %d hour(s), %d minutes, %d seconds (%d total seconds)\n"
	.text
	.globl	print_full_uptime
	.type	print_full_uptime, @function
print_full_uptime:
.LFB7:
	.loc 1 37 37
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 40 9
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$11, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	.loc 1 41 30
	movl	-12(%rbp), %eax
	imull	$-3600, %eax, %edx
	.loc 1 41 22
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	.loc 1 41 10
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -8(%rbp)
	.loc 1 42 26
	movl	-12(%rbp), %eax
	imull	$-3600, %eax, %edx
	.loc 1 42 18
	movl	-20(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	.loc 1 42 47
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$4, %edx
	subl	%edx, %eax
	sall	$2, %eax
	.loc 1 42 6
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 44 9
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 46 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_full_uptime, .-print_full_uptime
	.section	.rodata
.LC3:
	.string	"Kernel:  %s\n"
	.text
	.globl	print_kernel
	.type	print_kernel, @function
print_kernel:
.LFB8:
	.loc 1 49 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 50 9
	leaq	130+uname_info(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 51 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	print_kernel, .-print_kernel
	.section	.rodata
.LC4:
	.string	"OS:      %s\n"
	.text
	.globl	print_os
	.type	print_os, @function
print_os:
.LFB9:
	.loc 1 54 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 55 9
	leaq	uname_info(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 56 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_os, .-print_os
	.section	.rodata
.LC5:
	.string	"Arch:    %s\n"
	.text
	.globl	print_arch
	.type	print_arch, @function
print_arch:
.LFB10:
	.loc 1 59 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 60 9
	leaq	260+uname_info(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 61 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	print_arch, .-print_arch
	.section	.rodata
.LC6:
	.string	"         %s@%s\n"
	.text
	.globl	print_userinfo
	.type	print_userinfo, @function
print_userinfo:
.LFB11:
	.loc 1 67 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 68 9
	movq	user_info(%rip), %rax
	leaq	24+user_info(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 69 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_userinfo, .-print_userinfo
	.section	.rodata
.LC7:
	.string	"User:    %s\n"
	.text
	.globl	print_user
	.type	print_user, @function
print_user:
.LFB12:
	.loc 1 72 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 73 15
	movq	user_info(%rip), %rax
	.loc 1 73 5
	testq	%rax, %rax
	jne	.L14
	.loc 1 74 10
	movl	$-1, %eax
	jmp	.L15
.L14:
	.loc 1 75 9
	movq	user_info(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L15:
	.loc 1 76 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	print_user, .-print_user
	.section	.rodata
.LC8:
	.string	"SHELL"
.LC9:
	.string	"Shell:   %s\n"
	.text
	.globl	print_shell
	.type	print_shell, @function
print_shell:
.LFB13:
	.loc 1 79 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 80 16
	leaq	.LC8(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 1 81 5
	cmpq	$0, -8(%rbp)
	jne	.L17
	.loc 1 82 10
	movl	$-1, %eax
	jmp	.L18
.L17:
	.loc 1 83 9
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L18:
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	print_shell, .-print_shell
	.section	.rodata
.LC10:
	.string	"HOME"
.LC11:
	.string	"Home:    %s\n"
	.text
	.globl	print_home
	.type	print_home, @function
print_home:
.LFB14:
	.loc 1 87 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 88 15
	leaq	.LC10(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 1 89 5
	cmpq	$0, -8(%rbp)
	jne	.L20
	.loc 1 90 10
	movl	$-1, %eax
	jmp	.L21
.L20:
	.loc 1 91 9
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L21:
	.loc 1 92 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	print_home, .-print_home
	.section	.rodata
.LC12:
	.string	"XDG_SESSION_DESKTOP"
.LC13:
	.string	"gnome"
.LC14:
	.string	"GNOME"
.LC15:
	.string	"gnome-xorg"
.LC16:
	.string	"GNOME on Xorg"
.LC17:
	.string	"xfce"
.LC18:
	.string	"Xfce"
.LC19:
	.string	"Desktop: %s\n"
	.text
	.globl	print_desktop
	.type	print_desktop, @function
print_desktop:
.LFB15:
	.loc 1 95 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 96 18
	leaq	.LC12(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 1 98 5
	cmpq	$0, -8(%rbp)
	jne	.L23
	.loc 1 102 10
	movl	$-1, %eax
	jmp	.L24
.L23:
	.loc 1 106 6
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 106 5
	testl	%eax, %eax
	jne	.L25
	.loc 1 107 11
	leaq	.LC14(%rip), %rax
	movq	%rax, -8(%rbp)
.L25:
	.loc 1 108 6
	movq	-8(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 108 5
	testl	%eax, %eax
	jne	.L26
	.loc 1 109 11
	leaq	.LC16(%rip), %rax
	movq	%rax, -8(%rbp)
.L26:
	.loc 1 110 6
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 110 5
	testl	%eax, %eax
	jne	.L27
	.loc 1 111 11
	leaq	.LC18(%rip), %rax
	movq	%rax, -8(%rbp)
.L27:
	.loc 1 114 9
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L24:
	.loc 1 115 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	print_desktop, .-print_desktop
	.section	.rodata
.LC20:
	.string	"CWD:     %s\n"
	.text
	.globl	print_cwd
	.type	print_cwd, @function
print_cwd:
.LFB16:
	.loc 1 118 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 119 15
	movq	16+user_info(%rip), %rax
	.loc 1 119 5
	testq	%rax, %rax
	jne	.L29
	.loc 1 120 10
	movl	$-1, %eax
	jmp	.L30
.L29:
	.loc 1 121 9
	movq	16+user_info(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L30:
	.loc 1 122 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	print_cwd, .-print_cwd
	.globl	print_all
	.type	print_all, @function
print_all:
.LFB17:
	.loc 1 140 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 141 2
	movl	$0, %eax
	call	print_userinfo
	.loc 1 142 2
	movl	$0, %eax
	call	print_user
	.loc 1 143 2
	movl	$0, %eax
	call	print_os
	.loc 1 144 2
	movl	$0, %eax
	call	print_kernel
	.loc 1 145 2
	movl	$0, %eax
	call	print_arch
	.loc 1 147 31
	movq	system_info(%rip), %rax
	.loc 1 147 2
	movl	%eax, %edi
	call	print_full_uptime
	.loc 1 151 2
	movl	$0, %eax
	call	print_shell
	.loc 1 152 2
	movl	$0, %eax
	call	print_desktop
	.loc 1 153 2
	movl	$0, %eax
	call	print_home
	.loc 1 154 2
	movl	$0, %eax
	call	print_cwd
	.loc 1 156 9
	movl	$0, %eax
	.loc 1 157 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	print_all, .-print_all
	.type	parse_opt, @function
parse_opt:
.LFB18:
	.loc 1 160 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %eax
	subl	$65, %eax
	cmpl	$52, %eax
	ja	.L34
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L36(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L36(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L36:
	.long	.L45-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L44-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L43-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L42-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L41-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L40-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L39-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L34-.L36
	.long	.L38-.L36
	.long	.L37-.L36
	.long	.L35-.L36
	.text
.L42:
	.loc 1 164 4
	movl	$0, %eax
	call	print_all
	.loc 1 165 4
	jmp	.L34
.L45:
	.loc 1 167 4
	movl	$0, %eax
	call	print_arch
	.loc 1 168 4
	jmp	.L34
.L41:
	.loc 1 170 4
	movl	$0, %eax
	call	print_desktop
	.loc 1 171 4
	jmp	.L34
.L44:
	.loc 1 173 4
	movl	$0, %eax
	call	print_home
	.loc 1 174 4
	jmp	.L34
.L40:
	.loc 1 176 4
	movl	$0, %eax
	call	print_kernel
	.loc 1 177 4
	jmp	.L34
.L39:
	.loc 1 179 4
	movl	$0, %eax
	call	print_os
	.loc 1 180 4
	jmp	.L34
.L38:
	.loc 1 182 4
	movl	$0, %eax
	call	print_shell
	.loc 1 183 4
	jmp	.L34
.L43:
	.loc 1 186 33
	movq	system_info(%rip), %rax
	.loc 1 186 4
	movl	%eax, %edi
	call	print_full_uptime
	.loc 1 187 4
	jmp	.L34
.L37:
	.loc 1 189 28
	movq	system_info(%rip), %rax
	.loc 1 189 4
	movl	%eax, %edi
	call	print_uptime
	.loc 1 190 4
	jmp	.L34
.L35:
	.loc 1 200 4
	movl	$0, %eax
	call	print_user
	.loc 1 201 4
	nop
.L34:
	.loc 1 204 9
	movl	$0, %eax
	.loc 1 205 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	parse_opt, .-parse_opt
	.globl	print_default
	.type	print_default, @function
print_default:
.LFB19:
	.loc 1 208 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 209 2
	movl	$0, %eax
	call	print_userinfo
	.loc 1 210 2
	movl	$0, %eax
	call	print_os
	.loc 1 211 2
	movl	$0, %eax
	call	print_kernel
	.loc 1 213 26
	movq	system_info(%rip), %rax
	.loc 1 213 2
	movl	%eax, %edi
	call	print_uptime
	.loc 1 217 2
	movl	$0, %eax
	call	print_shell
	.loc 1 219 9
	movl	$0, %eax
	.loc 1 220 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	print_default, .-print_default
	.section	.rodata
.LC21:
	.string	"all"
.LC22:
	.string	"Print all"
.LC23:
	.string	"arch"
.LC24:
	.string	"View system architecture"
.LC25:
	.string	"desktop"
	.align 8
.LC26:
	.string	"View current user desktop environment"
.LC27:
	.string	"home"
.LC28:
	.string	"View current user home"
.LC29:
	.string	"kernel"
.LC30:
	.string	"View kernel info"
.LC31:
	.string	"os"
.LC32:
	.string	"View OS info"
.LC33:
	.string	"shell"
.LC34:
	.string	"View current user shell"
.LC35:
	.string	"full-uptime"
.LC36:
	.string	"View full system uptime"
.LC37:
	.string	"uptime"
.LC38:
	.string	"View system uptime"
.LC39:
	.string	"user"
.LC40:
	.string	"View current user info"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.loc 1 223 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$624, %rsp
	movl	%edi, -612(%rbp)
	movq	%rsi, -624(%rbp)
	.loc 1 223 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 224 2
	leaq	uname_info(%rip), %rdi
	call	uname@PLT
	.loc 1 225 2
	leaq	user_info(%rip), %rdi
	call	cimple_init@PLT
	.loc 1 228 2
	leaq	system_info(%rip), %rdi
	call	sysinfo@PLT
	.loc 1 231 5
	cmpl	$1, -612(%rbp)
	jne	.L50
	.loc 1 232 10
	movl	$0, %eax
	call	print_default
	jmp	.L52
.L50:
	.loc 1 234 21
	leaq	-544(%rbp), %rdx
	movl	$0, %eax
	movl	$66, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	.LC21(%rip), %rax
	movq	%rax, -544(%rbp)
	movl	$97, -536(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -512(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -496(%rbp)
	movl	$65, -488(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -464(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -448(%rbp)
	movl	$100, -440(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -416(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -400(%rbp)
	movl	$72, -392(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -368(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -352(%rbp)
	movl	$107, -344(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -320(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -304(%rbp)
	movl	$111, -296(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -256(%rbp)
	movl	$115, -248(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC35(%rip), %rax
	movq	%rax, -208(%rbp)
	movl	$84, -200(%rbp)
	leaq	.LC36(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$116, -152(%rbp)
	leaq	.LC38(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -112(%rbp)
	movl	$117, -104(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -80(%rbp)
	.loc 1 249 14
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	parse_opt(%rip), %rax
	movq	%rax, -600(%rbp)
	.loc 1 251 9
	movq	-624(%rbp), %rdx
	movl	-612(%rbp), %esi
	leaq	-608(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	argp_parse@PLT
.L52:
	.loc 1 252 1 discriminator 1
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L53
	.loc 1 252 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/argp.h"
	.file 7 "/usr/include/libcimply.h"
	.file 8 "/usr/include/sys/utsname.h"
	.file 9 "/usr/include/asm-generic/int-ll64.h"
	.file 10 "/usr/include/asm-generic/posix_types.h"
	.file 11 "/usr/include/linux/sysinfo.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa56
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF128
	.byte	0xc
	.long	.LASF129
	.long	.LASF130
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x91
	.uleb128 0x8
	.long	.LASF47
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x224
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x23d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x243
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x249
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x259
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x264
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x26f
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x243
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x9d
	.uleb128 0xa
	.long	.LASF131
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0xc
	.long	0x91
	.long	0x259
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x230
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25f
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0xc
	.long	0x91
	.long	0x285
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xe
	.long	0x285
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.byte	0x23
	.byte	0xd
	.long	0x65
	.uleb128 0x8
	.long	.LASF48
	.byte	0x30
	.byte	0x6
	.byte	0x2b
	.byte	0x8
	.long	0x30c
	.uleb128 0x9
	.long	.LASF49
	.byte	0x6
	.byte	0x2f
	.byte	0xf
	.long	0x29e
	.byte	0
	.uleb128 0xf
	.string	"key"
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xf
	.string	"arg"
	.byte	0x6
	.byte	0x37
	.byte	0xf
	.long	0x29e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF50
	.byte	0x6
	.byte	0x3a
	.byte	0x7
	.long	0x65
	.byte	0x18
	.uleb128 0xf
	.string	"doc"
	.byte	0x6
	.byte	0x40
	.byte	0xf
	.long	0x29e
	.byte	0x20
	.uleb128 0x9
	.long	.LASF51
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	0x2b0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x71
	.byte	0x13
	.long	0x31d
	.uleb128 0x6
	.byte	0x8
	.long	0x323
	.uleb128 0x10
	.long	0x2a4
	.long	0x33c
	.uleb128 0x11
	.long	0x65
	.uleb128 0x11
	.long	0x8b
	.uleb128 0x11
	.long	0x33c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x347
	.uleb128 0xe
	.long	0x33c
	.uleb128 0x12
	.long	.LASF53
	.byte	0x60
	.byte	0x6
	.value	0x111
	.byte	0x8
	.long	0x41a
	.uleb128 0x13
	.long	.LASF54
	.byte	0x6
	.value	0x114
	.byte	0x16
	.long	0x4fc
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0x6
	.value	0x117
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0x13
	.long	.LASF56
	.byte	0x6
	.value	0x118
	.byte	0xa
	.long	0x502
	.byte	0x10
	.uleb128 0x13
	.long	.LASF57
	.byte	0x6
	.value	0x11b
	.byte	0x7
	.long	0x65
	.byte	0x18
	.uleb128 0x13
	.long	.LASF50
	.byte	0x6
	.value	0x11e
	.byte	0xc
	.long	0x40
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF58
	.byte	0x6
	.value	0x124
	.byte	0xc
	.long	0x40
	.byte	0x20
	.uleb128 0x13
	.long	.LASF59
	.byte	0x6
	.value	0x129
	.byte	0x7
	.long	0x65
	.byte	0x24
	.uleb128 0x13
	.long	.LASF60
	.byte	0x6
	.value	0x12c
	.byte	0x9
	.long	0x47
	.byte	0x28
	.uleb128 0x13
	.long	.LASF61
	.byte	0x6
	.value	0x12f
	.byte	0xa
	.long	0x508
	.byte	0x30
	.uleb128 0x13
	.long	.LASF62
	.byte	0x6
	.value	0x132
	.byte	0x9
	.long	0x47
	.byte	0x38
	.uleb128 0x13
	.long	.LASF49
	.byte	0x6
	.value	0x136
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x13
	.long	.LASF63
	.byte	0x6
	.value	0x139
	.byte	0x9
	.long	0x285
	.byte	0x48
	.uleb128 0x13
	.long	.LASF64
	.byte	0x6
	.value	0x13a
	.byte	0x9
	.long	0x285
	.byte	0x50
	.uleb128 0x13
	.long	.LASF65
	.byte	0x6
	.value	0x13c
	.byte	0x9
	.long	0x47
	.byte	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x38
	.byte	0x6
	.byte	0xb6
	.byte	0x8
	.long	0x483
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.byte	0xba
	.byte	0x1d
	.long	0x488
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.byte	0xc3
	.byte	0x11
	.long	0x311
	.byte	0x8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.byte	0xca
	.byte	0xf
	.long	0x29e
	.byte	0x10
	.uleb128 0xf
	.string	"doc"
	.byte	0x6
	.byte	0xcf
	.byte	0xf
	.long	0x29e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF70
	.byte	0x6
	.byte	0xd7
	.byte	0x1c
	.long	0x4d7
	.byte	0x20
	.uleb128 0x9
	.long	.LASF71
	.byte	0x6
	.byte	0xe3
	.byte	0xb
	.long	0x4f6
	.byte	0x28
	.uleb128 0x9
	.long	.LASF72
	.byte	0x6
	.byte	0xe8
	.byte	0xf
	.long	0x29e
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	0x41a
	.uleb128 0x6
	.byte	0x8
	.long	0x30c
	.uleb128 0x8
	.long	.LASF73
	.byte	0x20
	.byte	0x6
	.byte	0xf8
	.byte	0x8
	.long	0x4d2
	.uleb128 0x9
	.long	.LASF66
	.byte	0x6
	.byte	0xfb
	.byte	0x16
	.long	0x4fc
	.byte	0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x6
	.byte	0xfe
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0x13
	.long	.LASF74
	.byte	0x6
	.value	0x104
	.byte	0xf
	.long	0x29e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF51
	.byte	0x6
	.value	0x10c
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	0x48e
	.uleb128 0x6
	.byte	0x8
	.long	0x4d2
	.uleb128 0x10
	.long	0x8b
	.long	0x4f6
	.uleb128 0x11
	.long	0x65
	.uleb128 0x11
	.long	0x29e
	.uleb128 0x11
	.long	0x47
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4dd
	.uleb128 0x6
	.byte	0x8
	.long	0x483
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0x6
	.byte	0x8
	.long	0x47
	.uleb128 0x14
	.long	.LASF80
	.byte	0x6
	.value	0x181
	.byte	0x14
	.long	0x29e
	.uleb128 0x15
	.long	.LASF75
	.value	0x420
	.byte	0x7
	.byte	0xd
	.byte	0x8
	.long	0x57a
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0xe
	.byte	0x8
	.long	0x8b
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0x7
	.byte	0xf
	.byte	0x8
	.long	0x8b
	.byte	0x8
	.uleb128 0xf
	.string	"cwd"
	.byte	0x7
	.byte	0x10
	.byte	0x8
	.long	0x8b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF77
	.byte	0x7
	.byte	0x11
	.byte	0x7
	.long	0x57a
	.byte	0x18
	.uleb128 0x16
	.string	"uid"
	.byte	0x7
	.byte	0x12
	.byte	0xf
	.long	0x40
	.value	0x418
	.uleb128 0x17
	.long	.LASF78
	.byte	0x7
	.byte	0x13
	.byte	0xf
	.long	0x40
	.value	0x41c
	.byte	0
	.uleb128 0xc
	.long	0x91
	.long	0x58b
	.uleb128 0x18
	.long	0x39
	.value	0x3ff
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF79
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.byte	0x7
	.byte	0xf
	.long	0x51b
	.uleb128 0x9
	.byte	0x3
	.quad	user_info
	.uleb128 0x15
	.long	.LASF82
	.value	0x186
	.byte	0x8
	.byte	0x30
	.byte	0x8
	.long	0x607
	.uleb128 0x9
	.long	.LASF83
	.byte	0x8
	.byte	0x33
	.byte	0xa
	.long	0x607
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x8
	.byte	0x36
	.byte	0xa
	.long	0x607
	.byte	0x41
	.uleb128 0x9
	.long	.LASF85
	.byte	0x8
	.byte	0x39
	.byte	0xa
	.long	0x607
	.byte	0x82
	.uleb128 0x9
	.long	.LASF86
	.byte	0x8
	.byte	0x3b
	.byte	0xa
	.long	0x607
	.byte	0xc3
	.uleb128 0x17
	.long	.LASF87
	.byte	0x8
	.byte	0x3e
	.byte	0xa
	.long	0x607
	.value	0x104
	.uleb128 0x17
	.long	.LASF88
	.byte	0x8
	.byte	0x45
	.byte	0xa
	.long	0x607
	.value	0x145
	.byte	0
	.uleb128 0xc
	.long	0x91
	.long	0x617
	.uleb128 0xd
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.long	0x5a8
	.uleb128 0x9
	.byte	0x3
	.quad	uname_info
	.uleb128 0x2
	.long	.LASF90
	.byte	0x9
	.byte	0x18
	.byte	0x18
	.long	0x50
	.uleb128 0x2
	.long	.LASF91
	.byte	0x9
	.byte	0x1b
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.byte	0xf
	.byte	0xf
	.long	0x6c
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa
	.byte	0x10
	.byte	0x17
	.long	0x39
	.uleb128 0x8
	.long	.LASF94
	.byte	0x70
	.byte	0xb
	.byte	0x8
	.byte	0x8
	.long	0x720
	.uleb128 0x9
	.long	.LASF95
	.byte	0xb
	.byte	0x9
	.byte	0x12
	.long	0x645
	.byte	0
	.uleb128 0x9
	.long	.LASF96
	.byte	0xb
	.byte	0xa
	.byte	0x13
	.long	0x720
	.byte	0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0xb
	.byte	0xb
	.byte	0x13
	.long	0x651
	.byte	0x20
	.uleb128 0x9
	.long	.LASF98
	.byte	0xb
	.byte	0xc
	.byte	0x13
	.long	0x651
	.byte	0x28
	.uleb128 0x9
	.long	.LASF99
	.byte	0xb
	.byte	0xd
	.byte	0x13
	.long	0x651
	.byte	0x30
	.uleb128 0x9
	.long	.LASF100
	.byte	0xb
	.byte	0xe
	.byte	0x13
	.long	0x651
	.byte	0x38
	.uleb128 0x9
	.long	.LASF101
	.byte	0xb
	.byte	0xf
	.byte	0x13
	.long	0x651
	.byte	0x40
	.uleb128 0x9
	.long	.LASF102
	.byte	0xb
	.byte	0x10
	.byte	0x13
	.long	0x651
	.byte	0x48
	.uleb128 0x9
	.long	.LASF103
	.byte	0xb
	.byte	0x11
	.byte	0x8
	.long	0x62d
	.byte	0x50
	.uleb128 0xf
	.string	"pad"
	.byte	0xb
	.byte	0x12
	.byte	0x8
	.long	0x62d
	.byte	0x52
	.uleb128 0x9
	.long	.LASF104
	.byte	0xb
	.byte	0x13
	.byte	0x13
	.long	0x651
	.byte	0x58
	.uleb128 0x9
	.long	.LASF105
	.byte	0xb
	.byte	0x14
	.byte	0x13
	.long	0x651
	.byte	0x60
	.uleb128 0x9
	.long	.LASF106
	.byte	0xb
	.byte	0x15
	.byte	0x8
	.long	0x639
	.byte	0x68
	.uleb128 0xf
	.string	"_f"
	.byte	0xb
	.byte	0x16
	.byte	0x7
	.long	0x730
	.byte	0x6c
	.byte	0
	.uleb128 0xc
	.long	0x651
	.long	0x730
	.uleb128 0xd
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0x91
	.long	0x740
	.uleb128 0x1a
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF107
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.long	0x65d
	.uleb128 0x9
	.byte	0x3
	.quad	system_info
	.uleb128 0x1b
	.long	0x50e
	.uleb128 0x9
	.byte	0x3
	.quad	argp_program_version
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.long	0x65
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c8
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.byte	0xde
	.byte	0x1a
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x1e
	.long	.LASF67
	.byte	0x1
	.byte	0xea
	.byte	0x15
	.long	0x7c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1e
	.long	.LASF66
	.byte	0x1
	.byte	0xf9
	.byte	0xe
	.long	0x41a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.byte	0
	.uleb128 0xc
	.long	0x2b0
	.long	0x7d8
	.uleb128 0xd
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.long	.LASF109
	.byte	0x1
	.byte	0xcf
	.byte	0x5
	.long	0x65
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF132
	.byte	0x1
	.byte	0x9f
	.byte	0xc
	.long	0x65
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x846
	.uleb128 0x21
	.string	"key"
	.byte	0x1
	.byte	0x9f
	.byte	0x1a
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x9f
	.byte	0x25
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.byte	0x9f
	.byte	0x3d
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.byte	0x8b
	.byte	0x5
	.long	0x65
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF111
	.byte	0x1
	.byte	0x75
	.byte	0x5
	.long	0x65
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF113
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.long	0x65
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b4
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.byte	0x60
	.byte	0x8
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.long	0x65
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e6
	.uleb128 0x1e
	.long	.LASF76
	.byte	0x1
	.byte	0x58
	.byte	0x8
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF115
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.long	0x65
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x918
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0x50
	.byte	0x8
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.long	0x65
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.long	0x65
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.long	0x65
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.long	0x65
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.long	0x65
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.long	0x65
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0d
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.byte	0x25
	.byte	0x1b
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"sec"
	.byte	0x1
	.byte	0x26
	.byte	0x17
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF127
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.long	0x65
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.byte	0x1b
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x37
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF93:
	.string	"__kernel_ulong_t"
.LASF82:
	.string	"utsname"
.LASF30:
	.string	"_shortbuf"
.LASF131:
	.string	"_IO_lock_t"
.LASF60:
	.string	"input"
.LASF19:
	.string	"_IO_buf_end"
.LASF71:
	.string	"help_filter"
.LASF61:
	.string	"child_inputs"
.LASF50:
	.string	"flags"
.LASF17:
	.string	"_IO_write_end"
.LASF1:
	.string	"unsigned int"
.LASF102:
	.string	"freeswap"
.LASF57:
	.string	"next"
.LASF86:
	.string	"version"
.LASF95:
	.string	"uptime"
.LASF35:
	.string	"_freeres_list"
.LASF11:
	.string	"_flags"
.LASF54:
	.string	"root_argp"
.LASF23:
	.string	"_markers"
.LASF98:
	.string	"freeram"
.LASF119:
	.string	"print_arch"
.LASF116:
	.string	"shell"
.LASF22:
	.string	"_IO_save_end"
.LASF42:
	.string	"_IO_codecvt"
.LASF78:
	.string	"euid"
.LASF45:
	.string	"long long unsigned int"
.LASF111:
	.string	"print_cwd"
.LASF21:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_offset"
.LASF118:
	.string	"print_userinfo"
.LASF109:
	.string	"print_default"
.LASF25:
	.string	"_fileno"
.LASF113:
	.string	"print_desktop"
.LASF48:
	.string	"argp_option"
.LASF7:
	.string	"size_t"
.LASF103:
	.string	"procs"
.LASF69:
	.string	"args_doc"
.LASF90:
	.string	"__u16"
.LASF14:
	.string	"_IO_read_base"
.LASF65:
	.string	"pstate"
.LASF55:
	.string	"argc"
.LASF53:
	.string	"argp_state"
.LASF123:
	.string	"print_full_uptime"
.LASF75:
	.string	"cimply"
.LASF106:
	.string	"mem_unit"
.LASF125:
	.string	"heures"
.LASF114:
	.string	"print_home"
.LASF10:
	.string	"char"
.LASF38:
	.string	"_mode"
.LASF41:
	.string	"_IO_marker"
.LASF112:
	.string	"desktop"
.LASF12:
	.string	"_IO_read_ptr"
.LASF101:
	.string	"totalswap"
.LASF91:
	.string	"__u32"
.LASF72:
	.string	"argp_domain"
.LASF87:
	.string	"machine"
.LASF128:
	.string	"GNU C17 10.2.0 -mtune=generic -march=x86-64 -g"
.LASF77:
	.string	"hostname"
.LASF15:
	.string	"_IO_write_base"
.LASF100:
	.string	"bufferram"
.LASF44:
	.string	"long long int"
.LASF96:
	.string	"loads"
.LASF20:
	.string	"_IO_save_base"
.LASF74:
	.string	"header"
.LASF129:
	.string	"cimplefetch.c"
.LASF130:
	.string	"/home/avery/Documents/git/cimplefetch"
.LASF36:
	.string	"_freeres_buf"
.LASF105:
	.string	"freehigh"
.LASF37:
	.string	"__pad5"
.LASF124:
	.string	"secondes"
.LASF80:
	.string	"argp_program_version"
.LASF79:
	.string	"_Bool"
.LASF29:
	.string	"_vtable_offset"
.LASF89:
	.string	"uname_info"
.LASF66:
	.string	"argp"
.LASF81:
	.string	"user_info"
.LASF56:
	.string	"argv"
.LASF68:
	.string	"parser"
.LASF51:
	.string	"group"
.LASF73:
	.string	"argp_child"
.LASF64:
	.string	"out_stream"
.LASF13:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF88:
	.string	"__domainname"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"options"
.LASF46:
	.string	"error_t"
.LASF132:
	.string	"parse_opt"
.LASF126:
	.string	"minutes"
.LASF43:
	.string	"_IO_wide_data"
.LASF49:
	.string	"name"
.LASF110:
	.string	"print_all"
.LASF52:
	.string	"argp_parser_t"
.LASF99:
	.string	"sharedram"
.LASF34:
	.string	"_wide_data"
.LASF63:
	.string	"err_stream"
.LASF31:
	.string	"_lock"
.LASF0:
	.string	"long unsigned int"
.LASF27:
	.string	"_old_offset"
.LASF47:
	.string	"_IO_FILE"
.LASF94:
	.string	"sysinfo"
.LASF84:
	.string	"nodename"
.LASF2:
	.string	"unsigned char"
.LASF59:
	.string	"quoted"
.LASF92:
	.string	"__kernel_long_t"
.LASF97:
	.string	"totalram"
.LASF16:
	.string	"_IO_write_ptr"
.LASF76:
	.string	"home"
.LASF107:
	.string	"system_info"
.LASF108:
	.string	"state"
.LASF33:
	.string	"_codecvt"
.LASF58:
	.string	"arg_num"
.LASF8:
	.string	"__off_t"
.LASF127:
	.string	"print_uptime"
.LASF115:
	.string	"print_shell"
.LASF120:
	.string	"print_os"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF85:
	.string	"release"
.LASF122:
	.string	"main"
.LASF70:
	.string	"children"
.LASF24:
	.string	"_chain"
.LASF40:
	.string	"FILE"
.LASF26:
	.string	"_flags2"
.LASF104:
	.string	"totalhigh"
.LASF83:
	.string	"sysname"
.LASF28:
	.string	"_cur_column"
.LASF117:
	.string	"print_user"
.LASF121:
	.string	"print_kernel"
.LASF62:
	.string	"hook"
.LASF9:
	.string	"__off64_t"
.LASF39:
	.string	"_unused2"
.LASF18:
	.string	"_IO_buf_base"
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
