---
title: "Como instalar qualquer distro Linux sem pendrive"
date: 2021-01-22 19:01 -0300
author: "Redson"
tags: [Linux]
categories: [Tutorial]
image: 
  src: https://lh3.googleusercontent.com/-tYnpYyfvpcw/YAsNU_gS_-I/AAAAAAAAAAw/-IQcEFUEKioMekt591HeFhR0WHFFOBTxgCLcBGAsYHQ/Como%2Binstalar%2Bdistribui%25C3%25A7%25C3%25B5es%2BLinux%2Bsem%2Bpendrive%2B%25281%2529.png
  width: 1920
  height: 1080
---

### Hoje irei ensiná-los a instalar qualquer distribuição Linux sem usar nenhum pendrive. Por enquanto, este artigo só se aplica a usuários do Windows.

Requisitos:

 - Windows 8 ou mais novo(O Windows 7 não é suportado, já que não trabalha com Uefi).
 - UEFI ativado.

---

É meio triste ser necessário o suporte a UEFI, já que não funcionará em máquinas antigas. Como já dito antes, este tutorial foca em máquinas com Windows. Em breve irei descobrir uma forma de fazer isso a partir do Linux, muito provavelmente pelo grub. Mas o show não pode parar, então vamos:

Baixando a ISO
---
Não é nenhum segredo que para instalar um sistema você precisa de uma ISO, no meu caso, eu sempre instalo o Arch Linux, e sempre dá certo, recomendo fortemente que você baixe atráves do Torrent, sempre que possivel já que evita que a ISO venha corrompida.

![ISO Baixada](https://media.discordapp.net/attachments/776201664902201346/802171441058676776/unknown.png)

ISO baixada, e agora?
---
Agora você deve baixar e instalar o [EasyUefi](https://www.easyuefi.com/downloads/EasyUEFI_Trial.exe). A instalação é como a de qualquer outro programa, é só ir apertando em next. Quando a instalação finalizar, muito provavelmente, a seguinte página será aberta, mas você pode fechá-la sem problemas:
![Pagina que ira ser aberta](https://media.discordapp.net/attachments/776201664902201346/802172600435343429/unknown.png?width=1017&height=480)

Particionando o HD
---
Vá até o programa de particionamento do Windows:
![Menu iniciar apontando o Gerenciador de disco do Ruindows](https://media.discordapp.net/attachments/776201664902201346/802173256013971466/unknown.png)

![Passos a serem seguidos](https://media.discordapp.net/attachments/776201664902201346/802174416653647902/unknown.png)

Vá até o Disco Local C:, dê um clique com o botão direito, e dirija-se a Diminuir volume, deve abrir uma janela como essa:

![Janela "Diminuir disco(como se o meu disco ja nao fosse pequeno)"](https://media.discordapp.net/attachments/776201664902201346/802174835027476500/unknown.png)

Como a ISO do Arch pesa 650MB atualmente, vou criar uma partição de 856MB, que julgo ser mais que necessário. É importante você adaptar isto ao sistema que irá instalar. Também é importante que você formate a partição com o formato de arquivos FAT32, independente do tamanho dela.

Fazendo a "mágica":
---
Com a partição criada, você deve extrair a ISO da sua distribuição Linux e por dentro dela. Para isso, é interessante usar programas como o [7-Zip](https://www.7-zip.org/download.html), ou o queridinho pela comunidade Windows, o [Winrar](https://www.win-rar.com/).
Você deve fechar o seu gerenciador de Torrent, pois ele o impedirá de mover a ISO de lugar. E com ele já fechado, você deve colocar a ISO em uma pasta sem nada dentro, e extrair:

![Extrair aqui](https://media.discordapp.net/attachments/776201664902201346/802177004103008296/unknown.png)

Com a ISO já extraída, você pode apagar ela e deixar somente as pastas, Cuidado para não deletar algum arquivo do sistema. Por fim, é necessário enviar todos os arquivos para a partição recém-criada.

![Pasta da ISO](https://media.discordapp.net/attachments/776201664902201346/802177370525007872/unknown.png)

Criando a entrada de BOOT
---
Agora, abra o EasyUEFI, com ele aberto, você terá uma homepage nada receptiva, mas você deve clicar em **Manage UEFI Boot Option.**

![EasyUEFI](https://media.discordapp.net/attachments/776201664902201346/802178664443674704/unknown.png?width=640&height=480)

É importante que você não apague nada aqui, pois você pode corromper o Boot do(s) seu(s) sistema(s), ou ter que regravar sua BIOS. Para continuar, clique aqui:

![Create a new Entry(+ com um calendario)](https://media.discordapp.net/attachments/776201664902201346/802179195718336532/unknown.png)

Agora clique na partição que você criou, e no topo da tela em type, escolha Linux or Other OS. Em descrição coloque o sistema. Por exemplo: Mint. É importante que não contenha caracteres especiais, como aspas, espaços e ç (normalmente a do final. Você pode saber pelo tamanho, ou pela Label.)
![Como deve ser](https://media.discordapp.net/attachments/776201664902201346/802180510964908032/unknown.png)

Agora vá em file path, e clique em browse, o programa já irá apontar a partição que você selecionou. Expanda as pastas com o + do lado esquerdo delas.

![File path](https://media.discordapp.net/attachments/776201664902201346/802180948568440842/unknown.png)

Sua ISO precisa ter esta pasta EFI, e você deve encontrar o arquivo BOOT.EFI; não pode ser shell.EFI, No meu caso, é BOOTx64.EFI, clique no arquivo e depois vá no ok, que está no canto inferior direito da janela. Feito isso, você já pode reiniciar o seu computador.
  ###### (Para descobrir qual deve ser a label que você precisa colocar na partição (só acontece em alguns casos, se isso não te acontecer, pode pular este passo e continuar a instalação). Depois deste processo, terá a entrada do instalador do seu sistema juntamente com a entrada do Windows(desculpa pela qualidade da imagem, minha câmera não é boa. ;D))

![Boot Manager](https://media.discordapp.net/attachments/776201664902201346/802223770861436969/IMG_20210122_112549.jpg?width=480&height=480)

Caso ocorra de dar uma tela preta com algo do gênero, você terá que rebootar no Windows, e mudar o nome da partição para o especificado. 

![Sistema tentando montar-se pela label errada](https://media.discordapp.net/attachments/776201664902201346/802223774236803162/IMG_20210122_112705.jpg?width=640&height=480)

Basicamente, o instalador tentou montar o sistema pelo nome da partição e não conseguiu. Você poderá saber qual nome deve colocar caso ocorra este erro, pois estará escrito assim: waiting 30 seconds for device /dev/disk/by-label/ARCH_202101. Este nome em negrito vai mudar, dependendo da ISO e do sistema que irá ser instalado.

Fim!
---
**Cuidado para não apagar a partição durante a instalação!**

Você poderá apagar depois, a partir do gparted ou outro utilitário de disco. Desfrute do seu sistema, e se seu disco rígido for mecânico, lembre-se de não fazer isso muitas vezes xD. Não esqueça de deixar seu feedback nos comentários, e uma sugestão para o próximo artigo. Se quiser conversar, pode nos encontrar em nosso [servidor do Discord](https://discord.gg/rYzquvV). Estou no aguardo 😉.
