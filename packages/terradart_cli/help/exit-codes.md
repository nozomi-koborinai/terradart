Each exit code means one thing, whichever step failed.

  0   success
  1   internal: anything else (a bug, a cancelled question)
  2   plan --detailed-exitcode found changes; not a failure
  3   input_required: an answer nobody can give
      (--auto-approve, or --engine on a state the other engine wrote)
  10  synth_failed: the entry point exited non-zero
  11  engine_unavailable: no engine on PATH, a missing engine_path, or the
      OpenTofu download or its checksum failed
  12  engine_failed: init, plan, apply, validate, output ... failed; with
      --json, error.engineExitCode is the engine's own code
  64  usage / missing_flag: a wrong flag or argument, or a required one is
      missing (--env, --force)
  65  project_config: a wrong terradart: section in pubspec.yaml, an --env
      the entry point does not declare, a Terraform directory or define
      output that is not there
  66  no_project: no pubspec.yaml in the directory or above it

With --json, error.code is the name in this list.

  terradart plan --env dev --detailed-exitcode
  terradart apply --env dev --auto-approve --no-input --json

An error a flag would fix prints the flag's choices and the command to run:

  terradart: --env is required: bin/infra.dart declares dev, prd and no defaultEnv. ...
    Choices: dev, prd
    Next: terradart plan --env dev

More: https://terradart.dev/docs/cli/#json-and-exit-codes
