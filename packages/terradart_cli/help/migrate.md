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
