---
layout: default
title: "Introduction"
lang: en
permalink: /en/01-introduction/
---

# BC-Bench · Introduction

> Documentation review: **10 October 2026**. Source: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). This update did not execute installation, agents, containers or benchmark runs.

## What is evaluated

Microsoft BC-Bench compares coding agents on AL tasks. Bug fixing, test generation, code review and natural-language implementation have different contracts and scorers; compare within a category.

The current upstream README highlights Copilot CLI, Claude Code and the dedicated BC PR Review runner. The latter uses BC-ALAgents and BCQuality for code review. This guide does not claim a direct BC-Bench runner for every ALDC host, including Codex.

| Component | Role |
|---|---|
| ALDC | Development context, specialist agents, skills and workflows. |
| BCQuality | BC knowledge and cited source review. |
| BC-Bench | Controlled experiments and category-specific evaluation. |

Combining them is an experiment hypothesis, not an established improvement. A generated patch is not a successful build, test run or human approval. Dataset sizes and available models belong to the selected source revision.

Sources: [README](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/README.md), [categories](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CATEGORIES.md), [experiments](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md). Next: [setup](02-setup-and-first-evaluation.md).
