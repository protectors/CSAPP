	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_remdiv                 ## -- Begin function remdiv
	.p2align	4, 0x90
_remdiv:                                ## @remdiv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	movq	%rax, (%r8)
	movq	%rdx, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
