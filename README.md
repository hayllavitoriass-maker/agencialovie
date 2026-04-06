# Agência Lovie | Gestor Editorial Interno

Plataforma interna premium da Agência Lovie para gestão de clientes, campanhas, calendário editorial, conteúdos, tarefas e operação da agência.

## Stack

- Next.js 14 com App Router e Server Actions
- TypeScript com tipagem forte
- Tailwind CSS com paleta customizada da Lovie
- Prisma ORM com SQLite (local, pronto para migrar para PostgreSQL/Supabase)
- Sonner para notificações toast

## Requisitos

- Node.js 18 ou superior
- npm 9 ou superior

## Instalação Rápida

```bash
# 1. Instalar dependências
npm install

# 2. O banco SQLite já está pré-populado com dados de exemplo
# (dev.db já está no repositório com os dados do seed)

# 3. Iniciar o servidor
npm run dev
```

Acesse: http://localhost:3000

## Login

- Acesse /login
- Use qualquer e-mail e senha para entrar
- Você será redirecionada para o Dashboard

## Telas Disponíveis

| Rota | Descrição |
|------|-----------|
| /dashboard | Visão geral da operação |
| /clientes | Gestão de clientes (CRUD completo) |
| /clientes/[id] | Detalhe do cliente com campanhas, conteúdos e tarefas |
| /campanhas | Gestão de campanhas |
| /calendario | Calendário editorial por semanas |
| /conteudos | Tabela de conteúdos com filtros e edição inline |
| /kanban | Kanban de status com drag and drop |
| /tarefas | Gestão de tarefas da equipe |
| /agencia-lovie | Área interna da Agência Lovie |
| /equipe | Membros da equipe |
| /configuracoes | Configurações |

## Como usar cada área

### Alterar status de conteúdo
- Via /conteudos: use o select na coluna Status da tabela (salva automaticamente)
- Via /kanban: arraste o card para a coluna desejada

### Alterar aprovação
- Via /conteudos: use o select na coluna Aprovação (salva automaticamente)

### Criar conteúdo interno (Agência Lovie)
- Acesse /conteudos → Novo Conteúdo
- Marque "Conteúdo Interno (Agência Lovie)"
- Aparecerá em /agencia-lovie

## Banco de Dados

O banco SQLite (dev.db) já vem com:
- 5 membros da equipe
- 3 clientes de exemplo
- 2 campanhas
- 3 semanas editoriais
- 9 conteúdos
- 5 tarefas

Para resetar o banco:
```bash
python3 prisma/seed-direct.py
```

## Migrar para PostgreSQL/Supabase

1. Altere schema.prisma: `provider = "postgresql"`
2. Atualize .env: `DATABASE_URL="postgresql://..."`
3. Execute: `npx prisma migrate dev`

## Equipe da Agência Lovie

- Haylla Vitória — Diretora
- Clara Elys — Social Media
- Júlia Castelo Branco — Criativa
- Isabel Fonseca — Copywriter
- Anne Evy — Designer

---

*Feita de mulheres para mulheres.*
