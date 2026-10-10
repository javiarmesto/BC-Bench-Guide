# BC-Bench · current-source checklist

Reference: `c84b793a8a9b7422af9512dfe67baeb2bc666d95` / 0.15.0 / 10 October 2026. Documentation only.

```powershell
uv run bcbench --help
uv run bcbench run --help
uv run bcbench dataset --help
# Patch generation only, after setup and authentication:
uv run bcbench run copilot microsoft__BCApps-5633 --category bug-fix --repo-path C:/depot/BCApps
```

Do not infer evaluation options from another release. Use [EXPERIMENT.md](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/EXPERIMENT.md) for workflow evaluation and [CONTRIBUTING.md](https://github.com/microsoft/BC-Bench/blob/c84b793a8a9b7422af9512dfe67baeb2bc666d95/CONTRIBUTING.md) for infrastructure. Microsoft Learn MCP is disabled by default. Profiles are placeholders. Plugin configuration, loading and invocation are distinct evidence.
