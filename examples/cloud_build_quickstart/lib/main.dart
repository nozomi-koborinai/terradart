/// Cloud Build quickstart -- Wave 7 Batch 1 end-to-end example.
///
/// Defines a `CloudBuildStack` that provisions the canonical Cloud
/// Build v2 CI/CD chain: a GitHub-App-backed connection, a linked
/// source repository, an Artifact Registry to receive built images,
/// IAM granting the build service account push access, a private
/// worker pool, and a v2 trigger that fires on pushes to `main`:
///
///  1. `google_cloudbuildv2_connection` -- the GitHub App connection.
///     The OAuth token is sourced from a Secret Manager secret version
///     (placeholder path; in real usage substitute a real
///     `secret_manager_secret_version.id` ref).
///  2. `google_cloudbuildv2_repository` -- links a remote GitHub repo
///     into the connection so v2 triggers can reference it directly.
///  3. `google_artifact_registry_repository` -- Docker-format registry
///     in `asia-northeast1` where build steps push container images.
///  4. `google_artifact_registry_repository_iam_member` -- grants the
///     build service account `roles/artifactregistry.writer` so the
///     trigger run can push images.
///  5. `google_cloudbuild_worker_pool` -- private pool that runs build
///     workloads inside a peered VPC for network isolation.
///  6. `google_cloudbuild_trigger` -- v2 trigger pointing at the
///     repository from step 2, executes `cloudbuild.yaml` on pushes
///     to `main`, and dispatches the work to the private pool.
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/artifact_registry.dart';
import 'package:terradart_google/cloud_build.dart';
import 'package:terradart_google/provider.dart';

class CloudBuildStack extends Stack {
  CloudBuildStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const region = 'asia-northeast1';

    // ---- 1. GitHub App connection ----------------------------------------
    //
    // A v2 connection brokers OAuth between Cloud Build and GitHub via the
    // installed GitHub App. `app_installation_id` is the numeric installation
    // ID surfaced by GitHub when the app is installed against an org/repo.
    // `oauth_token_secret_version` references a Secret Manager secret version
    // holding the user OAuth token; here it's a placeholder literal -- in a
    // real stack, prefer `TfArg.ref(secretVersion.id)` to keep the secret as
    // the source of truth.

    final lbConn = add(
      GoogleCloudbuildv2Connection(
        localName: 'lb_conn',
        location: TfArg.literal(region),
        name: TfArg.literal('github-app-conn'),
        githubConfig: CloudBuildV2ConnectionGithubConfig(
          appInstallationId: TfArg.literal(12345),
          authorizerCredential: CloudBuildV2ConnectionGithubAuthorizerCredential(
            oauthTokenSecretVersion: TfArg.literal(
              'projects/p/secrets/github-oauth/versions/1',
            ),
          ),
        ),
      ),
    );

    // ---- 2. Linked GitHub repository -------------------------------------
    //
    // Binds a specific remote GitHub repo to the v2 connection. v2 triggers
    // (step 6) reference this repository directly rather than re-specifying
    // owner/name on each trigger.

    final lbRepo = add(
      GoogleCloudbuildv2Repository(
        localName: 'lb_repo',
        location: TfArg.literal(region),
        name: TfArg.literal('myapp'),
        parentConnection: TfArg.ref<String>(lbConn.id),
        remoteUri: TfArg.literal('https://github.com/example/myapp.git'),
      ),
    );

    // ---- 3. Artifact Registry (Docker) -----------------------------------
    //
    // The destination registry for build-produced container images. Standard
    // mode (not remote/virtual) -- this is the canonical "push images here"
    // shape for a CI/CD pipeline.

    final lbAr = add(
      GoogleArtifactRegistryRepository(
        localName: 'lb_ar',
        location: TfArg.literal(region),
        repositoryId: TfArg.literal('myapp-images'),
        format: TfArg.literal('DOCKER'),
        mode: TfArg.literal(ArtifactRegistryMode.standardRepository),
        description: TfArg.literal('Container images built by Cloud Build'),
      ),
    );

    // ---- 4. AR IAM: grant the build SA writer ----------------------------
    //
    // The trigger executes as a build service account; that account needs
    // `artifactregistry.writer` on the destination repo to `docker push` the
    // resulting image. Substitute the real SA email for your project.

    add(
      GoogleArtifactRegistryRepositoryIamMember(
        localName: 'lb_ar_iam',
        location: TfArg.literal(region),
        repository: TfArg.ref<String>(lbAr.nameRef),
        role: TfArg.literal('roles/artifactregistry.writer'),
        member: TfArg.literal(
          'serviceAccount:cloud-build-sa@\${var.project_id}.iam.gserviceaccount.com',
        ),
      ),
    );

    // ---- 5. Private worker pool ------------------------------------------
    //
    // A private pool runs build workloads on dedicated workers inside a
    // peered VPC -- useful when steps need to reach private resources
    // (private GKE control planes, Cloud SQL private IPs, on-prem via
    // Interconnect). `peered_network` is a placeholder; substitute a real
    // VPC self_link in production.

    final lbPool = add(
      GoogleCloudbuildWorkerPool(
        localName: 'lb_pool',
        name: TfArg.literal('private-pool'),
        location: TfArg.literal(region),
        workerConfig: CloudBuildWorkerPoolWorkerConfig(
          machineType: TfArg.literal('e2-standard-4'),
          diskSizeGb: TfArg.literal(100),
        ),
        networkConfig: CloudBuildWorkerPoolNetworkConfig(
          peeredNetwork: TfArg.literal(
            'projects/PROJECT_ID/global/networks/cloudbuild-peered-vpc',
          ),
        ),
      ),
    );

    // ---- 6. v2 trigger: push.branch == "main" ----------------------------
    //
    // A v2 trigger references the repository directly via `repository` and
    // dispatches its work to the private pool. Pushes to `main` execute the
    // `cloudbuild.yaml` checked into the repo root.

    add(
      GoogleCloudbuildTrigger(
        localName: 'lb_trigger',
        name: TfArg.literal('myapp-main-push'),
        location: TfArg.literal(region),
        repositoryEventConfig: CloudBuildTriggerRepositoryEventConfig(
          repository: TfArg.ref<String>(lbRepo.id),
          push: CloudBuildTriggerPushFilter(branch: TfArg.literal('^main\$')),
        ),
        filename: TfArg.literal('cloudbuild.yaml'),
        serviceAccount: TfArg.literal(
          'projects/\${var.project_id}/serviceAccounts/cloud-build-sa@\${var.project_id}.iam.gserviceaccount.com',
        ),
        // Worker pool dispatch is configured inside `cloudbuild.yaml`
        // via `options.pool.name`, fed by the `_WORKER_POOL`
        // substitution exported here. (The trigger schema attaches a
        // pool only through inline `build.options`; the `filename` form
        // delegates pool selection to the in-repo build config.)
        substitutions: TfArg.literal({'_WORKER_POOL': lbPool.id.interpolation}),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
