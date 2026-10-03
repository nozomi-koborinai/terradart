One result object on stdout, for scripts and agents.

With --json, stdout is one JSON object printed when the command ends; the
progress, the entry point's and the engine's output go to stderr. It
implies --no-input, and goes before or after the command.

  terradart plan --env dev --json
  terradart --json apply --env dev --auto-approve

  {
    "schemaVersion": 1,
    "command": "plan",
    "ok": true,
    "exitCode": 0,
    "env": {"name": "dev", "source": "flag"},
    "engine": {"kind": "tofu", "version": "1.13.1", "source": "path", "path": "..."},
    "outDir": "tf-out/dev",
    "plan": {"add": 3, "change": 0, "destroy": 0, "replace": 0},
    "notices": [],
    "next": ["terradart apply --env dev"]
  }

  schemaVersion  1; raised only for a change that breaks a reader
  env.source     flag, variable, default, only, prompt
  engine.source  engine_path, setting, state, path, managed
  plan           from show -json of the saved plan; a replacement counts
                 once, as replace
  dryRun         true when --dry-run stopped before any change
  defineFile     apply, outputs: the define file written
  keys           its keys; never the values
  error          on failure: code (terradart help exit-codes), message,
                 and flag, choices, engineExitCode when they apply
  next           commands to run next

A field that does not apply is left out. terradart migrate --report --json
is the migrator's own report, not this object.

More: https://terradart.dev/docs/cli/#json-and-exit-codes
