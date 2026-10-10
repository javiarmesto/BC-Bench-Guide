---
layout: default
title: "Introducción"
lang: es
permalink: /es/01-introduccion/
---

# BC-Bench · Introducción

> Revisión documental: **10 de octubre de 2026**. Fuente: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). No se han ejecutado instalaciones, agentes, contenedores ni benchmarks en esta actualización.

## Qué evalúa

BC-Bench, de Microsoft, permite comparar agentes en tareas de desarrollo AL. Mantén separadas las categorías: corregir un defecto, generar pruebas, revisar código o implementar desde lenguaje natural tienen contratos y evaluadores distintos.

El README upstream destaca Copilot CLI, Claude Code y el runner específico BC PR Review. Este último utiliza BC-ALAgents y BCQuality para la categoría de revisión. No se afirma que todos los hosts de ALDC, incluido Codex, tengan un runner BC-Bench directo.

## Tres piezas complementarias

| Pieza | Papel |
|---|---|
| ALDC | Contexto, agentes, skills y flujos de desarrollo. |
| BCQuality | Conocimiento y revisión con referencias de BC. |
| BC-Bench | Experimentos y evaluación según el contrato de cada categoría. |

Combinar herramientas es una hipótesis de experimento, no una mejora demostrada. No confundir una ejecución de agente que produce un parche con compilación, pruebas o aprobación humana.

Consulta [README upstream](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/README.md), [categorías](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CATEGORIES.md) y [diseño de experimentos](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md). Los tamaños de dataset y modelos disponibles se consultan en la revisión elegida; no se fijan aquí cifras que puedan quedar obsoletas.

Sigue con [preparación](02-setup-y-primera-evaluacion.md).
