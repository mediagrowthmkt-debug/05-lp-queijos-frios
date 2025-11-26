#!/bin/bash

# Script para atualizar referências de imagens no HTML
# Converte .png, .jpg, .jpeg para .webp

echo "🔄 Atualizando referências de imagens no index.html..."

# Backup do HTML original
cp index.html index.html.bak

# Substituir extensões
sed -i '' -e 's/\.png/.webp/g' index.html
sed -i '' -e 's/\.jpg/.webp/g' index.html
sed -i '' -e 's/\.jpeg/.webp/g' index.html
sed -i '' -e 's/\.PNG/.webp/g' index.html
sed -i '' -e 's/\.JPG/.webp/g' index.html
sed -i '' -e 's/\.JPEG/.webp/g' index.html

echo "✅ Referências atualizadas!"
echo "📁 Backup salvo em: index.html.bak"
