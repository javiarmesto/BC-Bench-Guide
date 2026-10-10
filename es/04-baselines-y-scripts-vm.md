---
layout: default
title: "Comparaciones e infraestructura"
lang: es
permalink: /es/04-baselines-y-scripts-vm/
---

# BC-Bench · Comparaciones e infraestructura

> Revisión documental: **10 de octubre de 2026**. Fuente: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). No se han ejecutado instalaciones, agentes, contenedores ni benchmarks en esta actualización.

## Diseño mínimo

| Brazo | Cambio controlado |
|---|---|
| A | Configuración upstream sin personalización. |
| B | Mismo modelo, harness, tareas y categoría; añadir BCQuality. |
| C | Mismas condiciones; añadir una distribución concreta de ALDC. |
| D | Combinación ALDC + BCQuality, con revisiones y prompts registrados. |

Esta tabla propone un experimento; no contiene resultados. Si cambias también modelo, prompts, servidor MCP o instrucciones de uso, ya no puedes atribuir el cambio al plugin por sí solo.

Mantén iguales dataset, categoría, evaluador, infraestructura y presupuesto. Registra por separado versión del benchmark y versión del harness. BC-Bench impide agregar resultados de versiones de benchmark diferentes; versiones diferentes del harness forman agregados separados.

## Infraestructura y scripts

No copies los workflows upstream suponiendo que funcionan en cualquier cuenta. Revisa runners, artefactos BC, autenticación de agentes, repositorios internos y publicación de resultados según [CONTRIBUTING.md](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md#after-forking).

La plantilla [Run-QuickEvaluation.ps1](../templates/Run-QuickEvaluation.ps1) de esta guía ahora es un **smoke test de generación de parche**. Su nombre se conserva para enlaces existentes; no realiza evaluación ni despliegue. Los YAML baseline/full son snapshots de configuración para revisar, no entornos completos ni recomendaciones de mejora.

Haz primero una tarea, después una ejecución de prueba del workflow y finalmente las repeticiones que justifique tu objetivo. No introduzcas credenciales en archivos de configuración versionados.

Sigue con [interpretación](05-resultados-y-analisis.md).
