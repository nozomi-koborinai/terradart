# Security Policy

## Reporting a vulnerability

**Please do not open public issues for security problems.**

Use the GitHub private security advisory flow:

1. Go to https://github.com/nozomi-koborinai/terradart/security/advisories.
2. Click "Report a vulnerability".
3. Describe the issue, ideally with reproduction steps.

If you cannot use GitHub advisories, email kobofender@gmail.com with the subject `[terradart-security]`. Expect an acknowledgement within **5 business days**. If you receive no response within **10 business days**, please open a minimal placeholder GitHub advisory (no exploit detail) so the report is not silently lost.

## What counts as a vulnerability

- terradart emitting JSON that, when applied, exposes sensitive values that should have been masked (e.g. `@Sensitive` field surfaced to logs / state in plaintext).
- Codegen producing Dart code that bypasses Terraform's intended access controls.
- Build-time injection paths in the codegen pipeline (e.g. malicious provider schema input causing unsafe code emission).
- Path traversal or arbitrary-file-read in `terradart wrap --source <dir>` when consuming attacker-controlled provider schema JSON or `mm/*.yaml` overlay files (maintainer tooling).
- Code injection via maliciously crafted provider schema JSON or YAML overlay (resource names, descriptions, or annotations that escape Dart string/identifier emission).
- Synthesized `.tf.json` emitting an unintended resource, attribute, or IAM binding not present in the user's Stack source — i.e. `StackSynth.synth()` output diverging from declared intent.
- Dependency vulnerabilities in packages bundled into the published `terradart` / `terradart_codegen` releases.

What does **not** count:

- Misconfigured Stacks written by users (e.g. a public IAM binding the user authored). terradart faithfully synthesizes what you wrote.
- Vulnerabilities in `terraform` itself, the Google provider, or Google Cloud APIs.
- Credentials, project IDs, or service account keys leaked by the **user** into their HCL, Dart Stack code, or `terraform.tfvars`. terradart never reads these.
- IAM bindings authored by the user that grant overly broad access (`roles/owner`, `allUsers`, etc.). terradart synthesizes the binding you wrote.

## Supported versions

Pin dependencies with `^0.17.x` on [pub.dev](https://pub.dev/packages/terradart_core) today.

| Version | Status | Security fixes |
|---|---|---|
| **0.17.x** (pre-alpha, current) | **Best-effort** | Yes, on a rolling basis — no embargo guarantees |
| **0.11.x and older** | Unsupported | Upgrade to 0.17.x; see [MIGRATING.md](MIGRATING.md) |
| **0.17.x** (beta, planned) | Best-effort with clearer minor-boundary policy | See [status on terradart.dev](https://terradart.dev/docs/status/) |

## Disclosure policy

**Best-effort, target 90 days** from confirmed-report to public advisory. As a single-maintainer pre-alpha project, we cannot guarantee this window — straightforward fixes typically ship within 30 days; fixes requiring upstream changes (provider schema, Dart SDK) may exceed 90 days. Reporters will be kept informed of timeline shifts on the embargoed advisory thread.

CVE IDs are requested via GitHub's CNA on advisory publication.

Embargoed reports are kept on the GitHub advisory; reporters are credited in the advisory unless they request anonymity.

## Maintainer availability

Single-maintainer project. If you receive no acknowledgement within 10 business days via either channel, the maintainer is presumed unavailable; please escalate by opening a minimal public issue titled `[security: unreachable]` with no exploit detail, so other watchers see the situation.

## Supply-chain assurance

terradart is published to pub.dev by `nozomi-koborinai` via GitHub Actions OIDC trusted publishing (see `.github/workflows/publish.yml`). Verify the [pub.dev publisher](https://pub.dev/packages/terradart_core/publisher) before depending on releases. Report any package on pub.dev impersonating terradart through the channels above.
