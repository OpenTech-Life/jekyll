RED='\033[0;31m' # Vermelho.
NC='\033[0m' # Nenhuma cor.

pdate=$(date +"%Y-%m-%d %H:%M") # Data que será usada dentro do artigo do Jekyll.
date=$(date +"%Y-%m-%d") # Data que será usada no título.
printf "${RED}Não${NC} use acentos!\n"
read -p "Titulo do artigo: " ptitle # Pergunta ao usuário qual é o título do artigo.
title=$(echo $ptitle | sed 's/ /-/g' | sed 's/[A-Z]/\L&/g') # Título que será dado ao arquivo.
read -p "Autor do artigo: " author # Autor do artigo.
read -p "Escolha APENAS uma tag: " tag # Tag do artigo.

cd _posts/
cat <<EOF > ${date}-${title}.md
---
title: "${ptitle}"
date: $pdate -0300
author: $author
tags: [${tag}]
image:
  src: 
  width: 
  height: 
---
EOF

printf "\nO artigo foi salvo em: $(pwd)/${date}-${title}.md\n"
