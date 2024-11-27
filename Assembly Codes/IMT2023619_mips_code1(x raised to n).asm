# t0 = i , s1 = ans , $s2 = x, $s0 = n
addi $t4, $0, 0x1000
addi $t5, $0, 10  # t5 = x
sw $t5, 0($t4)
lw $s2, 0($t4)
#addi $s2,$0,2
addi $s1,$0,1
addi $t0,$0,0
addi $s0,$0,5
loop:
	slt $t1,$t0,$s0
	beq $0,$t1,done
	mult $s1, $s2
	mflo $s1
	addi $t0,$t0,1
	j loop
done:
	addi $t6, $0, 0x1004
	sw $s1, 0($t6)
	addi $v0,$0, 10
	syscall
