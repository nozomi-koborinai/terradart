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
