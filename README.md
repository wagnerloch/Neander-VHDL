# Neander VHDL

O Neander é uma máquina hipotética criada pelos professores da UFRGS Raul Fernando Weber e Taisy Silva Weber para fins didáticos. Em um primeiro momento, o objetivo deste trabalho é implementar o Neander usando portas lógicas básicas (NAND, NOR, NOT, LATCHES E FLIP-FLOPS) e simular esse circuito em um simulador lógico de portas para verificar o funcionamento do circuito, utilizando um pequeno programa de 10 instruções gravado na memória.

O computador Neander tem as seguintes características:

● Largura de dados e endereços de 8 bits;

● Dados representados em complemento de dois;

● 1 acumulador de 8 bits (AC);

● 1 apontador de programa de 8 bits (PC);

● 1 registrador de estado com 2 códigos de condição: negativo (N) e zero (Z).

![Diagrama Neander](resources/neander.png?raw=true "Diagrama Neander")

## Etapas do Projeto

### 1. Projeto dos Circuitos Combinacionais

a) Multiplexador 2:1 de largura de 8 bits.

b) Unidade Aritmética e Lógica (UAL): conforme a seleção da UAL (selUAL), 5 operações diferentes podem ocorrer na UAL. A largura dos dados é de 8 bits. Note que a UAL é capaz de identificar quando o resultado é ZERO (Z) ou NEGATIVO (N).

![Instruções](resources/instrucoes.png?raw=true "Instruções")

### 2. Projeto dos Circuitos Sequenciais

a) Registradores de 8-bits ACC, REM, RDM e INST(opcode) com carga paralela. Notem que todos esses registradores são iguais. Registrador NZ de 2 bits com carga paralela, onde N - (negativo) : indica sinal do resultado, 1 - resultado é negativo e 0 - resultado é positivo e Z - (zero) : indica resultado igual a zero, 1 - resultado é igual a zero e 0 - resultado é diferente de zero.

b) Contador de 8-bits PC com carga paralela e sinal de incremento.

c) Memória RAM para programa e dados. A memória será um grande banco de registradores de 16 endereços com largura de dados de 8 bits. Na memória haverão registradores, decodificadores de endereços e o seletores. Logo, neste caso teremos apenas A0, A1, A2 e A3 como entrada de endereço.

![Memória Neander](resources/memoria.png?raw=true "Memória Neander")

### 3. Projeto da Unidade de Controle

A unidade de controle é uma máquina de estados finita (FSM) que controla a leitura e escrita da memória e os elementos do Datapath conforme os sinais do decodificador de instrução e a temporização do processador. Os detalhes da organização do Neander podem ser encontrados em: http://www.inf.ufrgs.br/~fglima/organizacao_neander.pdf.

![Sinais de Controle para STA, LDA, ADD, OR, AND e NOT](resources/estados1.png?raw=true "Sinais de Controle para STA, LDA, ADD, OR, AND e NOT")
![Sinais de Controle para JMP, JN, JZ, NOT e HLT](resources/estados2.png?raw=true "Sinais de Controle para JMP, JN, JZ, NOT e HLT")

### 4. Projeto do Programa de 10 instruções

A memória projetada ao ser inicializada com o sinal de RESET deve conter um programa inicial de 10 instruções dos endereços 0000 a 1010. Os 6 endereços restantes da memória devem ser usados para dados do programa (variáveis a serem utilizadas).
