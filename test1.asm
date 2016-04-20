sub $t0,$t0,$t0  # reset to 0
sub $t3,$t3,$t3  # reset to 0,avoid data hazard
lw $t1,0xff($t0) # get param A
lw $t2,0xfe($t0) #get param B

#sub $t3,$t3,$t3  #avoid data hazard
#sub $t3,$t3,$t3  #avoid data hazard
#sub $t3,$t3,$t3  #avoid data hazard

add $t3,$t1,$t2 

#sub $t4,$t4,$t4  #avoid data hazard
#sub $t4,$t4,$t4  #avoid data hazard

sw $t3,0xfd($t0)
sub $t3,$t1,$t2

#sub $t4,$t4,$t4  #avoid data hazard

sw $t3,0xfc($t0) 
and $t3,$t1,$t2 

#sub $t4,$t4,$t4  #avoid data hazard

sw $t3,0xfb($t0) 
or $t3,$t1,$t2 

#sub $t4,$t4,$t4  #avoid data hazard

sw $t3,0xfa($t0)

slt $t4,$t4,$t3  # set t4=1
sub $t5,$t5,$t5 #set t5=0
LOOP:
		#sub $t8,$t8,$t8  #avoid data hazard
		#sub $t8,$t8,$t8  #avoid data hazard
	
	add $t5,$t5,$t4  #t5++
	
		#sub $t8,$t8,$t8  #avoid data hazard
		#sub $t8,$t8,$t8  #avoid data hazard
	
	slt $t6,$t5,$t3 # if $t5<303($t3) set $t6=1
	
		#sub $t8,$t8,$t8  #avoid data hazard
		#sub $t8,$t8,$t8  #avoid data hazard
	
	beq $t6,$t4,LOOP

sw $t5,0xf9($t0)




	
