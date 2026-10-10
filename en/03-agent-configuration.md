---
layout: default
title: "Configuration, plugins and knowledge"
lang: en
permalink: /en/03-agent-configuration/
---

# BC-Bench · Configuration, plugins and knowledge

> Documentation review: **10 October 2026**. Source: BC-Bench **0.15.0**, commit [`c84b793a8a9b7422af9512dfe67baeb2bc666d95`](https://github.com/microsoft/BC-Bench/commit/c84b793a8a9b7422af9512dfe67baeb2bc666d95). This update did not execute installation, agents, containers or benchmark runs.

## Current configuration

Use [src/bcbench/agent/shared/config.yaml](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/src/bcbench/agent/shared/config.yaml).

| Control | Scope |
|---|---|
| `instructions.enabled` | Copies the entire profile, including skills and agents. |
| `skills.enabled` | Copies skills only for an isolated comparison. |
| `agents.enabled`, `agents.name` | Copies and selects an agent. |
| `plugins` | Per-session plugins, each with its own `enabled`. |
| `mcp.servers` | Declares servers; AL MCP has its own flag. |

Upstream profiles are **placeholders**. The old guide's `al-developer-bench` and `al-conductor-bench` examples are not presented as current upstream agents. Microsoft Learn MCP is commented out and disabled by default; enabling it is an experimental change. Record AL MCP, LSP and BC MCP separately.

## BCQuality

Upstream has a disabled, revision-pinned BCQuality plugin entry. Copy it from the selected revision and preserve its identity and pin. Inspect `grant_dir_access` when the skill needs corpus access. A loaded plugin does not prove skill invocation: retain discovery, loading and actual output evidence. Any instruction that encourages use is part of the experimental arm.

## ALDC

Select a compatible ALDC distribution and a published commit. Claude Code uses `claude-plugin`; Copilot CLI uses `copilot-cli-plugin`. Verify the selected manifests. This is a proposed experiment setup, not a runtime-validated BC-Bench integration.

Treat the BCQuality upstream and Javier's fork as separate arms. The fork adds `al-knowledge` for knowledge questions; the reviewed upstream documents `al-code-review`. Do not attribute the fork extension to upstream.

Sources: [experiments](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md), [ALDC](https://github.com/javiarmesto/ALDC-AL-Development-Collection), [BCQuality](https://github.com/microsoft/BCQuality), [fork](https://github.com/javiarmesto/BCQuality). Next: [comparisons](04-baselines-and-vm-scripts.md).
