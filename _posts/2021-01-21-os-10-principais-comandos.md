---
title: "Os 10 Principais Comandos para iniciantes no Linux"
date: 2021-01-21 14:58 -0300
author: Pedro Portales
tags: [Iniciantes]
image: 
  src: "https://media.discordapp.net/attachments/776201664902201346/801910115086630912/terminal-pronto.png?width=928&height=481"
  width: 928
  height: 481
---
O Linux é muito mais do que um Kernel. Ele é um local de aprendizado, muito fácil de utilizar e muito seguro. Em Sistemas Operacionais Linux, podemos realizar diversas atividades. Diversas dessas atividades são feitas pelo Terminal disponível nessas distribuições. Calma, o terminal não é difícil de ser utilizado, com o tempo você vai pegando o jeito e se acostumando com ele.

Mas… o número de comandos é **MUITO** grande! E sabendo utilizar o terminal, a lista de coisas que pode fazer no linux só aumenta. Então, com que comandos começar?
É recomendado começar pelos comandos mais importantes, que são muito utilizados por programadores e por usuários experientes do Linux.

![](https://media.discordapp.net/attachments/776201664902201346/801910115086630912/terminal-pronto.png?width=928&height=481)
### 1. `man` - É usado para acessar as páginas de manual
Ex:

```
$ man ls
```

Após o exemplo ser digitado no terminal, irá aparecer uma página de manual, sobre o comando escrito após o “man”, que no caso foi o “ls”. Para voltar para a tela comum do terminal é somente clicar na tecla “q”. Com esse comando, podemos ver o manual de diversos dos comandos nativos do nosso querido mundo do pinguim.

### 2. `ls` - Listar o conteúdo de um diretório

Espera, esse comando não apareceu no manual mostrado no comando anterior? Sim! Nós utilizamos o `ls` para listar os arquivos e pastas que estão dentro do diretório atual. Basta digitar o comando `ls` e pressionar a tecla `Enter`. Ele também pode listar o conteúdo de qualquer diretório, bastando passar o caminho completo como parâmetro.

### 3. `clear`- Limpa a Tela do Terminal

Não tem muito o que falar desse comando, a função dele é somente limpar a tela. Mas para não precisar digitar e acabar economizando um pouco de tempo, você pode usar o atalho de teclado `Ctrl + L`, e sua tela estará limpa da mesma forma.

### 4. `cp` - Copia arquivos de um diretória para outro

Com o `cp`, podemos passar dois caminhos como parâmetro:

```
$ cp /local/onde/você/guardou/o/arquivo /local/onde/você/salvará/a/copia
```

### 5. `mv` - Mover arquivos de um diretório para outro ou renomear arquivos e diretórios

O `mv` pode ser usado tanto para mover arquivos ou diretórios, quanto para renomear arquivos ou diretórios.

Para mover:

```
$ mv /diretório/de/origem /diretório/de/destino
```

Para renomear:

```
$ mv /diretorio/de/origem /diretorio/de/origem/e/novo/nome
```

### 6. `rm` - Remover arquivos ou diretórios (excluir)

Não tem muito o que falar dele, a não ser pra você tomar muito cuidado… Você pode usá-lo assim:

```
$ rm /arquivo/de/origem
```

Se for deletar uma pasta, o comando muda um pouco:

```
$ rm -r /diretório/de/origem
```

**AVISO: Nunca dê o comando `rm -rf /*`. Ele irá apagar todos os dados do seu sistema sem exceção. e ele não irá mais funcionar**

### 7. `pwd` - Mostrar o diretório atual

O comando `pwd` mostra o diretório atual:
![](https://media.discordapp.net/attachments/776201664902201346/801911022826815568/unknown.png)
### 8. `cd` - Mudar de diretório

Esse é um comando bem simples, mas muito utilizado. Com o `cd`, você pode navegar entre os diretórios:

```
$ cd /diretório/de/destino
```

### 9. touch - Criar arquivos de texto vazios (ou alterar seu timestamp)

Para usar esse comando, basta passar o nome do arquivo a ser criado como parâmetro:

```
$ touch cafe_com_terminal_melhor_blog
```
![](https://media.discordapp.net/attachments/776201664902201346/801913590625468486/unknown.png?width=1025&height=166)
Nesse caso, o nome do arquivo criado foi o memorando, mas pode ser qualquer um, vale ressaltar, que a partir deste comando, você pode criar arquivos com qualquer extensão, ex: `arquivo.md`, `arquivo.yml`, `arquivo.js` entre outros...

### 10. nano / vi - Editores de texto no terminal

O `nano` e o `vi` são editores de texto utilizados via terminal. Para iniciantes eu recomendo o `nano`, mas nada te impede de usar o vi. Para usar o nano, basta passar o nome do arquivo como parâmetro e ele irá abrir o editor

```
$ nano memorando
```
![](https://media.discordapp.net/attachments/776201664902201346/801913901393379329/unknown.png?width=923&height=480)

E assim, chegamos ao fim de mais um artigo! Espero que vocês tenham gostado desse. Se quiser acessar o nosso [canal e grupo do telegram](https://t.me/opentechlife), ele está aberto para todos! Bons códigos a todos, e até mais!


