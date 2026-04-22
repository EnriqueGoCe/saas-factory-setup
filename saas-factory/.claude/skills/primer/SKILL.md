---
name: primer
description: Inicializar contexto de un proyecto SaaS Factory al comienzo de una conversación. Activa cuando el usuario empieza a trabajar en el proyecto o cuando necesitas entender su estado actual antes de ejecutar cualquier tarea.
---

# Primer - Inicializador de Contexto SaaS Factory

## Propósito

Construir un mapa completo del proyecto en menos de 30 segundos: identidad, estado de BD, features implementadas y herramientas disponibles. Elimina la necesidad de que el usuario explique el proyecto manualmente.

## Cuándo activar

- Al inicio de una conversación nueva en un proyecto SaaS Factory
- Cuando el usuario pide "dame contexto" o "¿qué tenemos implementado?"
- Antes de ejecutar cualquier tarea compleja que dependa del estado actual

## Cómo ejecutar

### Paso 1: Leer identidad del proyecto

Lee `CLAUDE.md` y extrae:
- Nombre del proyecto
- Problema que resuelve (propuesta de valor)
- Usuario target (avatar)
- Reglas de negocio específicas
- Aprendizajes de Auto-Blindaje documentados

### Paso 2: Mapear estado de BD (Supabase MCP)

Ejecuta `list_tables` y extrae:
- Qué tablas existen y cuántos registros tienen
- Si RLS está habilitado por tabla
- Relaciones principales (foreign keys)

### Paso 3: Escanear features implementadas

Revisa `src/app/` y `src/features/` para identificar:
- Páginas existentes y sus rutas
- Features construidas (componentes, hooks, services)
- API endpoints disponibles

### Paso 4: Entregar resumen estructurado

```markdown
# 🏭 [Nombre del Proyecto]

## Stack
SaaS Factory v3 — Next.js 16 + Supabase + Tailwind

## Propósito
[Qué problema resuelve en 1-2 líneas]

## Estado de BD
| Tabla | Registros | RLS |
|-------|-----------|-----|
| ...   | ...       | ✅/❌ |

## Rutas Implementadas
- `/` → [descripción]
- `/dashboard` → [descripción]

## API Endpoints
- `POST /api/xxx` → [qué hace]

## MCPs Activos
✅ Supabase | ✅ Next.js DevTools | ✅ Playwright

## Agentes Disponibles
frontend-specialist · backend-specialist · supabase-admin
validacion-calidad · vercel-deployer · codebase-analyst

## Comandos
- `/landing` → Landing page de alta conversión
- `/add-login` → Auth B2B production-ready
- `/new-app` → Extraer lógica de negocio

## Listo para trabajar.
¿En qué te ayudo?
```

## Stack de referencia (Golden Path)

| Capa | Tecnología |
|------|------------|
| Framework | Next.js 16 + React 19 + TypeScript |
| Estilos | Tailwind CSS 3.4 + shadcn/ui |
| Backend | Supabase (Auth + PostgreSQL + RLS) |
| AI Engine | Vercel AI SDK v5 + OpenRouter |
| Validación | Zod |
| Estado | Zustand |

## Principio

El humano decide **qué** construir. Claude ejecuta **cómo** usando el Golden Path. Sin preguntas sobre el stack — ya está decidido.
