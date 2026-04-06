#!/bin/bash
echo "🌸 Agência Lovie — Iniciando plataforma..."
echo ""

# Instalar dependências se necessário
if [ ! -d "node_modules/next" ] || [ ! -f "node_modules/.bin/next" ]; then
  echo "📦 Instalando dependências (apenas na primeira vez)..."
  npm install
fi

echo "✅ Dependências prontas"
echo "🚀 Iniciando servidor em http://localhost:3000"
echo ""
npm run dev
