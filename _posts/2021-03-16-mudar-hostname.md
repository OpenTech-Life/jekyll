---
title: "Como mudar o hostname da sua máquina"
date: 2021-03-16 12:53 -0300
draft: false
author: Pedro Portales
image: 
  src: https://media.discordapp.net/attachments/776201664902201346/806583226738933840/unknown.png?width=1025&height=432
  width: 1025
  height: 432
---

Muitas vezes, na instalação, você escolhe um nome para sua máquina (também conhecido como hostname) que deixa de te satisfazer com o tempo. Ou talvez, você fique com vontade de deixar combinando com algo. E é por isso que faço esse tutorial simples:

# Como mudar o hostname da sua máquina
Sim, isso é muito mais simples do que parece! Usuários do Arch Linux ou Gentoo, que instalaram seus sistemas sem ajuda de scripts, podem ter uma noção de como fazer isso.  
Eu sei que esse artigo vai parecer muito pequeno se compararmos aos outros do OpenTech Life, mas aqui vamos nós. Para mudar o hostname de sua máquina, você precisará de:

 -   Um sistema operacional Linux
-   Um editor de texto (seja ele via terminal ou gráfico)
-   Acesso root (preferencialmente, pelo sudo)

Agora, com tudo o que você precisa disponível, abra o seu terminal e execute:

````
$ sudo {seu-editor} /etc/hostname
````
Dentro do arquivo, estará o nome atual da sua máquina. Basta alterá-lo, salvar o arquivo, e reiniciar o seu computador.

Se quiser participar de nossa comunidade, basta acessar [esse link](https://t.me/opentechlife)
