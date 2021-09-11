---
title: "Como instalar o Batocera Plus em dual boot com Linux"
date: 2021-05-09 11:42 -0300
author: Vinícius Gobbi
tags: ["Batocera"]
categories: [Tutorial]
image: 
  src: https://telegra.ph/file/fddb90e408c9521113c9e.png
  width: 676
  height: 380
---

# Requisitos:
- Um PC ou Notebook com linux
- GRUB2 instalado
- Um app para gerenciar partições do HD
- Um app para extrair arquivos img

# O que é Batocera Linux?

BATOCERA LINUX nada mais é que uma front-end de emuladores retrô para computador. Dentre eles está o famoso Retroarch.

## Qual a diferença do Batocera Linux para o Batocera Plus?

O Batocera Plus é uma versão modificada do Batocera, que adiciona diversos recursos extras ao sistema, como correções de erros e personalizações.

# Começando
Primeiro de tudo: você deverá criar duas partições, uma seguida da outra. A primeira deve estar em FAT32, e é onde vai ficar os arquivos de boot do sistema. Já a segunda, pode estar em NTFS ou EXT4 (recomendo EXT4 pra evitar problemas com fragmentação) que será onde vão ficar as ROMS dos jogos. No caso eu criei duas partições, uma de aproximadamente 4GB para boot, e outra de aproximadamente 50 Gb para as roms.

![](https://cdn.discordapp.com/attachments/806642907263139850/839921609115566110/2021-05-06_14-48.png)

# Extraindo arquivo .img

Você pode baixar o arquivo .img do Batocera Plus através do seguinte link:

>https://drive.google.com/file/d/1qoSi3kvs891zu-WzQ5fyXzLkw1lj2Crg/view

Após o download do imagem, você deve extrair a mesma com algum programa de sua escolha. Feito isso você deve copiar a pasta a boot para a partição que você nomeou como Batocera.

Deve ficar algo parecido com isso:

![](https://cdn.discordapp.com/attachments/806642907263139850/839925560741855282/unknown.png)

# Configurando o GRUB:
Para adicionar uma nova entrada no GRUB2, você pode baixar a ferramenta GRUB Customizer, que é uma aplicação intuitiva feita justamente para essa customização do GRUB, como o próprio nome indica.

**Atenção você não deve apagar nenhuma entrada já existente no grub, pois isso pode quebrar o boot do seu sistema**

Para adicionar uma entrada para o GRUB, utilizando o GRUB Customizer, você deve clicar na folha branca com um um símbolo de `+`. Lá será possível colocar um nome de sua preferência, mas dê atenção a um que seja fácil pra distinguir das outras entradas.

Em tipo, coloque como outro.

Na tela q aparecer abaixo disso cole essa entrada:

    insmod fat
    search --no-floppy --fs-uuid --set=root C0E5-0CC8
    linux /boot/linux label=BATOCERA console=tty3 quiet loglevel=0 vt.global_cursor_default=0
    initrd /boot/initrd.gz

Agora você deve salvar as modificações. Uma vez que elas estejam salvas, você pode reiniciar seu computador e entrar no Batocera Plus através do GRUB. Caso ocorra algum erro, verifique se colocou o nome da partição corretamente como Batocera obrigatoriamente em maiúsculo.

# Fim!
Parabéns, agora você só precisa colocar as ROMS nas pastas que o Batocera Plus criar por conta própria na partição. Aproveitando que você chegou ao fim desse artigo, que tal entrar no [Telegram do OpenTech Life](https://t.me/opentechlife)? Até a próxima 👋.
