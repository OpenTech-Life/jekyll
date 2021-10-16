---
title: Aprenda a usar o Runit Init System
author: Redson
date: 2021-05-04
tags: [Intermediário]
image:
  src: https://bedrocklinux.org/1.0beta2/brn-handing-off-control.png
  width: 1920
  height: 1080
---


# O que é Runit?

Runit é um esquema init para sistemas operacionais do tipo Unix que inicializa, supervisiona e termina processos em todo o sistema operacional.
Runit é uma reimplementação do kit de ferramentas de supervisão de processo daemontools que é executado em muitos sistemas operacionais baseados em Linux, bem como nos sistemas operacionais macOS, BSD e Solaris.

# Como funciona?

O Runit, diferente do systemd, não usa `systemctl enable programa.service`, ele trabalha de uma maneira um pouco mais manual, o comando descrito anteriormente cria um link simbólico, já o Runit, faz isso da maneira tradicional:
```sh
ln -s /etc/runit/sv/<nome do serviço> /run/runit/service/
```


### Controlando o serviço:

-   Para iniciar um serviço use:
```sh
sv start <nome do serviço>
```
PS: Quando um serviço é habilitado, ele inicia **automaticamente**.

-   Parando um serviço:
```sh
sv stop <nome do serviço>
```
-   Verificando o estado do serviço:
```sh
sv status <nome do serviço>
```
-   Reiniciando serviços:
```sh
sv restart <nome do serviço>
```
E por fim, você pode desabilitar serviços no boot:
```sh
touch /etc/runit/sv/<nome do serviço>/down
```


## Monitorando serviços:

**Ver todos os serviços:**
```sh
sv status /run/runit/service/*
```
