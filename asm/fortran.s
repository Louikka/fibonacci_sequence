	.file	"fortran.f90"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "fortran.f90\0"
.LC1:
	.ascii "no"
.LC2:
	.ascii "(A)"
	.align 8
.LC3:
	.ascii "Enter the length of Fibonacci sequence : "
	.align 8
.LC4:
	.ascii "Integer overflow when calculating the amount of memory to allocate\0"
.LC5:
	.ascii "arr\0"
	.align 8
.LC6:
	.ascii "Attempting to allocate already allocated variable '%s'\0"
	.align 8
.LC7:
	.ascii "At line 17 of file fortran.f90\0"
.LC8:
	.ascii "Error allocating %lu bytes\0"
	.align 8
.LC9:
	.ascii "In file 'fortran.f90', around line 18\0"
.LC10:
	.ascii "(\" \", I0)"
.LC11:
	.ascii "(A, I0, A)"
	.align 8
.LC12:
	.ascii "Next number is too big (largest possible number (int64) is "
	.align 8
.LC13:
	.quad	9223372036854775807
.LC14:
	.ascii ")"
.LC15:
	.ascii "(A, I0)"
	.align 8
.LC16:
	.ascii "Length of the computed sequence : "
	.text
	.def	MAIN__;	.scl	3;	.type	32;	.endef
	.seh_proc	MAIN__
MAIN__:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$664, %rsp
	.seh_stackalloc	664
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	$0, 448(%rbp)
	movq	$0, 464(%rbp)
	movq	$0, 472(%rbp)
	movq	$8, 464(%rbp)
	movb	$1, 476(%rbp)
	movb	$1, 477(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$14, -80(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, 8(%rbp)
	movq	$2, 0(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$3, -8(%rbp)
	movl	$12288, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	leaq	-96(%rbp), %rax
	movl	$41, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_gfortran_transfer_character_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$15, -80(%rbp)
	movl	$128, -96(%rbp)
	movl	$5, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_read
	leaq	444(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_gfortran_transfer_integer
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_read_done
	movq	$0, 464(%rbp)
	movq	$0, 472(%rbp)
	movq	$8, 464(%rbp)
	movb	$1, 476(%rbp)
	movb	$1, 477(%rbp)
	movl	444(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movslq	%eax, %rcx
	testq	%rcx, %rcx
	je	.L2
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	jg	.L3
	movl	$1, %eax
	jmp	.L5
.L3:
	movl	$0, %eax
	jmp	.L5
.L2:
	movl	$0, %eax
.L5:
	movq	%rcx, %r8
	movabsq	$2305843009213693951, %rdx
	cmpq	%r8, %rdx
	jnb	.L6
	movl	$1, %edx
	jmp	.L7
.L6:
	movl	$0, %edx
.L7:
	addl	%eax, %edx
	movl	444(%rbp), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L8
	movl	$0, %ebx
	jmp	.L9
.L8:
	movq	%rcx, %rax
	leaq	0(,%rax,8), %rbx
.L9:
	movq	448(%rbp), %rax
	testq	%rax, %rax
	testl	%edx, %edx
	je	.L10
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	_gfortran_runtime_error
.L10:
	movq	448(%rbp), %rax
	testq	%rax, %rax
	je	.L11
	leaq	.LC5(%rip), %r8
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	_gfortran_runtime_error_at
.L11:
	movl	$1, %eax
	testq	%rbx, %rbx
	cmovne	%rbx, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, 448(%rbp)
	movq	448(%rbp), %rax
	testq	%rax, %rax
	jne	.L12
	movl	%ebx, %eax
	movl	%eax, %r8d
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	_gfortran_os_error_at
.L12:
	movq	$1, 496(%rbp)
	movl	444(%rbp), %eax
	cltq
	movq	%rax, 504(%rbp)
	movq	$1, 488(%rbp)
	movq	$-1, 456(%rbp)
	movq	$8, 480(%rbp)
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	addq	$1, %rdx
	movq	$0, (%rax,%rdx,8)
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$20, -80(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$9, -8(%rbp)
	movl	$4096, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	movq	448(%rbp), %rdx
	movq	456(%rbp), %rax
	addq	$1, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_gfortran_transfer_integer_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	movq	448(%rbp), %rax
	movq	456(%rbp), %rdx
	addq	$2, %rdx
	movq	$1, (%rax,%rdx,8)
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$23, -80(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$9, -8(%rbp)
	movl	$4096, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	movq	448(%rbp), %rdx
	movq	456(%rbp), %rax
	addq	$2, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_gfortran_transfer_integer_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	movl	444(%rbp), %ebx
	movl	$3, 524(%rbp)
.L15:
	cmpl	%ebx, 524(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	movq	448(%rbp), %rax
	movq	456(%rbp), %rcx
	movl	524(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx,8), %r8
	movq	448(%rbp), %rax
	movq	456(%rbp), %rcx
	movl	524(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	448(%rbp), %rax
	movq	456(%rbp), %r9
	movl	524(%rbp), %edx
	movslq	%edx, %rdx
	addq	%r9, %rdx
	addq	%r8, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movq	448(%rbp), %rax
	movq	456(%rbp), %rcx
	movl	524(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jns	.L14
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$29, -80(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$10, -8(%rbp)
	movl	$4096, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	leaq	-96(%rbp), %rax
	movl	$59, %r8d
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_gfortran_transfer_character_write
	leaq	-96(%rbp), %rax
	movl	$8, %r8d
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_gfortran_transfer_integer_write
	leaq	-96(%rbp), %rax
	movl	$1, %r8d
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_gfortran_transfer_character_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$30, -80(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$7, -8(%rbp)
	movl	$4096, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	leaq	-96(%rbp), %rax
	movl	$34, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_gfortran_transfer_character_write
	movl	524(%rbp), %eax
	subl	$1, %eax
	movl	%eax, 440(%rbp)
	leaq	440(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_gfortran_transfer_integer_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	jmp	.L13
.L14:
	leaq	.LC0(%rip), %rax
	movq	%rax, -88(%rbp)
	movl	$35, -80(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$9, -8(%rbp)
	movl	$4096, -96(%rbp)
	movl	$6, -92(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write
	movq	448(%rbp), %rdx
	movq	456(%rbp), %rcx
	movl	524(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
	call	_gfortran_transfer_integer_write
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_gfortran_st_write_done
	addl	$1, 524(%rbp)
	jmp	.L15
.L16:
	nop
.L13:
	nop
	addq	$664, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movq	24(%rbp), %rdx
	movl	16(%rbp), %eax
	movl	%eax, %ecx
	call	_gfortran_set_args
	leaq	options.10.0(%rip), %rax
	movq	%rax, %rdx
	movl	$7, %ecx
	call	_gfortran_set_options
	call	MAIN__
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
options.10.0:
	.long	10308
	.long	16383
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-win32-seh-rev2, Built by MinGW-Builds project) 14.2.0"
	.def	_gfortran_st_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_character_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_write_done;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_read;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_integer;	.scl	2;	.type	32;	.endef
	.def	_gfortran_st_read_done;	.scl	2;	.type	32;	.endef
	.def	_gfortran_runtime_error;	.scl	2;	.type	32;	.endef
	.def	_gfortran_runtime_error_at;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_gfortran_os_error_at;	.scl	2;	.type	32;	.endef
	.def	_gfortran_transfer_integer_write;	.scl	2;	.type	32;	.endef
	.def	_gfortran_set_args;	.scl	2;	.type	32;	.endef
	.def	_gfortran_set_options;	.scl	2;	.type	32;	.endef
