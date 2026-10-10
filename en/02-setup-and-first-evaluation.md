---
layout: default
title: "Setup and first run"
lang: en
permalink: /en/02-setup-and-first-evaluation/
---

# BC-Bench · Setup and first run

> Documentation review: **10 October 2026**. Source: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). This update did not execute installation, agents, containers or benchmark runs.

## Prerequisites

This revision requires **Python >=3.13,<3.14** and **uv >=0.12.19**, plus Git, GitHub CLI and your chosen authenticated agent harness. Build/test evaluations also need the appropriate BC infrastructure.

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

For an existing fork, fetch from the remote pointing to Microsoft before checking out the commit; preserve local changes. The optional `redteam` extra is not needed here. Upstream's complete setup includes `--all-extras` when those extras are needed.

## Patch-generation smoke test

Clone BCApps separately and replace the path:

```powershell
uv run bcbench run copilot microsoft__BCApps-5633 --category bug-fix --repo-path C:/depot/BCApps
```

This upstream example generates a patch **without evaluator build/test execution**. Inspect the diff and logs before evaluation. It may consume agent-provider resources; it was not run in this documentation update.

Follow [EXPERIMENT.md](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md#running-an-experiment) for a workflow test run, one full run and justified repetitions. Fork workflows need adapted runners, the `ado-read` environment, secrets and result uploads. The bcal/bc-eval bridge has separate dependencies and access requirements; it is not a universal prerequisite for Copilot or Claude.

Sources: [setup](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md), [dependencies](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/pyproject.toml). Next: [configuration](03-agent-configuration.md).
