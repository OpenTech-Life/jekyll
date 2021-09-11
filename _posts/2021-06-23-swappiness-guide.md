---
title: "Tudo que você precisa saber sobre Swappiness!"
date: 2021-06-23 21:39 -0300
tags: [Intermediário]
author: Redson
image: 
  src: https://cdn.discordapp.com/attachments/440142552411406356/857426338046017536/Swappiness_no.png
  width: 2240
  height: 1260
---
Salve comunidade pinguim! Faz um belo tempo que não dou as caras por aqui, né? Pois é, mas hoje estou de volta para falar de tudo que você deve saber sobre Swappiness!

---
A primeira coisa que queria abordar é como o swappiness funciona:
> Existem alguns aspectos matemáticos envolvidos na swap que devem ser considerados ao alterar suas configurações. O valor do parâmetro definido como “60” significa que seu kernel irá usar a swap quando a RAM atingir 40% da capacidade. Configurá-lo para “100” significa que seu kernel tentará colocar **TUDO** na swap. Definir como 10 significa que a swap será usada quando a RAM estiver 90% cheia, então se você tiver memória RAM suficiente, esta pode ser uma boa ideia que facilmente melhoraria o desempenho do seu sistema.

Uma observação que fiz a algum tempo,é que quando utilizo swap, o sistema passa a dar umas mini congeladas, provavelmente o disco não consegue acompanhar e o sistema acaba ficando lerdo.

---
Bem, partindo agora para modificações que você pode, dependendo da necessidade querer fazer em seu sistema, se você quiser alterar o valor do swappiness temporariamente para testar e posteriormente torna essa alteração permanente, o comando é o seguinte:
```bash
sudo sysctl vm.swappiness=10
```
Este comando fará com que o valor do swappiness seja definido para 10, sendo esta alteração temporária, ao reiniciar a máquina o valor voltará a ser 60.

Se você quiser tornar essa alteração permanente, vai ter que criar um arquivo em `/etc/sysctl.d/`
```bash
sudo touch /etc/sysctl.d/swappiness.conf
```

Logo após, execute como root o seu editor favorito e abra o arquivo recém-criado, nele, insira `vm.swappiness=valor`
Após fazer isso, a alteração passa a ser válida imediatamente e permanentemente, você sequer precisa reiniciar ~~Windows unlike this >:D~~.

Fim!
---
Agora, quando precisar já sabe onde procurar sobre o assunto, né? Obrigado por ler até aqui! Se quiser pode participar da nossa comunidade do [Telegram](https://t.me/joinchat/8QuuXznSNjhkMWJh), até a próxima!
