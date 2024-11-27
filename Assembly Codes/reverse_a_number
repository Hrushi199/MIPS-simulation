#t0 = 0, t1 = r, s0 = 10
addi $t4,$0,0x1000
addi $t5,$0,123
sw $t5, 0($t4)
lw $t0,0($t4)
#addi $t0, $0, 123  #here i have written 123 you can give any number of your choice 
addi $t1, $0, 0			#t1 contains the remainder
addi $s0, $0, 10	#s0 = 10
loop:
	beq $t0, $0, done	
	mult $t1, $s0
	mflo $t1		#t1 = r*10
	div $t0, $s0
	mfhi $t2		#t2 = n%10
	add $t1, $t1, $t2	#r = r*10 + n%10
	div $t0, $s0		#n = n/10
	mflo $t0
	j loop
done:
	addi $t6,$0,0x1004
	sw $t1,0($t6)
	addi $v0,$0,10
	syscall
