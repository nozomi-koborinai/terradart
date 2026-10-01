---
title: Coding agents
description: How a coding agent finds the right TerraDart factory — the TerraDart Agent Skill, the generated sources, the examples, and llms.txt.
---

TerraDart's factories are generated Dart that ships in the provider packages, so a coding agent can read the exact constructor instead of guessing a name. Nothing needs to run beside the agent. It needs to know where to look, and the **TerraDart Agent Skill** tells it.

## Install the skill

The skill is [`skills/terradart/SKILL.md`](https://github.com/nozomi-koborinai/terradart/blob/main/skills/terradart/SKILL.md) in the repository, in the [Agent Skills](https://agentskills.io) format. Install it with the `skills` CLI:

```bash
npx skills add nozomi-koborinai/terradart --skill terradart
```

Or copy the file into your agent's skills directory, for example `.claude/skills/terradart/SKILL.md` or `.agents/skills/terradart/SKILL.md`.

## What the skill tells the agent

- **Which package** owns a Terraform type (`google_*`, `aws_*`, `cloudflare_*`, `appwrite_*`, beta-only `google_*`).
- **How to find the class and barrel.** Each package's generated `lib/src/_catalog.g.dart` maps every Terraform type to its class name and barrel, and the wrapper's doc comment lists its arguments.
- **Where the runnable examples are.** More than 100 quickstarts under [`examples/`](https://github.com/nozomi-koborinai/terradart/tree/main/examples) are synthesized and checked with `terraform validate` in CI.
- **How to check the result**: `dart analyze`, then synth, then `terraform validate`.
- **How to migrate existing Terraform**: run [`terradart-migrate`](/docs/migrate-from-hcl/) first (`--report` to size the tree, then a real run), port the leftover sidecar blocks into the Stack one at a time, synthesize, and require `terraform plan` to report *No changes*. The migrator does the mechanical translation; the agent only finishes what it kept in Terraform.

## Without a checkout

- [`/llms.txt`](/llms.txt) is these docs, condensed for LLMs.
- [Coverage](/docs/coverage/) lists every factory of every provider package with its barrel and the examples that use it.

## terradart-mcp was retired

Up to 0.28.x, TerraDart shipped `terradart-mcp`, a local MCP server with catalog lookup tools. Its catalog tools only covered `terradart_google`, and it duplicated the two CLIs, so it was removed in favour of the skill. If you installed it, run `brew uninstall terradart-mcp` and remove its entry from your MCP client configuration.
