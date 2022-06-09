	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_sum                    ## -- Begin function sum
	.p2align	4, 0x90
_sum:                                   ## @sum
## %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	(%rdi,%rsi), %rax
	popq	%rbp
	retq
                                        ## -- End function
.subsections_via_symbols
