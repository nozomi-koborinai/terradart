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
