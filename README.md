# 🧀 LP Degustação Gratuita - Banca Pacheco

## 📋 Objetivo da Página

Landing page focada em **atrair clientes que estão no supermercado comprando frios embalados** sem poder experimentar antes.

**Copy Agressiva:** PROVE GRÁTIS antes de comprar! Degustação 100% gratuita sem compromisso.

---

## 🎯 Diferenciais vs LP de Promoções

| LP Promoções (20% OFF) | LP Degustação Gratuita |
|---|---|
| Foco em desconto | Foco em experimentar antes |
| CTA: "Encomendar" | CTA: "Quero Provar Este!" |
| Urgência: countdown | Urgência: não compre sem provar |
| Banner: "Promoção válida até..." | Banner: "DEGUSTAÇÃO 100% GRATUITA" |

---

## ✅ Implementado

- ✅ Hero agressivo: "PARE DE COMPRAR FRIOS EMBALADOS SEM EXPERIMENTAR"
- ✅ Badge "PROVE GRÁTIS" em todos os produtos degustáveis
- ✅ **2 Seções separadas:**
  - 👅 Queijos e Frios para Degustação GRATUITA (12 produtos)
  - 🛒 Outros Produtos (conservas, ovos) com badge diferenciado
- ✅ Grid expansível de produtos (fácil adicionar novos)
- ✅ Sistema de captura de nome + WhatsApp
- ✅ Tracking com Meta Pixel + Microsoft Clarity
- ✅ Webhook integrado ao Make.com
- ✅ Mesmas cores, fontes e estrutura da LP original
- ✅ Responsivo (mobile-first)
- ✅ Background com slider automático

---

## 🛠️ Como Adicionar Novos Produtos

A página possui **DUAS categorias de produtos** gerenciadas por arrays separados:

### 📂 Estrutura de Pastas

```
05-lp-queijos-frios/
├── index.html
├── README.md
└── Produtos/           ← Pasta criada para organizar
```

### 1️⃣ Produtos para Degustação (Queijos e Frios)

Edite `index.html`, localize o array **`produtosDegustacao`** (linha ~974) e adicione:

```javascript
{
    nome: 'Nome do Produto',
    categoria: 'Categoria',
    descricao: 'Descrição focada em PROVAR GRÁTIS',
    imagem: '../03-LANDING-PAGE-PROMOCOES-BANCA/produtos promocao/pasta/imagem.webp'
}
```

**Produtos desta categoria:**
- Queijos artesanais (Serrano, Colonial, Mussarela)
- Frios fatiados (Presunto Cru/Jamon)
- Defumados (Costela, Lombo, Bacon de Barriga/Pernil)
- Linguiças artesanais
- Charque Premium
- Torresmo/Pururuca

**Badge automático:** 👅 PROVE GRÁTIS  
**CTA:** "💬 Quero Provar Este!"

### 2️⃣ Outros Produtos (Conservas, Ovos, etc.)

Localize o array **`outrosProdutos`** (linha ~1040) e adicione:

```javascript
{
    nome: 'Nome do Produto',
    categoria: 'Categoria',
    descricao: 'Descrição do produto',
    imagem: '../03-LANDING-PAGE-PROMOCOES-BANCA/produtos promocao/pasta/imagem.webp',
    badge: '📦 Produto Especial'  // ou '🥚 Frescos', '🍷 Premium', etc.
}
```

**Produtos desta categoria:**
- Conservas Anita (Pepino, Beterraba, Cebola, Rodela, Tolete)
- Ovos Caipira e de Granja
- Vinhos artesanais (adicione aqui)
- Cachaças premium (adicione aqui)
- Azeites especiais (adicione aqui)

**Badge personalizável:** Defina no campo `badge`  
**CTA:** "💬 Quero Encomendar"

### Exemplo Completo - Adicionar Vinho:

```javascript
// No array outrosProdutos:
{
    nome: 'Vinho Colonial Tinto',
    categoria: 'Vinhos Artesanais',
    descricao: 'Vinho artesanal produzido localmente, perfeito para acompanhar queijos e frios.',
    imagem: '../03-LANDING-PAGE-PROMOCOES-BANCA/produtos promocao/vinhos/vinho-tinto.webp',
    badge: '🍷 Premium'
}
```

**Recarregue a página** e os produtos aparecem automaticamente!

---

## 📦 Produtos Cadastrados Atualmente

### 👅 SEÇÃO 1: Produtos para Degustação (12 itens)

