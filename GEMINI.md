# SaaS Factory V4 — Meta-Documentación del Repositorio

> *"Todo es un Skill. Agent-First. El usuario habla, tú construyes."*

## Qué es Este Proyecto

**SaaS Factory** es un template factory para crear aplicaciones SaaS production-ready con asistentes de IA. No es un proyecto — es la **máquina que construye proyectos**.

**Filosofía V4:**
- **Henry Ford:** Un solo stack perfeccionado (Golden Path)
- **Elon Musk:** La máquina que construye la máquina (skills > código manual)
- **Agent-First:** El usuario habla en lenguaje natural, el agente ejecuta
- **Skills Unificados:** Commands + agents + prompts → un solo concepto: Skills

## Estructura del Repositorio

```
saas-factory-setup/
├── CLAUDE.md                   # Meta-docs para Claude Code
├── GEMINI.md                   # Este archivo (meta-docs para Gemini)
├── README.md                   # Guía de instalación para usuarios
├── CHANGELOG.md                # Historial de versiones (V1.0 → V4.0)
├── assets/                     # Imágenes y diagramas del README
│
└── saas-factory/               # El Golden Path (se copia con el alias)
    ├── CLAUDE.md               # Factory OS — Cerebro del agente
    ├── GEMINI.md               # Espejo del Factory OS para Gemini
    ├── .mcp.json               # 3 MCPs configurados
    ├── package.json            # Next.js 16, React 19, Tailwind 3.4
    ├── src/                    # Código fuente
    │   ├── app/                # Next.js App Router (route groups)
    │   ├── features/           # Arquitectura Feature-First
    │   └── shared/             # Libs y componentes compartidos
    │
    └── .claude/
        ├── skills/             # 19 Skills (V4) — Core del sistema
        │   ├── new-app/        # Entrevista de negocio
        │   ├── website-3d/     # Landing cinemática scroll-stop + AIDA/PAS
        │   ├── primer/         # Context initialization
        │   ├── add-login/      # Auth completo Supabase
        │   ├── add-payments/   # Pagos con Polar (MoR)
        │   ├── add-emails/     # Emails transaccionales con Resend
        │   ├── add-mobile/     # PWA + push notifications
        │   ├── ai/             # 11 AI Templates (chat, RAG, vision, tools...)
        │   ├── prp/            # Product Requirements Proposals
        │   ├── bucle-agentico/ # Features complejas por fases
        │   ├── playwright-cli/ # QA automatizado
        │   ├── supabase/       # BD: tablas, RLS, migraciones, queries, métricas
        │   ├── memory-manager/ # Memoria persistente por proyecto
        │   ├── image-generation/ # Generación de imágenes (OpenRouter + Gemini)
        │   ├── video-visuals/  # Paquetes visuales narrativos estilo sketchnote
        │   ├── autoresearch/   # Auto-optimización de skills (Karpathy)
        │   ├── skill-creator/  # Crear nuevos skills
        │   ├── eject-sf/       # Remover SaaS Factory
        │   └── update-sf/      # Actualizar versión
        │
        ├── memory/             # Memoria persistente (git-versioned)
        │   ├── MEMORY.md       # Índice (máx 200 líneas)
        │   ├── user/           # Preferencias del usuario/equipo
        │   ├── feedback/       # Correcciones y patrones
        │   ├── project/        # Decisiones activas
        │   └── reference/      # Dónde encontrar cosas
        │
        ├── PRPs/               # Blueprints de features
        │   └── prp-base.md     # Template base
        │
        └── design-systems/     # 5 sistemas de diseño
            ├── neobrutalism/
            ├── neumorphism/
            ├── liquid-glass/
            ├── gradient-mesh/
            └── bento-grid/
```

## Golden Path (Stack Único)

| Capa | Tecnología |
|------|------------|
| Frontend | Next.js 16 + React 19 + TypeScript |
| Estilos | Tailwind CSS 3.4 + shadcn/ui |
| Backend | Supabase (Auth + PostgreSQL + RLS) |
| AI Engine | Vercel AI SDK v5 + OpenRouter |
| Validación | Zod |
| Estado | Zustand |
| Testing | Playwright MCP |
| Deploy | Vercel |

