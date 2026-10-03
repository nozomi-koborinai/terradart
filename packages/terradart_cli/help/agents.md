Running terradart from a coding agent or a script.

Give every command --no-input --json:

  terradart plan --env dev --no-input --json
  terradart apply --env dev --dry-run --no-input --json
  terradart apply --env dev --auto-approve --no-input --json

  - It never waits for an answer. Where one is needed it exits 3
    (--auto-approve) or 64 (--env), and the result's next holds the
    command to run. Add --auto-approve only when the user asked for the
    apply.
  - Read ok, exitCode, error.code, error.choices and next from stdout
    instead of parsing the log on stderr (terradart help json).
  - 10 means the Dart entry point failed: fix the Stack. 12 means the
    engine failed: error.engineExitCode is its code, and the reason is on
    stderr.

terradart also stops asking by itself in CI ($CI) and in a known agent's
shell (AI_AGENT, CURSOR_AGENT, CLAUDECODE, GEMINI_CLI, CODEX_SANDBOX,
CODEX_THREAD_ID, OPENCODE), and with TERRADART_NO_INPUT=1.

The TerraDart Agent Skill tells an agent where the factories, the examples
and these commands are. A project terradart init creates points at it from
AGENTS.md; elsewhere, install it into the agent's skills directories
(.agents/skills/, .claude/skills/) at this CLI's version, and keep it there:

  terradart skill install
  terradart skill status --check

More: https://terradart.dev/docs/agents/
