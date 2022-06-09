.PHONY: all clean
TOOL_PATH = tool/asm2asm/asm2asm.py
SRC_C_CODE := src/native/native.c
OUT_X86_ASM := output/native/native.s
OUT_GO_ASM := output/native_amd64.s
OUT_GO_SUBR := output/native_subr_amd64.go

asmin: 
	clang -mno-red-zone -fno-asynchronous-unwind-tables -fno-builtin -fno-exceptions -fno-rtti -fno-stack-protector -nostdlib -O3 -msse4 -mavx -DUSE_AVX=1 -S -o ${OUT_X86_ASM} ${SRC_C_CODE}

asmout: asmin
	python3 ${TOOL_PATH} ${OUT_GO_ASM} ${OUT_X86_ASM}

all: asmout
	asmfmt -w ${OUT_GO_ASM}

clean:
	rm -f ${OUT_X86_ASM} ${OUT_GO_ASM} ${OUT_GO_SUBR}