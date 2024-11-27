addi $t4, $0, 0x1001
addi $t5, $0, 12  # t5 = n+1 here if you want to find fib(n) write n+1
sw $t5, 0($t4)
lw $t0, 0($t4)
addi $s0,$0,0 #a = 0
addi $s1,$0,1 #b = 1
addi $s2,$0,2 #int i in the for loop
loop:
	beq $s2,$t0,done
	add $s3,$s0,$s1   #c = a + b
	addi $s0,$s1,0    #a = b
	addi $s1,$s3,0    #b = c
	addi $s2,$s2,1
	j loop
done:
	addi $t6,$0,0x1002
	sw $s3,0($t6)
	addi $v0,$0,10
	syscall
