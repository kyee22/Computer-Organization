ori $1,$0,0x1234
add $2,$1,$0

ori $9,$9,0x1230
sub $10,$1,$9
add $10,$10,$10
add $10,$10,$10

lui $1,0x1234

ori $31,$0,0xffff

sw $31,0($10)

sub $31,$31,$1



beq $1,$2,yes1
	sw $31,-4($10)
	sw $31,-8($10)
	sw $31,-12($10)
yes1:
	sw $31,-16($10)
	
lui $2,0x1234
beq $1,$2,yes2
	sw $31,4($10)
	sw $31,8($10)
	sw $31,12($10)
	sw $31,16($10)
yes2:
	sw $31,24($10)
	
ori $20,$0,0
ori $21,$0,1
back:
	add $21,$21,$21
	sub $2,$2,$21
	
	
	beq $1,$2,back