---
layout: default
title: "Resultados y evidencias"
lang: es
permalink: /es/05-resultados-y-analisis/
---

# BC-Bench · Resultados y evidencias

> Revisión documental: **10 de octubre de 2026**. Fuente: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). No se han ejecutado instalaciones, agentes, contenedores ni benchmarks en esta actualización.

## Qué conservar

Usa la [plantilla de informe](../templates/evaluation-report-template.md). Registra commit del benchmark, dataset y categoría, versión de BC, harness/modelo, plugins y sus SHA, instrucciones, herramientas, configuración y logs.

| Observación | Conclusión permitida |
|---|---|
| El plugin está configurado | Se ha declarado una intención. |
| El host descubre y carga la skill | Está disponible en ese contexto. |
| La skill devuelve un resultado | Se ha ejecutado para esos inputs. |
| El agente produce un parche | Hay un cambio que evaluar. |
| El evaluador completa su contrato | Existe un resultado de esa categoría. |

Un reporte BCQuality `partial` o `failed` no es una revisión limpia. La ausencia de findings en una revisión completada solo describe su alcance. La revisión estática tampoco sustituye compilación, analizadores o pruebas.

## Comparar con rigor

Compara brazos sobre las mismas tareas y categoría. Identifica errores de infraestructura, resultados ausentes y fallos del agente de acuerdo con el scorer, sin retirarlos de la muestra a conveniencia. Conserva denominadores, repeticiones y configuración del juez cuando exista.

Las métricas dependen de la categoría. No mezcles resolución de bugs con puntuación de revisión de código ni publiques `pass@k` sin documentar cómo se calculó. Un único resultado no demuestra superioridad estable.

Usa [notebooks y flujo de revisión](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md#6-reviewing-results) y [política de versiones](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md#versioning-policy). Esta guía no publica mediciones nuevas.

