#!/bin/bash

# Script de conversão e otimização de imagens para WebP
# Autor: Otimização Landing Page Banca Pacheco
# Data: 26/11/2025

echo "🚀 Iniciando conversão em massa para WebP..."
echo "================================================"

# Contador de arquivos
total_convertido=0
total_erro=0
espaco_economizado=0

# Criar backup antes de converter
echo "📦 Criando backup das imagens originais..."
backup_dir="backup_imagens_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

# Função para converter arquivo
converter_arquivo() {
    local arquivo="$1"
    local diretorio=$(dirname "$arquivo")
    local nome_base=$(basename "$arquivo")
    local nome_sem_ext="${nome_base%.*}"
    local webp_arquivo="${diretorio}/${nome_sem_ext}.webp"
    
    # Pular se já for WebP
    if [[ "$arquivo" == *.webp ]]; then
        return
    fi
    
    # Copiar para backup
    cp "$arquivo" "$backup_dir/" 2>/dev/null
    
    # Obter tamanho original
    tamanho_original=$(stat -f%z "$arquivo" 2>/dev/null || stat -c%s "$arquivo" 2>/dev/null)
    
    echo "  🔄 Convertendo: $nome_base"
    
    # Converter para WebP com otimização
    # -q 85: Qualidade 85% (bom balanço qualidade/tamanho)
    # -m 6: Método de compressão máximo
    # -af: Auto-filtro
    # -mt: Multi-thread
    if cwebp -q 85 -m 6 -af -mt "$arquivo" -o "$webp_arquivo" > /dev/null 2>&1; then
        tamanho_novo=$(stat -f%z "$webp_arquivo" 2>/dev/null || stat -c%s "$webp_arquivo" 2>/dev/null)
        economia=$((tamanho_original - tamanho_novo))
        espaco_economizado=$((espaco_economizado + economia))
        
        # Converter bytes para KB
        original_kb=$((tamanho_original / 1024))
        novo_kb=$((tamanho_novo / 1024))
        economia_kb=$((economia / 1024))
        
        echo "    ✅ ${original_kb}KB → ${novo_kb}KB (economizou ${economia_kb}KB)"
        
        # Remover arquivo original
        rm "$arquivo"
        total_convertido=$((total_convertido + 1))
    else
        echo "    ❌ Erro ao converter $nome_base"
        total_erro=$((total_erro + 1))
    fi
}

# Exportar função para uso com find
export -f converter_arquivo
export backup_dir
export total_convertido
export total_erro
export espaco_economizado

# Converter todos os JPG, JPEG e PNG
echo ""
echo "🖼️  Convertendo imagens JPG/JPEG/PNG para WebP..."
echo "================================================"

# Processar cada tipo de arquivo
for extensao in jpg jpeg png JPG JPEG PNG; do
    find . -type f -name "*.$extensao" -not -path "./backup_*" | while read arquivo; do
        converter_arquivo "$arquivo"
    done
done

# Calcular economia total
espaco_total_mb=$(echo "scale=2; $espaco_economizado / 1024 / 1024" | bc)

echo ""
echo "================================================"
echo "✨ CONVERSÃO CONCLUÍDA!"
echo "================================================"
echo "📊 Estatísticas:"
echo "  ✅ Arquivos convertidos: $total_convertido"
echo "  ❌ Erros: $total_erro"
echo "  💾 Espaço economizado: ${espaco_total_mb} MB"
echo ""
echo "📁 Backup salvo em: $backup_dir"
echo "================================================"
