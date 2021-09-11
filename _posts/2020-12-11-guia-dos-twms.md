---
title: "O Guia dos Tiling Window Managers (TWMs)"
date: 2020-12-11 08:10 -0300
author: Today
tags: [Intermediário]
image:
  src: https://lh3.googleusercontent.com/-ESggbtHUYLo/X6xYPv0hu1I/AAAAAAAAAPI/TayfxC7FWRQAsXRnIQVyx-GfYGghol1XwCNcBGAsYHQ/w543-h318/image.png
  width: 543
  height: 318
---
 Esse guia é um resumo sobre Tiling Window Managers

## O que é um Window Manager (WM)

## ![Openbox](https://lh3.googleusercontent.com/-ESggbtHUYLo/X6xYPv0hu1I/AAAAAAAAAPI/TayfxC7FWRQAsXRnIQVyx-GfYGghol1XwCNcBGAsYHQ/w543-h318/image.png)

Um window manager como o nome diz é um gerenciador de janelas, em sua essência ele nada faz alem de permitir que o usuário veja as janelas do desktop, toda interface utiliza um window manager, entretanto a maior parte das pessoas usa um window manager em conjunto com um Desktop Enviroment (DE).

Um desktop environment nada mais é do que todo um conjunto de coisas atreladas a interface e usabilidade do desktop, nele podem estar contidos: window manager, terminal próprio, editor de texto, compositor, gerenciador de arquivos, notificações, central de configurações e outras coisas. Apesar de o comum ser o uso de um desktop environment algumas pessoas rodam window managers sozinhos, sem a necessidade usar uma DE.

## O que é um Tiling Window Manager (TWM)

## ![Xmonad](https://i.imgur.com/27yg77k.png)

Um tiling window manager nada mais é do que um WM que se divide e preenche a tela conforme janelas são abertas, não existe nenhuma DE famosa que use um tiling window manager, entretanto existem muitas boas opções de TWMs para serem rodados sem uma DE em conjunto. Alguns dos tiling window manager mais famosos são:

