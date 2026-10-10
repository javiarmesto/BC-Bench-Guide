---
layout: default
title: "Results and evidence"
lang: en
permalink: /en/05-results-and-analysis/
---

# BC-Bench · Results and evidence

> Documentation review: **10 October 2026**. Source: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). This update did not execute installation, agents, containers or benchmark runs.

## Preserve the evidence

Use the [report template](../templates/evaluation-report-template.md). Record benchmark commit, dataset/category, BC version, harness/model, plugin SHAs, instructions, tools, configuration and logs.

| Observation | Supported conclusion |
|---|---|
| Plugin configured | An intended setup is declared. |
| Skill discovered and loaded | It is available in that context. |
| Skill returns an output | It executed for those inputs. |
| Agent produces a patch | A change exists to evaluate. |
| Scorer completes its contract | A category-specific result exists. |

BCQuality `partial` or `failed` is not a clean review. A completed review without findings describes only its scope. Static review does not replace compilation, analyzers or tests.

Compare identical tasks and categories. Preserve infrastructure errors, missing outputs and agent failures according to the scorer; do not remove them to improve scores. Record denominators, repetitions and judge configuration.

Metrics depend on category. Do not mix bug resolution with code-review scoring, or publish `pass@k` without its calculation method. One run does not establish stable superiority.

Sources: [results workflow](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md#6-reviewing-results), [version policy](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md#versioning-policy). This guide publishes no new measurements.
