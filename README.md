# BC-Bench Guide · EN / ES

Guía de Javier Armesto para preparar e interpretar experimentos con agentes en AL y Business Central. **Framework original: [Microsoft BC-Bench](https://github.com/microsoft/BC-Bench).**

Actualizada el **10 de octubre de 2026** contra BC-Bench **0.15.0**, commit `c84b793a8a9b7422af9512dfe67baeb2bc666d95`. Actualización documental; sin benchmarks ejecutados. Esta guía no contiene el evaluador ni un entorno BC preparado. La licencia de reutilización de esta guía sigue pendiente de aclarar.

## Empieza aquí / Start here

| Tema / Topic | Español | English |
|---|---|---|
| 1. Introducción | [Leer](es/01-introduccion.md) | [Read](en/01-introduction.md) |
| 2. Preparación y primera ejecución | [Leer](es/02-setup-y-primera-evaluacion.md) | [Read](en/02-setup-and-first-evaluation.md) |
| 3. Configuración, plugins y conocimiento | [Leer](es/03-configuracion-de-agentes.md) | [Read](en/03-agent-configuration.md) |
| 4. Comparaciones e infraestructura | [Leer](es/04-baselines-y-scripts-vm.md) | [Read](en/04-baselines-and-vm-scripts.md) |
| 5. Resultados y evidencias | [Leer](es/05-resultados-y-analisis.md) | [Read](en/05-results-and-analysis.md) |

## ALDC + BCQuality + BC-Bench

ALDC aporta contexto y flujos de desarrollo; BCQuality aporta conocimiento y revisión con citas; BC-Bench permite comparar configuraciones bajo un contrato de evaluación. Su combinación es un experimento propuesto, no una mejora medida.

- [ALDC](https://github.com/javiarmesto/ALDC-AL-Development-Collection): elegir distribución y commit para el harness utilizado.
- [BCQuality original](https://github.com/microsoft/BCQuality): skills y corpus mantenidos en su fuente.
- [Fork de Javier](https://github.com/javiarmesto/BCQuality): ampliación `al-knowledge`, identificada como propia del fork.

## Qué cambió

Python/uv actualizados; plugins y sus revisiones; configuración por perfiles; categorías ampliadas; BC PR Review; diferencias entre generación de parche y evaluación; Microsoft Learn MCP desactivado por defecto. Retiradas las afirmaciones de dataset fijo, modelos por defecto y agentes de ejemplo supuestamente actuales.

## Plantillas

[Baseline](templates/config-baseline.yaml) y [full](templates/config-full.yaml) preservan el config de la revisión upstream para editar en un experimento. Full activa la copia del perfil, cuyos archivos upstream son placeholders: no instala ALDC. [Script PowerShell](templates/Run-QuickEvaluation.ps1) genera un parche, no lo evalúa. [Informe](templates/evaluation-report-template.md), [cheatsheet](templates/cheatsheet.md) y [.env](templates/env-example.txt).

La versión anterior permanece en el [historial](https://github.com/javiarmesto/BC-Bench-Guide/commits/main). No mezclar instrucciones de revisiones distintas.
