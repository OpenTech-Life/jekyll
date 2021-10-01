---
title: "Entenda Tudo Sobre o HD! - Parte 1"
date: 2021-09-30 21:27 -0300
author: Pedro Portales
tags: ["Entenda"]
image: 
  src: https://telegra.ph/file/77e45b917fca964b298af.png
  width: 1010
  height: 418
---

O HD, também conhecido como Hard Disk, é o dispositivo de armazenamento de dados mais usado nos computadores. Nele, é possível guardar não só seus arquivos como também todos os dados do seu sistema operacional, independente de qual for! Sem uma unidade de armazenamento, é impossível usar o seu computador! Aqui você vai aprender sobre como o HD funciona, a formatação do disco, e sistemas de arquivos.

# Funcionamento do Disco Rígido
O HD é uma peça do computador muito importante, e tem uma complexidade em sua construção por ser um aparelho de armazenamento magnético. A seguir, vamos entender sobre o **interior do HD**, alguns **conceitos importantes**, a **geometria lógica e física** do HD, além do **cálculo da capacidade**.

## Interior do HD
Dentro do HD, temos 3 peças, nas quais todas são muito importantes para o funcionamento dessa tão importante parte de nosso computador pessoal. Dentre elas, nós temos:

- **Discos**: O disco é o meio magnético onde nossos arquivos, dados do sistema, e tudo o mais, são gravados. Normalmente eles são feitos de alumínio coberto por um material magnético.

- **Cabeças**: Dentro de um disco rígido, encontramos vários discos, sendo que cada um deles possui duas faces, e cada face é uma superfície magnética. Pode parecer meio confuso, mas tente essa analogia: Você tem um bloco de papel que acabou de comprar do mercado, todo papel tem frente e verso com uma superfície onde você pode desenhar usando lápis. Sendo assim, pense no papel como os discos, a superfície do papel como a superfície magnética, e o lápis como as cabeças.

- **Braço**: Esse daqui é um dispositivo mecânico, ele serve para movimentar as cabeças de leitura e gravação pela superfície do disco. Entendendo a analogia dita anteriormente, fica bem fácil de entender a partir dela: você precisa de seu braço para mover o lápis da forma que precisa, para assim fazer um desenho. O braço do HD fará o mesmo trabalho com as cabeças!

## Conceitos Importantes
Antes de entendermos a história do HD, é importante conhecer alguns conceitos, são eles:

- **Superfície**: Cada face de um disco é uma superfície magnética, usada para gravação e leitura de dados.

- **Trilhas**: Cada superfície é dividida magneticamente em trilhas e setores. As trilhas são círculos concêntricos, igualmente espaçados.

- **Setores**: Assim como cada face de um disco é magneticamente dividida em trilhas, cada trilha é magneticamente dividida em setores.

- **Cilindros**: Este é um conceito muito importante na terminologia de discos rígidos. Um cilindro é um grupo de trilhas de mesmo número, em superfícies diferentes.

## Geometria Lógica e Física
Os discos rígidos modernos têm uma organização bastante parecida com a dos discos mais antigos, os quais têm menor capacidade de armazenamento. A tabela a seguir mostra algumas características de discos rígidos antigos e modernos:

![](https://telegra.ph/file/be855ed71253de1105236.png)

### Cálculo da Capacidade
Quando programamos no CMOS Setup o número de cabeças, cilindros e setores de um disco rígido, esses parâmetros são chamados de geometria lógica do disco rígido, e não correspondem ao que realmente existe no seu interior.

Um certo disco rígido tenha no CMOS Setup, os seguintes parâmetros:
- 2180 cilindros
- 255 cabeças
- 63 setores

A fórmula é a seguinte:
```
Ci * Ca * Set
```
Sendo `Ci` os cilindros, `Ca` as cabeças, e `Set` os setores. O cálculo então fica assim:
```
2180 * 255 * 63 = 17.931.110.400 bytes
```
Ou seja, um HD com as especificações citadas acima tem quase 18GB (Gigabyte) de capacidade de armazenamento. Bem simples, não é?

# Formatação do Disco
A formatação de um disco magnético é realizada para que o sistema operacional seja capaz de gravar e ler dados no disco, criando assim estruturas que permitam gravar os dados de maneira organizada e recuperá-los mais tarde.

Tipos de Formatação:
- Formatação Física
- Formatação Lógica

## Formatação Física
A formatação física é feita na fábrica ao final do processo de fabricação, que consiste em dividir o disco virgem em trilhas, setores, cilindros e isola os badblocks (danos no HD). Estas marcações funcionam como as faixas de uma estrada, permitindo à
cabeça de leitura saber em que parte do disco está, e onde ela deve gravar dados.

A formatação física é feita apenas uma vez, e não pode ser desfeita ou refeita através de software. Porém, para que este disco possa ser reconhecido e utilizado pelo sistema operacional, é necessária uma nova formatação, chamada de formatação lógica;

## Formatação Lógica
A formatação lógica não altera a estrutura física do disco rígido, e pode ser desfeita e refeita quantas vezes for preciso, através do comando format do dos, por exemplo. O processo de formatação é quase automático; basta executar o programa formatador que é fornecido junto com o sistema operacional.

# Sistema de Arquivos
É um conjunto de estruturas lógicas e de rotinas, que permitem ao sistema operacional controlar o acesso ao disco rígido. Em muitos casos, diferentes sistemas operacionais usam diferentes sistemas de arquivos, como por exemplo: o Windows usa um sistema de arquivos diferente do usado no MacOS. Já em sistemas operacionais Linux, é comum que as distribuições usem sistemas de arquivos ext4, por exemplo.

Conforme cresce a capacidade dos discos e aumenta o volume de arquivos e acessos, esta tarefa torna-se mais e mais complicada, exigindo o uso de sistemas de arquivos cada vez mais complexos e robustos; Já que é comum sistemas operacionais usarem diferentes sistemas de arquivos, podemos perceber que existem diversos sistemas de arquivos diferentes, principalmente no mundo Linux, onde você tem a possibilidade de escolher qual usar em uma imensa diversidade.

## Apple Macintosh
- HFS

## Sistemas BSD, Sistemas Linux, Solaris, etc.
- EXT2
- EXT3
- EXT4
- SWAP
- Reiser
- HPFS
- JFS
- XFS
- ZFS
- btrfs

## IBM (AIX, OS/2)
- JFS (AIX Version 3.1 ou superior, OS/2 Warp)
- HPFS - High Performance File System

## MS-DOS/Microsoft Windows
- FAT 12 - Microsoft BASIC Disk - MSDOS 4.0
- FAT 16 - DOS 4.0 ou superior/Windows 1.X ou superior(1.x,2.x,3.x,95,98,ME,2000, XP,...)
- FAT 32 - MS-DOS 7.1 e 8.0/Windows 95(versão OSR2!),ou superior(95 ,98, ME, NT, 2000, XP...)
- NTFS - Windows NT ou superior (NT, 2000, XP, 2003 Server,...)

# Continua no Próximo Episódio...
Para o artigo não ficar muito grande, decidimos separar em partes... É muito conteúdo! Mas não se preocupem, logo em breve estaremos lançando a parte 2! Com isto, chegamos ao fim de mais um artigo, sinta-se livre para falar o que achou sobre aqui embaixo nos comentários, e se ainda não tiver feito, entre na nossa  [comunidade do Telegram](https://t.me/opentechlife_comm)  ou no nosso [canal](https://t.me/opentechlife) para receber notificações de futuras postagens e vídeos. Até mais!
