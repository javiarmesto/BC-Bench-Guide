# Informe de alineación: artículo Substack vs. BC-Bench-Guide

**Fecha:** 2026-04-22
**Artículo evaluado:** "BC-Bench II: Cómo empezar" — https://javiarmesto.substack.com/p/bc-bench-ii-como-empezar
**Repositorio:** `javiarmesto/bc-bench-guide` — guía bilingüe paso a paso para evaluar *coding agents* sobre Business Central con BC-Bench.
**Rama de trabajo:** `claude/evaluate-article-alignment-ACPl3`

---

## Veredicto global

**Alineación: MUY ALTA (≈ 9/10).**

El artículo es, en la práctica, una condensación divulgativa de la **Parte 2** de la guía, con pinceladas sintéticas de las **Partes 3, 4 y 5**. Los comandos, IDs de instancia, flags y nombres de scripts coinciden literalmente con los que documenta el repositorio; el artículo funciona como "puerta de entrada" o *trailer* del contenido completo de la guía.

No hay contradicciones materiales. Lo que aparece en el artículo se encuentra en el repositorio; lo que falta en el artículo está cubierto por las partes que el artículo no pretende condensar (métricas estadísticas, leaderboard, prompts, agentes alternativos, test-generation).

---

## Matriz de coincidencias punto por punto

