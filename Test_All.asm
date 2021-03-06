####################################
# 16位多周期CPU Logsim仿真测试程序 #
# 任务：综合测试 计算1+2+3+...+N   #
# 可用寄存器，t0,t1,t2,t3          #
# Sp：0x007f N:0xffff              #
# 运算结果：0xfffe                 #                       
# Rock 2015-12-18                  #
####################################

andi $t0,$t0,-1 #set 0,作为计数器 #30ff
andi $t2,$t2,-1 #set 0            #3aff
lw $t2,0xff($t2)                  #4aff
addi $t2,$t2,1                    #2a01
ori $t0,$t0,1 #初始化计数器为1    #1001
andi $t1,$t0,0 #作为累加器，初始为0 #3100
LOOP：
    add $t1,$t1,$t0 # #0442
    addi $t0,$t0,1 #自增 #2001
    beq $t0,$t2,EXIT #7201 (PC+1)
    j LOOP       #6006
EXIT:
andi $t0,$t0,0 #3000
sw $t1,0xfe($t0) #51fe














