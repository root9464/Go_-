TEXT ·initList(SB), $8-16
  MOVQ data+0(FP), AX          
  MOVQ $type·main·Node(SB), CX 
  MOVQ CX, 0(SP)               
  CALL runtime·newobject(SB)   
  MOVQ 8(SP), BX               
  MOVQ AX, 0(BX)               
  MOVQ $0, 8(BX)               
  MOVQ $0, 16(BX)              
  MOVQ BX, ret+8(FP)              
  ADDQ $8, SP                  
  RET                         
  