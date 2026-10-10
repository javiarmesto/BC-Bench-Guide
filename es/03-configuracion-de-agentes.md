---
layout: default
title: "Configuración, plugins y conocimiento"
lang: es
permalink: /es/03-configuracion-de-agentes/
---

# BC-Bench · Configuración, plugins y conocimiento

> Revisión documental: **10 de octubre de 2026**. Fuente: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). No se han ejecutado instalaciones, agentes, contenedores ni benchmarks en esta actualización.

## Configuración actual

La fuente es [src/bcbench/agent/shared/config.yaml](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/src/bcbench/agent/shared/config.yaml).

| Control | Alcance |
|---|---|
| `instructions.enabled` | Copia toda la carpeta del perfil: instrucciones, skills y agentes. |
| `skills.enabled` | Copia solo las skills; permite aislar ese efecto. |
| `agents.enabled`, `agents.name` | Copia agentes y selecciona el agente. |
| `plugins` | Carga plugins por sesión; cada entrada tiene su propio `enabled`. |
| `mcp.servers` | Declara servidores; AL MCP tiene su flag específico. |

Los perfiles de ejemplo upstream son **placeholders**. No se presentan los antiguos `al-developer-bench` y `al-conductor-bench` de esta guía como agentes actuales incluidos upstream.

**Microsoft Learn MCP está comentado y desactivado por defecto** en el config revisado. Descomentar su bloque constituye un cambio experimental. AL MCP, LSP y el MCP de BC deben registrarse por separado en el informe.

## BCQuality como plugin

Upstream incluye una entrada BCQuality desactivada con repo y revisión fijada. Copia esa entrada de la revisión elegida, preserva el pin y cambia solo los controles del brazo experimental. Comprueba `grant_dir_access` si la skill necesita leer su corpus. No sustituir automáticamente el original por un fork.

Un plugin cargado no demuestra que su skill se haya utilizado. Conserva logs de descubrimiento, lectura y resultado. Si añades una instrucción para incentivar el uso, declárala como parte de ese brazo.

## ALDC como plugin

Para un experimento propio, selecciona una distribución compatible con el harness y un SHA publicado de ALDC. Claude Code utiliza su raíz `claude-plugin`; Copilot CLI tiene `copilot-cli-plugin`. Comprueba los manifiestos de la revisión seleccionada. Esto es una preparación propuesta, no una integración BC-Bench ejecutada y validada aquí.

BCQuality upstream y el fork de Javier son brazos diferentes: el fork incorpora `al-knowledge` para consultas de conocimiento; la fuente original revisada documenta `al-code-review`. No atribuir la ampliación a upstream.

Fuentes: [plugins y experimentos](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md), [ALDC](https://github.com/javiarmesto/ALDC-AL-Development-Collection), [BCQuality original](https://github.com/microsoft/BCQuality), [fork](https://github.com/javiarmesto/BCQuality). Sigue con [comparaciones](04-baselines-y-scripts-vm.md).