-   **I3 WM**
    
    ![I3](https://i3wm.org/screenshots/i3-9.png)
    
-   **Awesome WM**
    
    ![Awesome](https://awesomewm.org/images/screen.png)
    
    **BSPWM**
    
    ![BSPWM](https://cdn.discordapp.com/attachments/735050462717542411/776466000639819804/unknown.png)
    
-   **Xmonad**
    
    ![XMONAD](https://cdn.discordapp.com/attachments/776201664902201346/776473438080598067/unknown.png)
    
-   **Qtile**
    
    ![Qtile](https://cdn.discordapp.com/attachments/776201664902201346/776467111794442270/demo.png)
    
-   **Spectrwm**
    
    ![Spectrwm](https://raw.githubusercontent.com/wiki/conformal/spectrwm/Scrotwm1.png)
    

## Quais as vantagens ?

#### As principais vantagens de um WM comparado a uma DE são:

-   Menor consumo de recursos - Isso se deve ao fato de que as DE instalar muitas coisas que o usuário não necessariamente usa então quando comparamos uma DE com um WM costumamos ver uma economia muito maior em uso de espaço, processador e memoria Ram.
    
-   Customização - De maneira geral WMs te permitem muito mais flexibilidade tanto na customização deles em si quanto na escolha dos programas e ferramentas que normalmente viriam embarcadas com uma DE.
    

#### As principais vantagens de um TWM comparado a um WM tradicional são:

-   Melhor fluxo de trabalho - Muitos defendem que a forma de um TWM funcionar da ao usuário um ganho muito grande de produtividade dentro do desktop, isso se deve ao fato de que um TWM não esconde janelas ele as divide dentro de cada workspace, assim o usuario nao perde tempo arrumando as janelas e nem procurando uma janela específica em uma pilha de janelas.
    
-   Focado no teclado - Diferentemente de uma DE ou WM comum os TWMs tem um foco muito grande no uso do teclado como controle principal do desktop. - Espaço aproveitado - Pela forma com que os TWMs dividem o desktop não existe espaço perdido na, enquanto houver pelo menos uma janela todo o espaço útil do monitor será ocupado.
    
-   Múltiplos monitores e áreas de trabalho (workspaces) - Os TWMs de maneira geral são muito otimizados para o uso de 2 monitores ou + trazendo assim vantagens colossais para esses usuários, para ajudar ainda mais os TWMs as workspaces são peça chave tanto no uso de múltiplos monitores como também para quem tem apenas 1 monitor.
    

## Quais as desvantagens

#### A principal desvantagem de um WM comparado a uma DE é:

-   Configuração mais difícil e demorada - Os WMs no geral tem uma configuração muito mais difícil do que uma DE, isso pois a configuração costuma ser feita por um arquivo de texto ou diretamente no código fonte, e não é incomum usar linguagens de programação pouco conhecidas e/ou complicadas em sua configuração, um exemplo seria o Xmonad que é escrito e configurado em Haskell. Além disso um WM requer alguma configuração para ficar realmente funcional, a ideia aqui não é usá-lo “out-of-the-box”.

#### A principal desvantagem de um TWM comparado a um WM convencional é:

-   Workflow - Apesar de muitas pessoas amarem o workflow dos TWMs existem também os que não se adaptam a essa forma nova de usar o desktop, e optam por maneiras mais convencionais de uso.

## Escolhendo o ponto de partida e o ponto de chegada

Minha recomendação é definir um TWM simples como partida e outro mais complexo como ponto de chegada, para isso primeiro devemos saber dos dois tipos de TWM:

#### Manual (tambem chamado de TREE BASED)  ![MANUAL](https://colekillian.com/posts/making-i3-the-best-window-manager-with-i3-swallow-and-i3-layout-manager/before.gif)

Esse tipo de TWM consiste em deixar a cargo do usuario definir onde a proxima janela vai estar e qual o tamanho da mesma.

#### Dinâmico (tambem chamado de LIST BASED)  ![MANUAL](https://i.stack.imgur.com/CAuvS.gif)

Esses TWMs sao baseados em layouts que auto-organizam as janelas.

Sabendo o seu tipo favorito você deve analisar algumas coisas para escolher seu ponto de partida, a recomendação é pegar um TWM que seja amigável a novos usuários, que tenha um layout de sua preferência se for Dinâmico e caso você tenha familiaridade com alguma linguagem de programação isso pode te dar uma grande vantagem na hora da configuração, os TWMs mais recomendados para começar na minha opinião são esses abaixo, pesquise sobre cada um para tomar sua decisão.

#### Dinâmico

-   Spectrwm - Configurado em uma língua feita para ser simples de entender.
    
    ![Spectrwm](https://raw.githubusercontent.com/wiki/conformal/spectrwm/Scrotwm1.png)
    
-   AwesomeWM - Configurado em lua  ![Awesome](https://awesomewm.org/images/screen.png)
-   Qtile - Configurado em python  ![Qtile](https://cdn.discordapp.com/attachments/776201664902201346/776467111794442270/demo.png)

#### Manual

-   i3 WM - Configurado em uma língua feita para ser simples de entender.
    
    ![I3](https://i3wm.org/screenshots/i3-9.png)
    
-   Sway - Configurado em uma língua feita para ser simples de entender.
    
    ![Sway](https://i0.wp.com/itsfoss.com/wp-content/uploads/2019/03/sway-wm2.jpg?ssl=1)
    
-   BSPWM - Pode ser configurado em qualquer linguagem de programacao.  ![BSPWM](https://cdn.discordapp.com/attachments/735050462717542411/776466000639819804/unknown.png)

## Layouts mais comuns:

#### Master and Stack  ![Layout01](https://cdn.discordapp.com/attachments/776201664902201346/776473438080598067/unknown.png)

#### Espiral

![Layout02](https://cdn.discordapp.com/attachments/776201664902201346/776474749374038056/unknown.png)

#### Grid

![Layout03](https://cdn.discordapp.com/attachments/776201664902201346/776475160550178816/unknown.png)

#### Tres Colunas

![Layout04](https://cdn.discordapp.com/attachments/776201664902201346/776472795373895690/unknown.png)

Sabendo o ponto de partida eu recomendo que você escolha um ponto de chegada, os tiling window managers que eu recomendo como ponto de chegada são esses abaixo, pesquise sobre cada um, caso os pontos de partida e chegada sejam os mesmos eu recomendo o teste de alguns outros pontos de chegada.

#### Dinâmico

-   Xmonad - configurado em haskell (Muito Difícil)  ![XMONAD](https://cdn.discordapp.com/attachments/776201664902201346/776473438080598067/unknown.png)
-   DWM - configurado em C (Difícil)  ![DWM](https://blog.zerial.org/wp-content/uploads/2009/08/dwm.png)  - QTILE - configurado em Python  ![Qtile](https://cdn.discordapp.com/attachments/776201664902201346/776467111794442270/demo.png)

#### Manual

-   Herbstluftwm - configurado em qualquer linguagem de programação  ![Herbstluftwm](https://www.tecmint.com/wp-content/uploads/2019/04/herbstluftwm-manual-tiling-window-manager-for-linux.png)
-   BSPWM - configurado em qualquer linguagem de programação  ![BSPWM](https://cdn.discordapp.com/attachments/735050462717542411/776466000639819804/unknown.png)

Com o ponto de partida e chegada definidos eu recomendo o teste de alguns TWMs de chegada para depois testar alguns de chegada para no depois chegar no ponto de cheagada, especialmente para quem for usar Xmonad ou DWM.

## Configure seu TWM!

![XMONAD CONFIG](https://cdn.discordapp.com/attachments/776201664902201346/776475717038506014/unknown.png)

Depois de baixar o TWM você deve configura-lo, a minha recomendação é primeiro substituir os comentários do arquivo de configuração, depois disso troque as teclas de atalho, depois adicione coisas que faltam no seu TWM e por fim trabalhe para deixar seu TWM esteticamente agradável.

**AVISO! - Guarde seus arquivos de configuração em algum lugar fora do seu pc, eu recomendo o uso do git juntamente com o Gitlab para tal finalidade.**

## Fazendo e Refazendo

Depois de configurar seu TWM por completo troque de TWM, isso pois depois de configurar você já ganhou experiência com aquele TWM continuar com ele so ira fazer demorar mais para o ponto de chegada.

## Recomendações de material:

[[Arch Wiki](https://www.blogger.com/blog/post/edit/3392280393749306382/1179405901031089791#)] [[Video explicativo](https://www.blogger.com/blog/post/edit/3392280393749306382/1179405901031089791#)] [[Distrotube](https://www.blogger.com/blog/post/edit/3392280393749306382/1179405901031089791#)] [[Brodie Robertson](https://www.blogger.com/blog/post/edit/3392280393749306382/1179405901031089791#)] [[Github do Arco Linux](https://www.blogger.com/blog/post/edit/3392280393749306382/1179405901031089791#)]
