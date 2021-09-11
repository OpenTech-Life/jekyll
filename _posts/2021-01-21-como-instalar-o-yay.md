---
title: "Como Instalar o Yay no Arch e derivados"
author: "Redson"
date: 2021-01-21 15:17 -0300
tags: [Arch Linux]
categories: [Tutorial]
image: 
  src: "https://media.discordapp.net/attachments/829041782603120650/830466319627452466/souruimnogimp.png?width=850&height=478"
  width: 850
  height: 478
---
Saudações, hoje iremos aprender um pouco sobre o Yay e sua instalação.
![Yay](https://media.discordapp.net/attachments/829041782603120650/830466319627452466/souruimnogimp.png?width=850&height=478)
## Yay? O que é?

O Yay nada mais é que um AUR Helper (Aur Helper’s são programas que facilitam a instalação de pacotes de repositório de usuários, sem necessidade de compilar os pacotes a partir do código fonte).

## Instalação

Para executar a instalação do yay, você irá precisar dos pacotes `git`, `go` e `base-devel`, sendo eles instalados a partir do seguinte comando:

```
# pacman -S git go base-devel
```

Após a execução deste comando você deve clonar o repositório, recomendo fazer isto dentro da pasta /tmp do seu Linux, pois, após a instalação os arquivos não serão mais necessários e serão automaticamente deletados na próxima inicialização.

    $ cd /tmp

    $ git clone https://aur.archlinux.org/yay.git

Após isto, você deve entrar no diretório do yay e compilar os pacotes:

`$ cd yay`

`$ makepkg -si`

Feito isso, o `yay` estará instalado, e pronto para seu uso :D.

## Exemplos de uso do yay:

Instalação de pacotes:

```
yay -S [pacote]
```

----------

Remover pacotes:

```
yay -R [pacote]
```

----------

executar a atualização de pacotes:

```
yay -Syu
```

