// GENERATED FILE - DO NOT EDIT
// `dart tool/sync_help_topics.dart --fix` copies packages/terradart_cli/help/*.md
// here; tool/help_topics_test.dart fails when they differ.

/// `terradart help <topic>`: the text of each topic, by name; the
/// first line is its summary in `terradart help --list`.
const Map<String, String> helpTopics = {
  'agents': r'''
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
''',
  'backends': r'''
Where the state lives, declared in Dart.

The Stack carries its backend, so it is code like the resources:

  LocalBackend(path: 'state/dev.tfstate')
  GcsBackend(bucket: 'acme-tfstate', prefix: 'app')
  S3Backend(bucket: 'acme-tfstate', key: 'app/terraform.tfstate', region: 'us-east-1')

With no backend the state is terraform.tfstate in the Terraform directory.
terradart runs init before plan, apply, destroy and outputs, so the first
command after a backend change connects to it.

Per environment, a backend can be partial (const GcsBackend()) and get its
settings at init: runEnvironments(backendConfig: ...) names a
-backend-config file or key=value pairs for each member, and terradart runs
init -reconfigure with them every time, so a directory several environments
share never keeps another one's backend. On the command line,
--backend-config adds to them for one run:

  terradart plan --env dev --backend-config bucket=acme-dev-tfstate

Workspaces: runEnvironments(workspace: ...) or --workspace <name> selects a
Terraform workspace after init, creating it on the first plan or apply.

  terradart plan --env dev --workspace feature-x

When the backend changes (local to a bucket, one bucket to another), move
the state once:

  terradart state migrate --env dev
  terradart state migrate --env dev --auto-approve --no-input

terradart validate initializes without the backend, so it needs no
credentials and no state.

More: https://terradart.dev/docs/environments/
''',
  'engines': r'''
Which OpenTofu or Terraform binary terradart runs.

The first of:

  1. --engine-path <file>, --engine tofu|terraform, or engine_path / engine
     under terradart: in pubspec.yaml
  2. the engine that last applied this environment's state
     (.terradart/engines.json)
  3. tofu on PATH
  4. terraform on PATH
  5. OpenTofu downloaded from its GitHub release

  terradart engine
  terradart engine --engine terraform
  terradart plan --env dev --engine terraform

The download is the release terradart_cli pins (opentofu_version in
pubspec.yaml picks another), for Linux, macOS and Windows on amd64 and
arm64, checked against the SHA-256 the package ships. It is cached in
~/.cache/terradart (Linux), ~/Library/Caches/terradart (macOS) or
%LOCALAPPDATA%\terradart (Windows).

  TERRADART_CACHE_DIR        another cache directory
  TERRADART_OPENTOFU_MIRROR  download from a mirror of the release layout

A state written by one engine is rewritten for the other at its next apply,
and the first may not read it back. When the engine about to run is not the
one that wrote the state, terradart warns; when it picked the engine by
itself (3 to 5) it asks on a terminal, and otherwise stops with exit code 3
and the --engine flag that decides. No engine at all is exit code 11.

terradart migrate writes engine: terraform into the package it generates,
so a migrated project keeps the engine its state came from.

More: https://terradart.dev/docs/cli/#the-engine
''',
  'environments': r'''
One Stack, a Dart enum of deployments, and --env.

The environments are an enum in your package, not a setting. Each member
carries what differs (project, sizes, where its state lives), and
bin/infra.dart hands the members to runEnvironments:

  Future<void> main(List<String> args) => runEnvironments(
    args, Env.values, (env) => AppStack(env: env),
    defaultEnv: Env.dev,
  );

Which environment a command runs against, first match wins:

  1. --env <name> (-e)
  2. $TERRADART_ENV
  3. the defaultEnv runEnvironments gets
  4. the only member, when there is one
  5. on a terminal, a question listing the members; otherwise exit 64
     with the names and the command to run

When 2 or 3 chose it, apply and destroy ask "Apply environment "dev"
(default)?" on a terminal; --auto-approve skips that, and without a terminal
it is required. A name the enum does not declare exits 65.

  terradart plan --env dev
  terradart apply --env prd --auto-approve
  TERRADART_ENV=stg terradart plan

Each environment gets its own Terraform directory (tf-out/<name>) and define
file (.terradart/dart_defines.<name>.json). terradart synth without --env
writes every environment.

Three ways to keep the states apart:

  - one directory and one backend each (the default): the Stack picks the
    backend from the member, LocalBackend for one, GcsBackend for another;
  - one directory, partial backend configuration: backendConfig gives each
    member its -backend-config file or key=value pairs, and terradart runs
    init -reconfigure with them every time;
  - one directory, workspaces: workspace names the Terraform workspace to
    select after init (created on the first plan or apply).

--workspace and --backend-config override and extend them for one run.

More: https://terradart.dev/docs/environments/
''',
  'exit-codes': r'''
Each exit code means one thing, whichever step failed.

  0   success
  1   internal: anything else (a bug, a cancelled question)
  2   plan --detailed-exitcode found changes; not a failure
  3   input_required: an answer nobody can give
      (--auto-approve, or --engine on a state the other engine wrote)
  4   skill_drift: skill status --check found the agent skill missing,
      older, newer or edited
  5   local_edits: skill update kept a skill with local edits
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
''',
  'json': r'''
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
  notices        one-line warnings: skill_outdated, skill_newer
  error          on failure: code (terradart help exit-codes), message,
                 and flag, choices, engineExitCode when they apply
  next           commands to run next

A field that does not apply is left out. terradart migrate --report --json
is the migrator's own report, not this object.

More: https://terradart.dev/docs/cli/#json-and-exit-codes
''',
  'migrate': r'''
From a Terraform tree to a Dart package with the same plan.

  1. Size it. --report migrates in memory and writes nothing: every type,
     how many blocks translate and how many stay in Terraform, and why.

       terradart migrate --report --dir infra

  2. Migrate. One Stack per module directory, a tf-out/ tree mirroring the
     source, and MIGRATION.md with a reason for every block kept.

       terradart migrate --dir infra --out infra_dart
       terradart migrate --dir infra --out infra_dart --merge-envs

     --merge-envs folds sibling environment roots (envs/dev, envs/prod)
     into one Stack and an Env enum.

  3. Sidecars. A block with one argument the migrator cannot type stays in
     Terraform, verbatim, next to main.tf.json: terradart_leftover.tf,
     backend.tf, variables.tf, locals.tf, outputs.tf. Terraform merges
     every file in a directory, so the module is the one you had.

  4. Plan. With a local backend, copy terraform.tfstate into the new
     directory first; a remote backend is in the Stack and connects as is.

       terradart plan --env dev

     "No changes" means the migration is faithful.

  5. Port the rest: move a kept block into the Stack under the same name,
     delete it from the sidecar, and plan again until it says No changes.

The migrated package runs Terraform (engine: terraform in pubspec.yaml),
the engine its state came from.

More: https://terradart.dev/docs/migrate-from-hcl/
''',
  'outputs': r'''
Terraform outputs, and the define file a Flutter or Dart client builds with.

addOutput declares a Terraform output. addDartDefineOutput() declares one
more, a map of strings, that terradart writes as the JSON
--dart-define-from-file reads:

  addOutput('api_url', .literal(url));
  addDartDefineOutput();

terradart apply writes it after the apply; terradart outputs writes it from
the applied state without planning or applying (a client build job that can
read the state but not change it):

  terradart apply --env stg
  terradart outputs --env stg
  terradart outputs --env stg --dry-run

The file is .terradart/dart_defines.json, or
.terradart/dart_defines.<env>.json with --env. --define-output <name> picks
one of several define outputs, --define-file <path> writes elsewhere, and
terradart.dart_defines in pubspec.yaml sets both for every run. .terradart/
gets its own .gitignore, so the file never reaches git. --dry-run prints the
file and its keys and writes nothing; --json lists the keys, never the
values.

Build with it:

  flutter run --dart-define-from-file=.terradart/dart_defines.stg.json
  flutter build web --dart-define-from-file=.terradart/dart_defines.stg.json

The generated reader (const <Stack>Outputs.fromDartDefine()) says how to get
the file when the app starts without it.

More: https://terradart.dev/docs/client-outputs/
''',
};
