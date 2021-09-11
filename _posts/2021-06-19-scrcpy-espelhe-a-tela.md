---
title: Scrcpy, Espelhe Seu Celular!
date: 2021-06-19 21:28 -0300
author: Vinicius Cavati
tags: [Android]
image:
  src: https://cdn.discordapp.com/attachments/806642907263139850/855947361644969994/iu.png
  width: 474
  height: 266
---

Espelhar a tela do seu celular pode ser um dos maiores desafios quando você quer fazer gameplays, principalmente quando estamos falando de linux, já que pra Windows possuem algumas ferramentas populares. Apesar de tudo, hoje você vai aprender a usar o scrcpy! Uma ferramenta simples que permite você espelhar a tela do seu celular Android sem a necessidade de baixar nenhum app no dispositivo móvel!

## Como Instalar o SCRCPY

O scrcpy está disponivel para as mais variáveis plataformas, possuindo até uma versão em [snap](https://snapcraft.io/scrcpy). Você pode conferir a disponibilidade para sua distro no [GitHub do projeto](https://github.com/Genymobile/scrcpy). Como eu uso Arch Linux, vou instalar pelo [AUR](https://aur.archlinux.org/packages/scrcpy/) (Arch User Repository) usando o [yay](https://opentechlife.tk/posts/como-instalar-o-yay) usando o comando:

```
$ yay -S scrcpy
```

## Como Usar o SCRCPY

Para acionar o scrcpy, basta abrir um terminal e digitar:
```
$ scrcpy
```
Assim ele já vai estar funcionando, mas você pode usar alguns parâmetros, dentre eles os mais comuns são:

```
scrcpy --fullscreen 
```
Que inicia ele em tela cheia

```
scrcpy --window-borderless
```
Inicia uma janela sem bordas ( por consequência, remove as opções de: fechar, minimizar, e maximizar a janela).

## Vamos facilitar as coisas!

Usar o scrcpy é bem simples, mas quer tornar ele mais simples ainda? O usuário do Github [hayukimori](https://github.com/hayukimori) criou uma ferramenta para tornar seu uso mais simples. O projeto conta com uma interface simples e fácil de entender e usa como linguagem principal o [Python](https://www.python.org/), a mesma utilizada pelo scrcpy.

Veja abaixo uma foto do app desenvolvido:

![](https://telegra.ph/file/88aecc37f27aaa8dd6421.png)

Caso tenha ficado interessado no projeto, ele é encontrado [aqui](https://github.com/hayukimori/scrcpy-pyqtgui), sendo totalmente gratuito e de código aberto!

# Quer ficar por dentro?

Gostou do conteúdo? Passa no nosso [canal do Telegram](https://t.me/opentechlife), e além de ser notificado a cada novo post, você pode entrar no chat da comunidade seguindo as intruções da mensagem fixada! Esperamos por você!
