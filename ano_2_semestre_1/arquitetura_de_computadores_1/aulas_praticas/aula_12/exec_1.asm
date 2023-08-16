# Estrutura pedida no exercício

# typedef struct {
#   unsigned int id_number;
#   char first_name[18];
#   char last_name[15];
#   float grade;
# } student;

# Tabela de Alinhamento

# Align | Size | Offset
#  4    |   4  |   0
#  1    |  18  |   4
#  1    |  15  |  22
#  4    |   4  | 37->40
# ---------------------
#  4    |  44  | ------

	.data
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv 	print_intu10,36
	.eqv	read_int,5
	.eqv	print_float,2
	.eqv	read_float,6
	.eqv	MAX_STUDENTS,4

starr:	.space 176 # Reservar 4* 44 para o array de estruturas
media:	.space 4

	.text
	.globl main
main:
	addiu	$sp,$sp,-4	# read_data
	sw	$ra,0($sp)	# read_data
	
	la	$a0,starr	# read_data
	li	$a1,MAX_STUDENTS# read_data
	jal	read_data	# read_data
	
	la	$a0,starr	# max
	li	$a1,MAX_STUDENTS# max
	la	$a2,media	# max
	jal	max
	
	lw	$ra,0($sp)	# read_data
	addiu	$sp,$sp,4	# read_data
	jr	$ra





	.data
fk1:	.float	-20.0
	.text
max:
	jr	$ra
	
	
	
	
	
	.data
str1:	.asciiz	"N. mec:"
str2:	.asciiz	"Primeiro nome:"
str3:	.asciiz	"Último nome:"
str4:	.asciiz	"Nota:"
	.text
read_data:
	li	$t2,0
	move	$t0,$a0
	move	$t1,$a1
for:
	bge	$t2,$t1,endfor
	# Endereco do primeiro campo do estudante
	mul	$t3,$t2,44
	addu	$t3,$t0,$t3
	# Obter numero mecanografico
	la	$a0,str1
	li	$v0,print_string
	syscall
	li	$v0,read_int
	syscall
	sw	$v0,0($t3)
	# Obter primeiro nome
	la	$a0,str2
	li	$v0,print_string
	syscall
	li	$v0,read_string
	addiu	$a0,$t3,4
	li	$a1,17
	syscall
	# Obter segundo nome
	la	$a0,str3
	li	$v0,print_string
	syscall
	li	$v0,read_string
	addiu	$a0,$t3,22
	li	$a1,15
	syscall
	# Obter nota
	la	$a0,str4
	li	$v0,print_string
	syscall
	li	$v0,read_float
	syscall
	s.s	$f0,40($t3)
	# Proximo elemento
	addiu	$t2,$t2,1
	j	for
endfor:
	jr	$ra