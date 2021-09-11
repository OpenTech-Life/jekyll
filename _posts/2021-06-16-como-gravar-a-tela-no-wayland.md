---
title: Como Gravar a Tela no Wayland
date: 2021-06-16 19:45 -0300
author: Pedro Portales
tags: ["Wayland"]
categories: [Tutorial]
image: 
  src: https://telegra.ph/file/0d23d35955d56909cbce4.png
  width: 1920
  height: 1080
---

# Introdução

Após duas semanas utilizando o Wayland, decidi permanecer nele por conta de minha boa experiência, assim como foi com o Pipewire. Embora ainda existam alguns bugs ou dificuldades no uso do Wayland, ele já se apresenta de forma muito utilizável. Durante meu uso, notei (ou talvez tenha sido somente impressão minha) um melhor funcionamento junto com o Pipewire como servidor de áudio e mídia. Mas esse não é o foco desse artigo!

Durante minha utilização, testei o OBS Studio, uma incrível ferramenta open-source de gravação de tela e streaming. Por não ter suporte para capturar tela no Wayland, acabei dando de encontro com uma tela preta na captura, e um erro no debug... O OBS utiliza o Pipewire para capturar vídeo, e ele não tinha permissão para realizar essa captura.

Não fui solucionar o problema, e o tempo não estava a meu favor. Então encontrei o [wf-recorder](https://github.com/ammen99/wf-recorder), um simples gravador de tela que é utilizado via terminal, e por acaso atendeu muito bem ao que eu precisava.

# Como Usar o wf-recorder?

Por mais inacreditável que pareça, tive dificuldades para achar esse incrível e simples projeto. Se quiser saber como instalar, todas as opções de instalação estão na [página do GitHub](https://github.com/ammen99/wf-recorder) dele.

Embora ele pareça complicado de usar, é muito simples:

```
> wf-recorder --help                                              
Usage: wf-recorder [OPTION]... -f [FILE]...
Screen recording of wlroots-based compositors

With no FILE, start recording the current screen.

  -a, --audio [DEVICE]      Starts recording the screen with audio.
                            [DEVICE] argument is optional.
                            In case you want to specify the pulseaudio device which will capture
                            the audio, you can run this command with the name of that device.
                            You can find your device by running: pactl list sinks | grep Name

  -c, --codec               Specifies the codec of the video. Supports  GIF output also.
                            To modify codec parameters, use -p <option_name>=<option_value>

  -d, --device              Selects the device to use when encoding the video
                            Some drivers report support for rgb0 data for vaapi input but
                            really only support yuv.

  -f <filename>.ext         By using the -f option the output file will have the name :
                            filename.ext and the file format will be determined by provided
                            while extension .ext . If the extension .ext provided is not
                            recognized by your FFmpeg muxers, the command will fail.
                            You can check the muxers that your FFmpeg installation supports by
                            running  : ffmpeg -muxers

  -m, --muxer               Set the output format to a specific muxer instead of detecting it
                            from the filename.

  -x, --pixel-format        Set the output pixel format. These can be found by running:
                            *ffmpeg -pix_fmts*

  -g, --geometry            Selects a specific part of the screen.

  -h, --help                Prints this help screen.

  -l, --log                 Generates a log on the current terminal. Debug purposes.

  -o, --output              Specify the output where the video is to be recorded.

  -p, --codec-param         Change the codec parameters.
                            -p <option_name>=<option_value>

  -e, --opencl              Use the -e[#] or --opencl[=#] in conjunction with -t or --force-yuv option
                            to use opencl for gpu accelerated conversion of data to yuv. # is one
                            of the devices listed when running without specifying #.

  -t, --force-yuv           Use the -t or --force-yuv option to force conversion of the data to
                            yuv format, before sending it to the gpu.

  -b, --bframes             This option is used to set the maximum number of b-frames to be used.
                            If b-frames are not supported by your hardware, set this to 0.


Examples:

  Video Only:

  - wf-recorder                         Records the video. Use Ctrl+C to stop recording.
                                        The video file will be stored as recording.mp4 in the
                                        current working directory.

  - wf-recorder -f <filename>.ext       Records the video. Use Ctrl+C to stop recording.
                                        The video file will be stored as <outputname>.ext in the
                                        current working directory.

  Video and Audio:

  - wf-recorder -a                      Records the audio. Use Ctrl+C to stop recording.
                                        The video file will be stored as recording.mp4 in the
                                        current working directory.

  - wf-recorder -a -f <filename>.ext    Records the audio. Use Ctrl+C to stop recording.
                                        The video file will be stored as <outputname>.ext in the
                                        current working directory.
```

Como pode ver, ao executarmos o comando demonstrado, teremos essa grande saída. Mas não se assuste! Você provavelmente notou os exemplos de uso no final. Desses exemplos, irei destacar dois que provavelmente serão os que você irá usar. Nós temos: 

```
wf-recorder -f <filename>.ext
```
Nesse exemplo, o parâmetro -f permite você de escolher o nome do arquivo (onde está como <filename>), e uma extensão pro arquivo (onde está .ext) sendo ela uma extensão de vídeo como '.mp4' ou '.mkv'. Porém, o que será gravado será somente o vídeo, a tela selecionada:

![](https://telegra.ph/file/4c967de9ef0e80f5b6bca.png)

Já no exemplo seguinte...
```
wf-recorder -a -f <filename>.ext
```
...teremos as mesmas opções de nome e extensão do arquivo, mas dessa vez teremos o -a para captura do áudio:

![](https://telegra.ph/file/82f48e5993987146606d1.png)

# Que tal dar aquele apoio?

Ainda estamos no começo do nosso projeto, e pretendemos estendê-lo! Se possível, dá uma passada lá no nosso [canal do Telegram](https://t.me/opentechlife) e tenha acesso ao nosso grupo pela mensagem pinada! Contamos com você hein? Bons estudos!
