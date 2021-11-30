---
title: "Wallpaper Animado em Linux"
date: 2021-11-24 20:02 -0300
author: S0ra
tags: [wallpaper]
toc: true
---

Opa! Neste artigo, irei ensinar uma maneira de utilizar wallpapers animados em Linux.
<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation2.gif">



# Conhecendo o back4.sh
O **back4.sh** é um script feito em bash para separar gifs em frames e alternar entre as imagens com uma frequência determinada pelo usuário.
Um pouco de conhecimento de shell scripting ajudaria, mas não é necessário para aprender a usar o **back4.sh**

# Instalação
O repositório pode ser acessado [neste link](https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif), e faremos a instalação diretamente por lá.
Antes de tudo, precisaremos instalar o `xwallpaper`, que é a ferramenta que utilizaremos com o script. No Arch Linux, instalariamos com `sudo pacman -S xwallpaper`, mas caso você utilize outra distribuição, terá que correr um pouco atrás.
Instalaremos o back4.sh com os seguintes comandos no terminal:
```bash
# Baixar o repositório localmente
git clone https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif.git

# Entrar na pasta do repositório
cd foo-Wallpaper-Feh-Gif

# Dar permissão pro script executar
chmod +x back4.sh

# Mover o script para uma pasta no $PATH
sudo mv ./back4.sh /usr/local/bin/back4
```
Assim que a instalação for concluída, você poderá executar o comando `back4` a qualquer momento no seu terminal.

# Utilizando o back4.sh

## Configurando o script:
Antes de tudo, temos que modificar o script para que ele use o `xwallpaper` que instalamos.
Para isto, abra o arquivo `/usr/local/bin/back4` com seu editor de texto favorito, lembrando que para editar arquivos neste diretório, é necessário permissão de administrador.
```bash
# Sugestões:
micro /usr/local/bin/back4
sudo nano /usr/local/bin/back4
sudo vim /usr/local/bin/back4
# etc
```
Agora, iremos atualizar a linha `8` do script, em que está escrito `prog=$select1` e alteraremos para `prog=$select2`, para selecionar o `xwallpaper`.
Após isso, o script está pronto para ser rodado.

## Usando o script para tocar um gif
Assumindo que você já escolheu o gif que irá tocar, utilizaremos o seguinte comando:
```bash
back4 auto seu-gif-aqui.gif
```
Assim como um truque de mágica, o seu gif deverá estar tocando na tela.

## Solucionando problemas comuns:
### Velocidade errada:
As vezes a velocidade do gif pode estar errada, mas você pode alterar ela manualmente no script, utilizando:
```bash
back4 0.010 seu-gif-aqui.gif
#     ^^^^^ Argumento que você deve alterar
```
### Consumo excessivo de CPU:
Dependendo da qualidade do gif e do poder da sua CPU, as vezes o consumo pode acabar excedendo o limite do "utilizável". Podemos fazer algumas coisas para tentar diminuir o consumo:
- Diminuir a velocidade do gif
- Tentar utilizar uma ferramenta diferente do `xwallpaper`, como `feh` ou `xload`
- Tentar usar um gif diferente com uma qualidade menor

## Parando o script
Caso você tenha executado o script em segundo plano, é bem fácil fazer ele parar utilizando:
```bash
killall bash
```
Este comando irá matar todas as sessões do Bash em execução, já que o script é executado com o bash.
Alternativamente, você poderá matar ele manualmente usando o `htop` ou seu gerenciador de tarefas favorito.

# Boas práticas e considerações finais
Algumas recomendações ao utilizar o script devem ser consideradas:
- Limpar o cache, caso você troque de wallpaper com frequência<br>
 ```bash
 # Não é necessário, caso você reinicie o pc
 rm -rf /tmp/back4
 ```
- Criar um arquivo de Desktop para executar o back4
```
[Desktop Entry]
Name=Back4
Exec=back4 auto ~/Pictures/wallpaper.gif
Comment=Lança o wallpaper animado
Terminal=false
Icon=/caminho/para/o/icone/desejado
Type=Application
```

O script irá rodar melhor em WMs, mas foi testado com sucesso nos ambientes **Cinnamon** e **XFCE**. Não foram feitos testes no **KDE plasma**, então não há certeza de que funcione neste ambiente gráfico.

Com isto, finalizo este artigo. Sinta-se livre para dar feedback nos comentários e entrar na nossa [comunidade do telegram](https://t.me/opentechlife_comm) ou no [nosso canal](https://t.me/opentechlife) para ficar por dentro de mais coisas relacionadas ao OpenTechLife. Até a próxima!
