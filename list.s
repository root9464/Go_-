#include "textflag.h"

#define Node_data 0
#define Node_next 8
#define Node_prev 16

DATA type·main·Node(SB)/8, $0
GLOBL type·main·Node(SB), RODATA, $8

TEXT ·initList(SB), NOSPLIT, $8-16
  MOVQ data+0(FP), DX
  MOVQ $type·main·Node(SB), CX
  MOVQ CX, 0(SP)
  CALL runtime·newobject(SB)
  MOVQ AX, BX
  MOVQ DX, 0(BX)
  MOVQ $0, 8(BX)
  MOVQ $0, 16(BX)
  MOVQ BX, ret+8(FP)
  ADDQ $8, SP
  RET
