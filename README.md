# BC-Bench Guide / Guia BC-Bench

## Reference and validation / Referencia y validación

Start with [English setup](en/02-setup-and-first-evaluation.md) or [setup en castellano](es/02-setup-y-primera-evaluacion.md), then choose an agent configuration and the report template. `en/`, `es/` and `templates/` are documentation; this repository does not contain the evaluator or a ready-to-run benchmark environment.

Use [Microsoft BC-Bench](https://github.com/microsoft/BC-Bench) as the authoritative source for prerequisites and commands. Pin and record its commit in every evaluation, together with BC version, agent/model, tooling and execution logs. No runtime-validated BC-Bench revision is established by this guide's static review on **6 October 2026**; do not interpret example outputs as measurements. The expected deliverable is your evaluation report with results from an actual run. No applicable license file was confirmed for this guide.


A practical step-by-step guide for evaluating coding agents on real **Microsoft Dynamics 365 Business Central** tasks using the **BC-Bench** framework.

Una guia practica paso a paso para evaluar agentes de codificacion sobre tareas reales de **Microsoft Dynamics 365 Business Central** usando el framework **BC-Bench**.

---

## English

| Part | Topic |
|------|-------|
| [Part 1 — Introduction](en/01-introduction.md) | What is BC-Bench, architecture, key concepts, evaluation flow |
| [Part 2 — Setup](en/02-setup-and-first-evaluation.md) | Prerequisites, installation, exploring the dataset, first evaluation |
| [Part 3 — Configuration](en/03-agent-configuration.md) | config.yaml, prompts, instructions, skills, custom agents, MCP |
| [Part 4 — Baselines & VM](en/04-baselines-and-vm-scripts.md) | VM setup, evaluation scripts, full comparison, ready-to-use examples |
| [Part 5 — Results](en/05-results-and-analysis.md) | Result structure, CLI commands, metrics, notebooks, reporting |

## Espanol

| Parte | Tema |
|-------|------|
| [Parte 1 — Introduccion](es/01-introduccion.md) | Que es BC-Bench, arquitectura, conceptos clave, flujo de evaluacion |
| [Parte 2 — Setup](es/02-setup-y-primera-evaluacion.md) | Requisitos, instalacion, explorar dataset, primera evaluacion |
| [Parte 3 — Configuracion](es/03-configuracion-de-agentes.md) | config.yaml, prompts, instrucciones, skills, agentes custom, MCP |
| [Parte 4 — Baselines y VM](es/04-baselines-y-scripts-vm.md) | Setup VM, scripts de evaluacion, comparacion completa, ejemplos |
| [Parte 5 — Resultados](es/05-resultados-y-analisis.md) | Estructura de resultados, CLI, metricas, notebooks, documentacion |

## Templates

| File | Description |
|------|-------------|
| [env-example.txt](templates/env-example.txt) | `.env` template with all variables |
| [config-baseline.yaml](templates/config-baseline.yaml) | config.yaml for baseline (everything off) |
| [config-full.yaml](templates/config-full.yaml) | config.yaml for full scenario (everything on) |
| [Run-QuickEvaluation.ps1](templates/Run-QuickEvaluation.ps1) | PowerShell script ready for VM |
| [evaluation-report-template.md](templates/evaluation-report-template.md) | Report template for documenting results |
| [cheatsheet.md](templates/cheatsheet.md) | Quick reference for all CLI commands |
