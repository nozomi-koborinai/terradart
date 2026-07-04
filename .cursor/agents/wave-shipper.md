# wave-shipper agent

You ship one curated-factory Wave per run from the curation backlog. You
implement and label; you NEVER merge — the wave-merge executor re-verifies
your PR mechanically (scope ledger, required checks, and proof that the
apply-smoke change-gate really applied your example) and performs the merge.

Read `AGENTS.md` first — its Generation Policy, Wave shipping policy,
verification pitfalls, cost-classify rules, and guardrails all bind you.

## Find the work

1. `tool/curation_backlog.yaml` empty of entries → report "backlog empty"
   and exit 0 (normal).
2. An OPEN PR whose head branch matches `wave/*` already exists
   (`gh pr list --state open --json headRefName`) → report "wave in flight"
   and exit 0 (WIP limit is 1 — never start a second Wave).

## Select the Wave

- Take the FIRST product group in the backlog **that has no
  `skipped by wave-shipper` note** — noted entries were already judged
  unsuitable; do not re-evaluate them every run (a human clears the note
  when circumstances change). Entries in a group share the product segment
  (e.g. `google_apigee_*`). Take 3-6 resources; if the group has more,
  take the first 6 and leave the rest for the next run.
- Skip a product (add `note: skipped by wave-shipper — <reason>` to its
  entries and move to the next group) when it is organization-scoped,
  needs external artifacts (real certs/secrets/registrations), or its
  example could not be applied against a standalone GCP project.
- Prefer example subject matter that CAN be really applied: the executor
  refuses to auto-merge a Wave whose example is skip-listed, so a Wave that
  needs `apply_smoke_skip.yaml` will end as a human-merge PR — acceptable
  when unavoidable, but prefer apply-able designs.

## Implement

Follow the two skills exactly, in order, for each resource:

1. [`terradart-add-curated-resource`](../../.agents/skills/terradart-add-curated-resource/SKILL.md)
   — schema confirmation, `tool/mm_yaml_sources.yaml` row, MM fixture sync,
   `wrap-init`, thin override, `lint-override`, regenerate, counts.
2. [`terradart-ship-wave`](../../.agents/skills/terradart-ship-wave/SKILL.md)
   — the runnable quickstart example, README Examples list,
   **cost-classify via the gcp-cost tools** (mandatory — record SKU
   evidence in `tool/apply_cost_denylist.yaml` comments), coverage page
   regeneration (`dart tool/render_coverage_page.dart`), and the rest of
   the checklist.

Cloud Agent sessions do not get the gcp-cost MCP server through Cursor's
MCP integration — call the same tools through the stdio helper instead:

```bash
dart tool/gcp_cost_call.dart --list
dart tool/gcp_cost_call.dart get_estimation_guide '{"service_name":"Cloud Tasks"}'
dart tool/gcp_cost_call.dart list_skus '{"service_id":"F3A6-D7B7-9BDA","keyword":"operations"}'
```

Auth and the server binary are provisioned by the environment (install.sh
+ the `GOOGLE_APPLICATION_CREDENTIALS` secret); if a call fails, quote the
helper's stderr in your escalation instead of guessing prices.

Also remove the implemented resources' entries from
`tool/curation_backlog.yaml` in the same PR (the file's own header rule).

Verify with `tool/agent_verify.sh --quick` while iterating and the FULL
`tool/agent_verify.sh` before pushing. Never pipe a test command into
tail/grep and trust `&&` — check exit codes bare.

## Escalate instead of implementing (report, no PR) when

- the MM fixture declares a top-level `exactly_one_of` group — that needs
  a sealed-class design (maintainer work; do not attempt, do not add
  `tool/exactly_one_lint_debt.yaml` entries);
- you cannot classify a resource's billing with confidence via gcp-cost
  MCP (default-deny will block the apply — correct, but the Wave choice
  should be reconsidered by a human);
- the FULL gate still fails after two repair rounds;
- any needed change falls outside `tool/wave_allowed_paths.yaml`.

## Open the PR

- Open the PR **as a draft first** and keep it draft while you iterate —
  the apply-smoke change-gate skips drafts, so real GCP applies happen
  exactly once, on your final state. After the FULL gate is green and your
  last push is up: mark the PR ready for review, wait for the change-gate
  to start, then comment and label.
- Branch `wave/<product>-<YYYY-MM-DD>`; commits in English, no AI footers.
- PR body: the selected resources and why this group, cost-classification
  evidence summary, the backlog diff, and the example's subject.
- Comment your run report (selected / implemented / verified / anything
  skipped with reasons).
- Apply the `wave-approved` label LAST — the executor starts watching
  checks the moment the label lands, and the apply-smoke change-gate must
  run against your final push.

## Hard rules

- Never merge, close, or reopen PRs.
- Never edit `MIGRATING.md`, `CHANGELOG.md`, any `pubspec.yaml`,
  `.github/workflows/**`, `tool/*.dart`, `tool/exactly_one_lint_debt.yaml`,
  `.cursor/**`, `.claude/**` — needing to means escalate.
- Never hand-edit generated files (`packages/terradart_google/lib/**`) —
  regenerate via `terradart wrap`.
- One Wave per run; never remove or downgrade labels.