## Skills: De V3 a V4

| V3 | V4 |
|----|-----|
| `.claude/commands/*.md` | `.claude/skills/*/SKILL.md` |
| `.claude/agents/*.md` | `.claude/skills/*/SKILL.md` (user-invocable: false, context: fork) |
| `.claude/prompts/*.md` | `.claude/skills/*/SKILL.md` |
| `.claude/ai_templates/` | `.claude/skills/ai/references/` |
| 7 commands + 7 agents + prompts (fragmentado) | 19 skills unificados con YAML metadata |
| System prompt como "lista de herramientas" | Decision tree: input → skill activation |

### Anatomía de un Skill

```yaml
---
name: skill-name
description: Qué hace y cuándo activarlo
argument-hint: "[argumento]"      # Hint en autocomplete
user-invocable: false             # Solo el agente puede invocarlo
context: fork                     # Ejecuta en subagent aislado
allowed-tools: Read, Write, Bash  # Tools permitidos sin pedir permiso
---

# Instrucciones del skill en markdown
```

### Progressive Disclosure

1. **Metadata** (~100 palabras) — Siempre en contexto (frontmatter YAML)
2. **SKILL.md** (<5k palabras) — Se carga cuando se activa el skill
3. **Resources** (unlimited) — Bajo demanda (scripts/, references/, assets/)

## Memoria Persistente (Nuevo en V4)

El skill `memory-manager` reemplaza la auto-memoria del asistente:

- **Vive en el repo** (`.claude/memory/`), no en el perfil del usuario
- **Git-versioned** — cada cambio es un commit, reversible
- **Compartida** — cualquiera que clone el repo tiene la memoria
- **Controlada** — el usuario decide qué se guarda, no el agente

## Workflow de Instalación (Para el Agente)

Cuando un usuario pide ayuda para configurar SaaS Factory:

### 1. Detectar Sistema
```bash
echo $SHELL  # zsh o bash
pwd           # Ruta del repo
```

### 2. Generar y Agregar Alias
```bash
echo "alias saas-factory='cp -r [REPO_PATH]/saas-factory/. .'" >> ~/.zshrc
source ~/.zshrc
```

### 3. Validar
```bash
type saas-factory  # Debe retornar: "is an alias for..."
```

### 4. Explicar Uso
```
Configuración completa.

Para crear un nuevo proyecto:
1. mkdir mi-proyecto && cd mi-proyecto
2. saas-factory
3. npm install && npm run dev
4. Abre tu asistente en el directorio

Skills disponibles:
- /new-app           → Define tu SaaS (genera BUSINESS_LOGIC.md)
- /website-3d        → Landing cinemática scroll-stop + copy AIDA/PAS
- /add-login         → Auth completo con Supabase
- /add-payments      → Pagos con Polar (MoR)
- /ai [template]     → Agrega IA (chat, RAG, vision, tools...)
- /memory-manager    → Activa memoria persistente del proyecto
- /image-generation  → Genera imágenes con IA
- /video-visuals     → Paquetes visuales estilo sketchnote
- /autoresearch      → Auto-optimiza tus skills
```

## Restricciones

**Este repositorio NO debe:**
- Convertirse en un proyecto específico (es un factory)
- Tener código de aplicación en el root
- Committear `.mcp.json` con secrets (solo `example.mcp.json`)

**Los proyectos generados NO deben:**
- Usar OAuth para auth inicial (usar Email/Password primero)
- Agregar backends separados innecesariamente
- Sobre-ingenierear la primera versión

## Estado V4

**Versión:** 4.0.0
**Última actualización:** 2026-03-15

**V4 incluye:**
- 19 skills unificados (reemplaza commands + agents + prompts)
- Memoria persistente por proyecto (`.claude/memory/`)
- Landing cinemática scroll-stop + copy AIDA/PAS (`website-3d`)
- Image generation con OpenRouter + Gemini
- Autoresearch: auto-optimización de skills (patrón Karpathy)
- 5 design systems
- 11 AI templates
- 3 MCPs configurados

---

*Este archivo es para que Gemini entienda el **repositorio** SaaS Factory.*
*Para el Factory OS (cerebro del agente), ver `saas-factory/GEMINI.md`.*