| Tema | Artículo | Repositorio | Coincide |
|------|----------|-------------|:--------:|
| Gestor de paquetes `uv` (sustituye pip/venv) | Sí | `es/02` §"Requisitos Previos" | ✅ |
| Comandos de setup (`uv python install`, `uv sync --all-groups`, `uv run pre-commit install`) | Literal | `es/02` §"Instalación Paso a Paso" | ✅ |
| Verificación con `bcbench --help` → 5 comandos (`collect`, `dataset`, `evaluate`, `result`, `run`) | Sí | `es/02` §"Paso 3" (ayuda del CLI) | ✅ |
| Variables de entorno: `ANTHROPIC_API_KEY`, `GITHUB_TOKEN`, `AZURE_API_KEY`, `AZURE_API_BASE` | Sí | `es/02` §"Paso 4" | ✅ |
| Requisito Node.js 22+ para Claude Code | Sí | `es/02` tabla requisitos | ✅ |
| Dataset de 101 entradas | Sí | `es/01` §"Cómo funciona" y `es/02` §"Explorando el Dataset" | ✅ |
| `bcbench dataset list` / `view ... --show-patch` / `review` | Literal | `es/02` §"Explorando el Dataset" | ✅ |
| Campos clave del dataset: `instance_id`, `base_commit`, `project_paths`, `FAIL_TO_PASS` | Sí | `es/01` §"Estructura de una Entrada" | ✅ |
| `environment_setup_version: "26.0"` = BC 2025 Wave 1 | Literal | `es/01` (misma definición) | ✅ |
| Reutilización de contenedor cuando coincide la versión | Sí | `es/04` nota en `Setup-ContainerAndRepository.ps1` | ✅ |
| Instancia de ejemplo `microsoft__BCApps-4822` | Sí | Misma en toda la guía | ✅ |
| Modo `run` (sin contenedor) vs `evaluate` (con contenedor) | Sí | `es/02` tabla "Hay dos modos de ejecución" | ✅ |
| IDs de modelo: guiones para Claude (`claude-sonnet-4-6`) vs puntos para Copilot (`claude-sonnet-4.6`) | Nota explícita | `es/02` nota idéntica | ✅ |
| Salida JSONL con parche, tokens, tiempo, turnos, herramientas | Sí | `es/02` y `es/05` (esquema completo) | ✅ |
| VM Windows Server + Docker + Hyper-V + contenedor BC | Sí | `es/04` §"Preparando una VM" | ✅ |
| Setup VM en 2 fases (features → reboot → software) | Sí | `es/04` Fase 1 y Fase 2 detalladas | ✅ |
| Fase 2 instala Docker, PowerShell 7, Git, `uv`, Node.js, Claude Code, Copilot CLI, BcContainerHelper, AL Tool | Sí | `es/04` 14 pasos con los mismos componentes | ✅ |
| `Setup-ContainerAndRepository.ps1 -InstanceId ... -ContainerName bcbench` | Literal | `es/04` §"Setup del Contenedor" | ✅ |
| `bcbench evaluate` con `--container-name`, `--username`, `--password`, `--al-mcp`, `--run-id` | Literal | `es/02` §"Modo completo" | ✅ |
| Flag `--al-mcp` = acceso al compilador AL vía MCP | Sí | `es/02` y `es/03` §"Servidores MCP" | ✅ |
| Requisito AL Tool como `dotnet tool` | Sí | `es/02` nota de requisito | ✅ |
| `config.yaml` con palancas `instructions` / `skills` / `agents` | Sí | `es/03` todo el documento | ✅ |
| Skills listados: `skill-al-bugfix`, `skill-debug`, `skill-testing` | Sí | `es/03` §"Skills Disponibles" (y más: `-events`, `-performance`, `-api`, `-permissions`) | ✅ |
| Agente `al-developer-bench` | Sí | `es/03` §"Agentes Disponibles" | ✅ |
| `Setup-ALDCEvaluation.ps1 -CompareBaseline` = baseline vs configuración activa | Sí | `es/04` §"Comparación baseline vs configuración" | ✅ |
| `Run-FullComparison.ps1` matriz 4 escenarios × 2 agentes = 8 ejecuciones | Sí | `es/04` §"Comparación Completa Multi-Agente" (misma tabla 8 filas) | ✅ |
| Parámetro `-PauseBetweenScenarios 180` para evitar `overloaded_error` | Literal | `es/04` y `es/05` troubleshooting | ✅ |
| Campos de resultado: `resolved`, `build`, `metrics.turn_count`, `prompt_tokens`, `completion_tokens`, `experiment` | Literal | `es/02` y `es/05` (esquema JSON completo) | ✅ |
| `bcbench result summarize` / `aggregate --input-dir` / `review` | Literal | `es/05` §"Comandos de Resultado" | ✅ |
| TUI de revisión con `j/k` y `1-7` para clasificar fallos | Sí | `es/05` §"Revisar resultados con TUI" | ✅ |
| Notebook `bug-fix/overview.ipynb` + `uv sync --group analysis` + `jupyter lab` | Literal | `es/05` §"Análisis con Notebooks" | ✅ |
| Timeout del agente = 60 minutos | Sí | `es/01` §"Timeouts" y `es/05` troubleshooting | ✅ |
| `bcbench run mini-inspector` para diagnosticar loops | Sí | `es/05` troubleshooting | ✅ |
| Recomendación Haiku vs Opus para ejecuciones exploratorias | Sí | `es/05` troubleshooting | ✅ |
| Versionado semántico y resultados no agregables entre versiones | Sí | `es/05` §"Versionado de Resultados" | ✅ |
| Custom agent = markdown + frontmatter YAML (`name`, `description`, `tools`, `model`, `maxTurns`) | Sí | `es/03` §"Cómo crear tu propio agente" | ✅ |
| Skills como directorio con `SKILL.md` | Sí | `es/03` §"Skills" | ✅ |
| Licencia MIT del framework | Mencionada | Mencionada implícitamente en la guía (enlaces al repo oficial) | ✅ |

---

## Huecos del artículo (cubiertos en la guía, no en el post)

Son omisiones razonables para un post de Substack; la guía las cubre en partes distintas a la que el artículo sintetiza.

