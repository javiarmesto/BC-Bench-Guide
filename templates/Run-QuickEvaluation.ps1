<#
.SYNOPSIS
Patch-generation smoke test. Filename retained for existing guide links.
.DESCRIPTION
Does not run evaluator builds, BC tests, deployment or a full benchmark.
Reference: BC-Bench 0.15.0 / c84b793a8a9b7422af9512dfe67baeb2bc666d95. Review against your checkout.
#>
param(
    [Parameter(Mandatory = $true)][string]$InstanceId,
    [Parameter(Mandatory = $true)][string]$RepoPath,
    [ValidateSet('copilot', 'claude')][string]$Agent = 'copilot'
)
$ErrorActionPreference = 'Stop'
if (-not (Test-Path -LiteralPath 'pyproject.toml')) { throw 'Run from the BC-Bench checkout root.' }
if (-not (Test-Path -LiteralPath $RepoPath -PathType Container)) { throw 'Target repository folder does not exist.' }
$targetPath = (Resolve-Path -LiteralPath $RepoPath).Path
& uv run bcbench run $Agent $InstanceId --category bug-fix --repo-path $targetPath
if ($LASTEXITCODE -ne 0) { throw "Patch-generation command failed (exit $LASTEXITCODE)." }
Write-Output 'Patch generation completed. Inspect logs and diff; no evaluation score has been established.'
