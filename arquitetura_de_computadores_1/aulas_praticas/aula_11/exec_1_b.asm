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
	.eqv	print_char,11
	.align	2			# Neste caso não era obrigatório estar aqui porque é grantido que está alinhado

stg:	.word 72343
	.asciiz "Napoleão"
	.space	9			# Garantir que o last_name está no offset 22
	.asciiz "Bonaparte"
	.space	5			# Garantir que o grade está no offset 40
	.float	5.1

str1:	.asciiz	"\nN. mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
str4:	.asciiz	"\nPrimeiro nome: "
str5:	.asciiz	"\nSegundo nome: "

	.text
	.globl main
main:
	la	$t0,stg			# pôr o endereço inicial da estrutura em $t0



	la	$a0,str1
	li	$v0,print_string
	syscall				# print("\nN. mec: ")
	li	$v0,read_int
	syscall
	sw	$v0,0($t0)
	la	$a0,str4
	li	$v0,print_string
	syscall				# print("\nPrimeiro nome: ")
	li	$v0,read_string
	addiu	$a0,$t0,4
	li	$a1,17
	syscall
	la	$a0,str5
	li	$v0,print_string
	syscall				# print("\nSegundo nome: ")
	li	$v0,read_string
	addiu	$a0,$t0,22
	li	$a1,15
	syscall
	la	$a0,str3
	li	$v0,print_string
	syscall				# print("\Nota: ")
	li	$v0,read_float
	syscall
	s.s	$f0,40($t0)



	la	$a0,str1
	li	$v0,print_string
	syscall				# print("\nN. mec: ")
	lw	$a0,0($t0)		# $t0 = stg.id_number
	li	$v0,print_intu10
	syscall				# print(stg.id_number)
	
	la	$a0,str2
	li	$v0,print_string
	syscall				# print("\nNome: ")
	addiu	$a0,$t0,22
	li	$v0,4
	syscall				# print(stg.last_name)
	li	$a0,','
	li	$v0,print_char
	syscall				# print(',')
	addiu	$a0,$t0,4		# $a0 = &stg + 4
	li	$v0,4
	syscall				# print(stg.first_name)
	
	la	$a0,str3
	li	$v0,print_string
	syscall				# print("\Nota: ")
	l.s	$f12,40($t0)		# $f12 = stg.grade
	li	$v0,print_float
	syscall
	
	jr	$ra
