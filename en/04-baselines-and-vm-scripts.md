---
layout: default
title: "Comparisons and infrastructure"
lang: en
permalink: /en/04-baselines-and-vm-scripts/
---

# BC-Bench · Comparisons and infrastructure

> Documentation review: **10 October 2026**. Source: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). This update did not execute installation, agents, containers or benchmark runs.

## Suggested experiment

| Arm | Controlled change |
|---|---|
| A | Uncustomized upstream baseline. |
| B | Same conditions plus BCQuality. |
| C | Same conditions plus a specific ALDC distribution. |
| D | ALDC plus BCQuality, with exact revisions and prompts. |

This is an experiment plan, not measured results. Keep model, harness, tasks, category, scorer, infrastructure and budget comparable. If you also change prompts or MCP tools, you cannot attribute the difference to a plugin alone.

Record benchmark and harness versions separately. Different benchmark versions cannot be aggregated; different harness versions form separate aggregates.

## Scripts and fork infrastructure

Follow [fork setup](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md#after-forking) for runners, BC artifacts, agent authentication, internal repositories and result uploads. Upstream workflows are not immediately portable to an arbitrary account.

[Run-QuickEvaluation.ps1](../templates/Run-QuickEvaluation.ps1) is now a **patch-generation smoke test**. Its filename is retained for existing links; it does not evaluate or deploy. The baseline/full YAML files are configuration snapshots to inspect, not complete environments or claims of improved performance.

Start with one entry, then a workflow test run, then repetitions justified by your purpose. Keep credentials out of versioned configuration files.

Next: [results](05-results-and-analysis.md).
