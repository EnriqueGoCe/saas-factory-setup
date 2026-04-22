# 🏭 SaaS Factory V3 - La Fábrica de Software Inteligente

> *"La Tesla Factory aplicada al software."*

Sistema de comandos inteligentes que crea aplicaciones **production-ready** con IA.

---

## 🤖 La Analogía: Tesla Factory

Piensa en este repositorio como una **fábrica automatizada de software**:

| Componente Tesla | Tu Sistema | Qué Hace |
|------------------|------------|----------|
| **Factory OS** | `CLAUDE.md` | Cerebro del agente (identidad y reglas) |
| **Blueprints** | `.claude/PRPs/*.md` | Especificaciones de features |
| **Control Room** | Humano | Aprueba PRPs y valida diseño |
| **Robot Arms** | Supabase MCP + Terminal | Edita código y base de datos |
| **Eyes/Cameras** | Playwright MCP | Valida UI visualmente |
| **Quality Control** | Next.js MCP + typecheck | Detecta errores en tiempo real |
| **Assembly Line** | `bucle-agentico-blueprint.md` | Proceso por fases |
| **Neural Network** | Auto-Blindaje | Aprende de errores (nunca se repiten) |

**Cuando ejecutas `saas-factory`**, copias toda la **infraestructura de la fábrica** al directorio actual.

---

## 🧠 V3: El Sistema que Mejora Solo

> *"Como el acero del Cybertruck: cada error es un impacto que refuerza nuestra estructura. Blindamos el proceso para que la falla nunca se repita."*

```
Error ocurre → Se arregla → Se DOCUMENTA → NUNCA ocurre de nuevo
```

Cada error encontrado se documenta en el archivo relevante:
- **PRP actual** → Errores específicos de esta feature
- **`.claude/prompts/*.md`** → Errores que aplican a múltiples features
- **`CLAUDE.md`** → Errores críticos que aplican a TODO

**El mismo error NUNCA ocurre dos veces.**

---

## 🚀 Instalación (2 minutos)

### 1. Clona el repositorio
```bash
git clone https://github.com/daniel-carreon/saas-factory-setup.git
cd saas-factory-setup
```

### 2. Abre en Claude Code
```bash
claude .
```

### 3. Pídele que configure el alias
```
Configura el alias "saas-factory" en mi terminal
```

Claude Code detecta tu sistema (zsh/bash) y configura todo automáticamente.

---

## 📦 ¿Qué Obtienes?

Cuando ejecutas `saas-factory`, obtienes un **proyecto Next.js 16 completo** listo para producción:

```
tu-proyecto/
├── CLAUDE.md              # Factory OS - Cerebro del agente
├── GEMINI.md              # Espejo para Gemini
├── .mcp.json              # MCPs configurados (Next.js, Playwright, Supabase)
├── src/                   # App con Feature-First Architecture
├── .claude/
│   ├── commands/          # /new-app, /landing, etc.
│   ├── PRPs/              # Blueprints de features
│   └── prompts/           # Assembly Line (bucle agéntico)
└── package.json           # Next.js 16, React 19, Tailwind 3.4
```

**No es un template vacío. Es production-ready desde el minuto 0.**

---

## 🏗️ El Golden Path

**Un solo stack. Sin decisiones innecesarias.**

| Capa | Tecnología |
|------|------------|
| Frontend | Next.js 16 + React 19 + TypeScript |
| Estilos | Tailwind CSS 3.4 + shadcn/ui |
| Backend | Supabase (Auth + Database) |
| Testing | Playwright MCP |
| Deploy | Vercel |

---

## 🔥 El Cyborg - 3 MCPs Trabajando Juntos

```typescript
// next.config.ts - Esta línea lo cambia todo
experimental: { mcpServer: true }
```

| MCP | Rol (Analogía) | Superpoder |
|-----|----------------|------------|
| 🧠 **Next.js DevTools** | Quality Control | Lee errores/logs en tiempo real vía `/_next/mcp` |
| 👁️ **Playwright** | Eyes/Cameras | Captura screenshots, valida UX visualmente |
| 🖐️ **Supabase** | Robot Arms | Ejecuta SQL, migraciones, consulta logs |

**Sin MCPs:** La IA adivina qué está roto.
**Con MCPs:** La IA **ve** exactamente qué está roto y por qué.

---

## 🛠️ Comandos Disponibles

### `/new-app` - El Arquitecto
Actúa como **Consultor de Negocio Senior**. Te entrevista y genera `BUSINESS_LOGIC.md` con la especificación técnica completa.

### `/landing` - The Money Maker
Actúa como **Copywriter + Diseñador**. Crea landing pages de alta conversión validadas visualmente con Playwright.

---

## 📋 Workflow: De 0 a Producción

### 1. Crear proyecto
```bash
mkdir mi-saas && cd mi-saas
saas-factory
```

### 2. Instalar y configurar
```bash
npm install
cp .env.example .env.local  # Añade credenciales de Supabase
```

### 3. Prender el MCP
```bash
npm run dev
# Output: - MCP Server: http://localhost:3000/_next/mcp ✓
```

### 4. Conectar Claude Code
```bash
claude .  # En otra terminal
```

### 5. Definir el negocio
```
/new-app
```

Responde las preguntas. El agente genera `BUSINESS_LOGIC.md`.

### 6. Construir
```
Implementa las features según BUSINESS_LOGIC.md
```

La IA usa el MCP para ver errores en tiempo real mientras construye.

---

## 🧪 ¿Cómo Saber que el MCP Funciona?

**Prueba:** Rompe algo a propósito
```typescript
// src/app/page.tsx
const broken = undefined.foo  // 💥
```

**Con MCP activo**, Claude ve:
```
TypeError: Cannot read property 'foo' of undefined
  at Home (page.tsx:2:23)
```

**Sin MCP**, Claude adivina.

---

## ❓ FAQ

**¿Por qué solo Next.js?**
Hace el 100% del trabajo para el 95% de los SaaS B2B. No necesitas Python ni backends separados.

**¿Por qué Email/Password en lugar de OAuth?**
Evita bloqueos de bots durante testing. OAuth requiere verificación que complica el desarrollo.

**¿Puedo personalizar?**
Sí. Todo está diseñado para ser extendido. `CLAUDE.md` es tu punto de entrada.

---

## 🤝 Contribuir

1. Abre un issue con tu propuesta
2. Fork y PR son bienvenidos
3. Mantén la filosofía: **simplicidad radical**

---

## 📖 Documentación

Para detalles técnicos, ver:
- `saas-factory/CLAUDE.md` - Factory OS (cerebro del agente)
- `.claude/PRPs/prp-base.md` - Sistema de Blueprints
- `.claude/prompts/bucle-agentico-blueprint.md` - Assembly Line
- `.claude/commands/` - Cómo funcionan los comandos

---

**SaaS Factory V3** | *"De la idea a producción en minutos, no en meses."*

```
        ┌─────────────────────────────────────────────────────────┐
        │                                                         │
        │   🏭 SAAS FACTORY V3                                    │
        │                                                         │
        │   saas-factory  →  /new-app  →  build  →  🚀           │
        │                                                         │
        │   El sistema que se blinda solo (Auto-Blindaje)           │
        │                                                         │
        └─────────────────────────────────────────────────────────┘
```
