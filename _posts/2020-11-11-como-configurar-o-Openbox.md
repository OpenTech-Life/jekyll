---
title: "Como Configurar o Openbox"
date: 2020-11-11 08:19 -0300
author: Today
tags: [Linux]
categories: [Window Manager]
image:
  src: https://i.imgur.com/27yg77k.png
  width: 1365
  height: 767
---
Esta é a configuração original do nosso blog, feita para o Openbox WM, mas que está disponível para aqueles que quiserem uma configuração pronta do Openbox. Desde já deixo o aviso: Esse artigo foi escrito com o sistema operacional Arch Linux e derivados em mente, entretanto essa configuração pode ser facilmente adaptada para outras distribuições Linux. Em caso de dúvida, não tenha vergonha de perguntar no [nosso servidor do discord](https://discord.gg/rYzquvV).

[![](https://lh3.googleusercontent.com/-ESggbtHUYLo/X6xYPv0hu1I/AAAAAAAAAPI/TayfxC7FWRQAsXRnIQVyx-GfYGghol1XwCNcBGAsYHQ/w543-h318/image.png)](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#)

O tema usado é o Dracula Theme, que pode ser acessado pelo  [site](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#) [oficial](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#), mas para ajudar, eu reuni nesse repositório: o tema Dracula para o Telegram Desktop; o tema GTK do Dracula; e o Dracula para Openbox, que é um tema de gerenciador de janelas (wm)

## Programas para instalar:

Primeiramente, você deve clonar este repositório, de preferência, dentro da sua home:

`$ sudo pacman -S git`

`$ git clone https://github.com/dakidev/openbox.git`

### dmenu

Instale o DMENU, para usar como menu ao invés de utilizar o do openbox.

Dê esse comando para atualizar:

```
$ sudo pacman -Syu
```

E esse para instalar o dmenu:

```
$ sudo pacman -S dmenu
```

----------

### nitrogen

Nitrogen é um programa simples e leve para os seus wallpapers

Sua instalação é tão simples quanto a do dmenu:

```
$ sudo pacman -S nitrogen
```

----------

### polybar

A polybar é um painel muito customizável que é muito utilizado em wm’s. A instalação dela é por compilação, mas para ser mais simples vamos usar o ‘yay’. Se você não tiver ele, aqui está um  [artigo ensinando como](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#) [instalar o](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#) [yay](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#).

A polybar pode ser instalada por qualquer AUR Helper, como o pamac, mas aqui mostrarei com o yay:

```
$ yay -S polybar
```

Agora, precisamos instalar a Powerline, um ótimo pacote de fontes para a polybar. Para isso execute:

$ git clone https://github.com/powerline/fonts.git

 `$ cd fonts` 

$ ./install.sh

Agora vamos instalar outro pacote de fontes, a Siji, que vai fornecer os ícones para a barra.

```
$ yay -S siji-git

```

Polybar instalado, fontes instaladas, agora só falta configurar. Primeiro, vamos adicionar as configurações deste repositório que está dentro do diretório polybar.

Depois, crie a pasta de configurações:

```
$ mkdir -p $HOME/.config/polybar
```

Agora, vamos instalar uma barra de exemplo da polybar:

`$ install -Dm644 /usr/share/doc/polybar/config`

Teste essa barra com o seguinte comando:`$ polybar -r example`, e após admirar ela, pressione Control+C para continuarmos:


Agora, vamos alterar a configuração de exemplo para a configuração do repositório clonado. Para isso, você pode substituir a pasta dentro de /home/(seu usuário)/.config/ pelo diretório polybar do repositório clonado.

Para executar a barra, basta dar o comando:

```
$ polybar -r mybar
```

Na configuração do openbox presente  [no repositório](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#) [clonado](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#), a polybar e o nitrogen já foram adicionados para a auto-inicialização. Esse tutorial de instalação da polybar foi baseada  [nesse](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#) [tutorial](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#).

----------

### obconf

Esse programa é o que iremos usar para aplicar o Dracula Theme no nosso querido Openbox. Esse é o comando para instalá-lo:

```
$ sudo pacman -S obconf
```

----------

### lxappearance

O lxappearance é tão importante quanto o obconf. Ele é do projeto LXDE, e funciona muito bem no openbox. Resumindo, é leve e muito funcional. É com ele que nós vamos adicionar o tema GTK+.

```
$ sudo pacman -S lxappearance
```

Agora que já temos todos os programas que vamos utilizar instalados, e a polybar configurada, já podemos partir para adicionar os temas.

----------

## Configurações

Antes de adicionarmos os temas, recomendo que substitua os arquivos de configuração no diretório ‘/home/(seu_user)/.config’. Você deverá copiar o diretório ‘openbox’ do repositório clonado e substituir pelo diretório já existente em seu ‘.config’. Dessa forma, os atalhos de teclado já estarão todos configurados.

OBS.: Os atalhos de teclado ficam no arquivo ‘rc.xml’. Recomendo olhar esse arquivo e o ‘autostart’.

## Dracula Theme

O Dracula Theme é o que vai dar todo o charme do nosso Openbox. Ele tem uma cor confortável aos olhos, além der ser bonito. Deixando de enrolação, vamos logo adicionar esse tema!

Vamos começar pelo tema GTK+, que é o que vai dar a cor para todo o sistema.

Dentro do diretório ‘Dracula-theme’ do repositório clonado, você vai copiar a pasta ‘dracula-gtk-theme’ para o diretório /usr/share/themes com o comando:

```
$ sudo cp -r dracula-gtk-theme /usr/share/themes
```

Com isso, a pasta do tema já está disponível para ser aplicado. Utilizando o atalho de teclado ‘Alt+M’ o dmenu irá abrir, e podemos procurar pelo lxappearance digitando o nome. Quando o lxappearance estiver selecionado, pressione enter e o programa irá abrir. Na aba Widget, selecione o dracula-gtk-theme e clique no botão aplicar.

[![](https://lh3.googleusercontent.com/-eb6_dc3vqA0/X6xYb4s_nwI/AAAAAAAAAPM/6V4425RIJe8ilAQbmAS7J1q5g6Lbpi20QCNcBGAsYHQ/image.png)](https://www.blogger.com/blog/post/edit/3392280393749306382/8512711094296269356#)

Após aplicar o tema GTK+, podemos agora mudar o tema do nosso wm. Para isso, abra o dmenu novamente e procure pelo obconf dessa vez. Após abrir o programa, pressione o botão ‘Instalar um novo tema…’ e vá até o diretório em que está o temas Dracula do repositório. Abra a pasta wm-theme e selecione o arquivo .obt.

![](https://lh3.googleusercontent.com/-uhkLh0GSEks/X6xYnLQEy-I/AAAAAAAAAPU/B_YT-p_SZ-4FPYE8WCxsSN7R3W7k6uomwCNcBGAsYHQ/w589-h231/image.png)

![](https://lh3.googleusercontent.com/-XxL0IzLDz-s/X6xY7hFSPRI/AAAAAAAAAPk/cLXmvBb0Ue89AcnziOzNBoPZWNpVvmFpQCNcBGAsYHQ/w584-h344/image.png)

Se o tema ainda não estiver selecionado após você abrir, só clicar nele no obconf:

![](https://lh3.googleusercontent.com/-9lex4PXDRbQ/X6xZA4eHHYI/AAAAAAAAAPs/4-S391N38zM0cwwkJa5T9b5pY77CyUasQCNcBGAsYHQ/w585-h326/image.png)

----------

E é assim que terminamos nossa configuração do openbox! Em breve teremos mais artigos sobre este belo Floating Window Manager. Até mais!
