---
layout: default
title: "Preparación y primera ejecución"
lang: es
permalink: /es/02-setup-y-primera-evaluacion/
---

# BC-Bench · Preparación y primera ejecución

> Revisión documental: **10 de octubre de 2026**. Fuente: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). No se han ejecutado instalaciones, agentes, contenedores ni benchmarks en esta actualización.

## Antes de empezar

En esta revisión, `pyproject.toml` requiere **Python >=3.13,<3.14** y **uv >=0.12.19**. Necesitas Git, GitHub CLI y el harness del agente elegido, con autenticación y permisos propios. Las evaluaciones con compilación y pruebas requieren preparar también la infraestructura BC correspondiente.

## Fijar la fuente

```powershell
gh repo fork microsoft/BC-Bench --clone
cd BC-Bench
git checkout c84b793a8a9b7422af9512dfe67baeb2bc666d95
uv python install
uv sync --all-groups
uv run bcbench --help
uv run bcbench run --help
uv run bcbench dataset --help
```

Si ya tienes el fork, haz `git fetch upstream` desde el remoto que apunte a Microsoft antes de seleccionar el commit. No sobrescribas tus cambios locales. `uv sync --all-groups` prepara los grupos de esta revisión; el extra `redteam` es opcional y no se necesita para este recorrido. El setup upstream completo utiliza `--all-extras` cuando se necesitan también esos extras.

## Primer smoke test: generar un parche

Clona BCApps en otra carpeta y sustituye la ruta por la tuya:

```powershell
uv run bcbench run copilot microsoft__BCApps-5633 --category bug-fix --repo-path C:/depot/BCApps
```

Este comando procede del ejemplo upstream y **solo genera un parche**, sin build ni pruebas del evaluador. Revisa el diff y los logs antes de pasar a una evaluación. Puede consumir recursos del proveedor del agente; no se ha ejecutado en esta revisión.

## Pasar a evaluación

Sigue [EXPERIMENT.md](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md#running-an-experiment): ejecución de prueba del workflow, una ejecución completa y después repeticiones justificadas. Consulta los requisitos de la categoría y la ayuda de la revisión instalada antes de usar opciones.

Los workflows upstream utilizan infraestructura de Microsoft. En un fork hay que adaptar runners, entorno `ado-read`, secretos y subida de resultados. El bridge bcal/bc-eval tiene dependencias y accesos propios; no es un prerrequisito universal para Copilot o Claude.

Fuentes: [setup y forks](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md), [dependencias](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/pyproject.toml). Sigue con [configuración](03-configuracion-de-agentes.md).
