# Copilot review instructions

`AGENTS.md` is the canonical repository guidance for authors and Terraform safety. These instructions supplement the organization-level review policy with repository-specific review behavior.

## Findings

- Review the current diff and latest commit. Report actionable, production-relevant findings grounded in code, configuration, documentation, check evidence, and, when affected, the exact dependency versions and contracts used by consumers.
- Use severity proportional to demonstrated impact: P0 for incident, data-loss, or security exposure; P1 for likely user-visible outage or degradation; P2 for increased failure or recovery risk; and P3 for maintainability or clarity.
- For every finding, cite the exact path and line, explain the concrete impact, and propose the smallest safe fix or verification. Ask a clarifying question when intent is material and unavailable.
- Avoid speculative refactors, adjacent cleanup, unsupported assumptions, and requests for context that is unavailable in the diff or repository. Do not repeat organization-level checklists without tying them to changed behavior.

## Terraform and dependency contracts

- Trace changed inputs, outputs, resource identities, provider constraints, module sources, and defaults through affected consumers. Verify compatibility and any stated companion PR, release, merge, apply, migration, or rollout order.
- Check the exact pinned contract rather than assuming behavior from a sibling example, mutable branch, or newer release. Flag incidental dependency or lockfile changes and unsupported validation claims.
- Protect stable Terraform addresses and safe teardown order. Never recommend local apply, destroy, import, or manual state mutation.
- Check that tests and documentation cover the behavior changed in the diff, including unhappy paths that materially affect security, reliability, rollback, or recovery. Do not prescribe validators or operational work unrelated to the change.

## Pull-request evidence

- Check that the pull-request description matches the final diff and retains the current template headings. Verify validation evidence applies to the latest commit, the affected scope, and the actual commands and inputs used by current workflows.
- Flag missing, stale, blocked, or unsupported validation claims. Distinguish author-caused failures from remote outages, timeouts, missing CI credentials, repeated runs, and failures reproduced on the unchanged base.
- When AI materially shaped the change, verify the applicable AI label and the actual initial and material follow-up prompts grouped by tool in the PR body. A summary, chat link, or tool name alone is insufficient. Respect clearly identified redactions and do not request secrets, hidden instructions, or internal reasoning.
- Findings in review summaries require the same disposition as inline comments. Do not infer that silence, an approval, or an outdated thread resolved an earlier finding.