1. **Queijo Serrano** - Queijos Artesanais
2. **Queijo Colonial Pacheco** - Queijos Artesanais
3. **Mussarela Fatiada** - Queijos Premium
4. **Presunto Cru / Jamon** - Frios Premium
5. **Costela Defumada** - Defumados Artesanais
6. **Lombo Defumado** - Defumados Artesanais
7. **Bacon Defumado de Barriga** - Defumados Premium
8. **Bacon de Pernil Defumado** - Defumados Premium
9. **Linguiça Blumenau** - Linguiças Artesanais
10. **Charque Premium de Traseiro** - Carnes Especiais - Primeira
11. **Charque de Dianteiro** - Carnes Especiais
12. **Pururuca / Torresmo** - Petiscos Artesanais

**CTA:** "💬 Quero Provar Este!" | **Badge:** 👅 PROVE GRÁTIS

### 🛒 SEÇÃO 2: Outros Produtos (7 itens)

1. **Conservas Anita - Pepino** - 📦 Produto Especial
2. **Conservas Anita - Beterraba** - 📦 Produto Especial
3. **Conservas Anita - Cebola** - 📦 Produto Especial
4. **Conservas Anita - Rodela** - 📦 Produto Especial
5. **Conservas Anita - Tolete 1,8kg** - 📦 Produto Especial
6. **Ovos Caipira** - 🥚 Frescos
7. **Ovos de Granja** - 🥚 Frescos

**CTA:** "💬 Quero Encomendar" | **Badge:** Personalizado por tipo

> **💡 Sugestão:** Adicione vinhos e cachaças artesanais na SEÇÃO 2 seguindo o tutorial acima!

---

## 🎨 Personalização de Cores

Altere as variáveis CSS no `:root` (linha ~60):

```css
:root {
    --cor-primaria: #495234;      /* Verde oliva Banca Pacheco */
    --cor-secundaria: #8B4513;    /* Marrom */
    --cor-destaque: #FFD700;      /* Dourado */
    --cor-texto: #333;
    --cor-fundo: #FFF8F0;
}
```

---

## 📱 Integração WhatsApp

- **Número:** (48) 98411-8953
- **Mensagem padrão:** "Olá! Quero agendar uma degustação GRATUITA dos queijos e frios da Banca Pacheco."
- **Webhook:** `https://hook.us2.make.com/md8tzkcsr6wxwkz8toctsy2la2ob5s1f`
- **Fonte identificada:** "LP Degustação Queijos Frios"

---

## 📊 Tracking Configurado

1. **Meta Pixel** (Facebook Ads)
   - ID: `1914948786073743`
   - Evento PageView automático
   - Evento Lead ao capturar nome

2. **Microsoft Clarity**
   - ID: `ubo9iaiokv`
   - Heatmaps + gravações de sessão

3. **Webhook Make.com**
   - Dispara ao enviar nome
   - Dados: nome, produto, origem, timestamp

---

## 🖼️ Estrutura de Imagens

Todos os assets são referenciados da pasta `03-LANDING-PAGE-PROMOCOES-BANCA`:

- **Hero:** `hero/IMG_9692.webp` + `hero/IMG_9863.webp`
- **Logo:** `wp-content/uploads/2025/06/logomarca-pacheco-01-1.png`
- **Produtos:** `produtos promocao/[categoria]/[imagem].webp`
- **WhatsApp Icon:** `whatsappicon.webp`

---

## 🚀 Deploy

Hospede a pasta `05-lp-queijos-frios` no servidor e garanta que:

1. ✅ Paths relativos para `../03-LANDING-PAGE-PROMOCOES-BANCA/` estejam corretos
2. ✅ HTTPS habilitado (para Meta Pixel funcionar)
3. ✅ Domínio/subdomínio: sugestão `bancadopacheco.com.br/prove-gratis`

---

## 💡 Copy Highlights

**Hero:**
> "PARE DE COMPRAR FRIOS EMBALADOS SEM EXPERIMENTAR!"

**Benefícios:**
- "PROVE GRÁTIS Antes de Comprar"
- "PARE de Arriscar no Supermercado"
- "Produtos QUE NÃO TEM no Mercado"

**CTA:**
- "👅 QUERO PROVAR GRÁTIS!"
- "💬 Quero Provar Este!"
- "💬 Agendar Degustação GRÁTIS"

---

## 📞 Suporte

Qualquer dúvida ou ajuste necessário, entre em contato!