1. **Categoría `test-generation`.** El artículo usa `--category bug-fix` como parámetro pero no explica la segunda categoría (ver `es/01` §"Categorías de Evaluación" y `es/03` plantillas `test-generation-template`).
2. **Agentes alternativos.** Solo menciona `al-developer-bench`; el repo documenta además `al-conductor-bench` (orquestación multi-agente TDD con subagentes Planning → Implementation → Review) y `al-bugfix-firstline` (`es/03`).
3. **mini-bc-agent como tercer agente.** El artículo menciona `AZURE_API_KEY` en `.env` pero no explica qué agente la consume. El repo lo documenta como baseline de referencia en `es/01` y `es/02`.
4. **Métricas estadísticas.** El artículo describe los campos del JSONL pero no entra en *pass rate*, *bootstrap BCa 95% CI*, *pass@k* ni *pass^k*; el repo los desarrolla en `es/05` §"Métricas Estadísticas".
5. **Leaderboard.** El artículo cierra invitando a "construir tu propio leaderboard" pero no menciona los comandos `bcbench result update` / `bcbench result refresh` ni la estructura de `docs/_data/{category}.json` (`es/05`).
6. **MCP `mslearn`.** El artículo solo menciona `altool`; el repo documenta también el servidor HTTP `mslearn` para documentación oficial (`es/03` §"Servidores MCP").
7. **Plantillas de prompt** (`bug-fix-template`, `test-generation-template`, variable `include_project_paths`) — toda la §1 de `es/03`.
8. **Troubleshooting extendido**: contenedor que no responde, `docker rm -f bcbench`, validación de versión del contenedor vs `environment_setup_version` (`es/05`).
9. **Estructura de directorios** del harness (`src/bcbench/...`, `dataset/`, `scripts/`, `notebooks/`, `docs/`) — sección específica de `es/01`.
10. **Plantillas listas para usar**: `.env.sample`, `config-baseline.yaml`, `config-full.yaml`, `Run-QuickEvaluation.ps1`, plantilla de informe, cheatsheet — carpeta `templates/` del repo.

---

## Matices / pequeñas divergencias

1. **`git clone` vs fork.** El artículo propone `git clone https://github.com/microsoft/BC-Bench.git`. La guía recomienda preferentemente `gh repo fork microsoft/BC-Bench --clone` (uso propio). Ambas son válidas; no es contradicción pero sí matiz (la guía es más "tu propio leaderboard", el artículo más "empezar rápido").
2. **`bcbench run` y `--container-name`.** El artículo omite `--container-name` (correcto: `run` no lo necesita). La guía incluye `--container-name bcbench` en los ejemplos de `run`; es un parámetro opcional aceptado pero no imprescindible. Inconsistencia menor dentro de la guía, no un conflicto con el artículo.
3. **Matriz 4×2 = 8.** El artículo habla de "la matriz completa (4 escenarios × 2 agentes = 8 ejecuciones)". La guía en `es/04` documenta esos mismos 8 escenarios (tabla literal). Coincide.
4. **Exclusiones de Defender.** El artículo menciona desactivar el escaneo en tiempo real. La guía añade además exclusiones concretas (`C:\bcbench`, `C:\ProgramData\BcContainerHelper`). Complementario, no contradictorio.
5. **Cierre personal** del post (10 noches, ~40€ en API) no está en la guía. Es el tono editorial del Substack; no afecta a la alineación técnica.

---

## Conclusiones

- **El artículo es fiel al repositorio**: mismas herramientas, mismos comandos, mismo instance_id de ejemplo, misma matriz de comparación, mismos campos de resultado, mismas gotchas.
- **El artículo cumple su función como on-ramp**: recorre Setup → Dataset → primer `run` → `evaluate` completo → `config.yaml` → comparación → resultados → 3 gotchas → extensibilidad. Cada bloque tiene su contraparte directa en la guía.
- **Lo que falta del artículo no es una contradicción sino una elección de alcance**: test-generation, agentes alternativos, pass@k/CI, leaderboard, prompts, y troubleshooting avanzado se quedan para las Partes 3 y 5 de la guía.
- **Recomendación**: enlazar explícitamente desde el final del post a las Partes 3 (`es/03-configuracion-de-agentes.md`) y 5 (`es/05-resultados-y-analisis.md`) como "siguientes pasos" para convertir el tráfico del Substack en lectores de la guía completa.
