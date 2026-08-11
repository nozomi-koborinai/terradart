/// IAM quickstart -- Workload Identity Federation (pool + GitHub OIDC provider),
/// curated `_iam_member` resources across Pub/Sub, Cloud Tasks, Secret Manager,
/// and IAP App Engine, plus the [GoogleServiceAccount] they bind to.
///
/// Demonstrates the additive `_iam_member` pattern across:
///   1. `google_pubsub_topic_iam_member`
///   2. `google_pubsub_subscription_iam_member`
///   3. `google_cloud_tasks_queue_iam_member`
///   4. `google_secret_manager_secret_iam_member`
///   5. `google_iap_app_engine_service_iam_member`
///   6. `google_iap_app_engine_version_iam_member`
///   7. `google_iap_web_type_app_engine_iam_member`
///   8. `google_iap_agent_registry_iam_member`
///   9. `google_iap_location_web_iam_member`
///  10. `google_iap_web_iam_member`
///  11. `google_iap_web_type_compute_iam_member`
///
/// IAM-core resources (custom role, project binding, SA impersonation, SA key):
///  10. `google_project_iam_custom_role`
///  11. `google_project_iam_member`
///  12. `google_service_account_iam_member`
///  13. `google_service_account_key`
///
/// WIF (0.12.5 debt): `google_iam_workload_identity_pool_provider` with
/// sealed [IamWorkloadIdentityPoolProviderOidcTrust] for GitHub Actions.
///
/// Each IAM resource has a slightly different identity surface (topic name
/// vs. subscription name vs. queue name+location vs. secret_id) -- this
/// example shows the right `TfRef` getter for each. The service account
/// member string is wired via `sa.member` (the pre-formatted
/// `serviceAccount:<email>` attribute) so no manual prefix concatenation
/// is needed.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_tasks.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/secret_manager.dart';

/// IAM showcase Stack.
final class IamShowcaseStack extends Stack {
  IamShowcaseStack({
    required String projectId,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // ---- Workload Identity Federation pool + provider --------------------
    //
    // Pool namespace plus GitHub Actions OIDC trust binding (sealed
    // `trustSource` API from terradart 0.12.3+).

    final wifPool = add(
      GoogleIamWorkloadIdentityPool(
        localName: 'ci',
        workloadIdentityPoolId: TfArg.literal('github-actions'),
        displayName: TfArg.literal('GitHub Actions CI/CD'),
      ),
    );

    add(
      GoogleIamWorkloadIdentityPoolProvider(
        localName: 'github_provider',
        workloadIdentityPoolId: TfArg.ref(wifPool.nameRef),
        workloadIdentityPoolProviderId: TfArg.literal('github-actions'),
        displayName: TfArg.literal('GitHub Actions OIDC'),
        attributeCondition: TfArg.literal(
          'assertion.repository_owner == "my-org"',
        ),
        attributeMapping: TfArg.literal({
          'google.subject': 'assertion.repository',
          'attribute.repository_owner': 'assertion.repository_owner',
        }),
        trustSource: IamWorkloadIdentityPoolProviderOidcTrust(
          allowedAudiences: [TfArg.literal('https://github.com/my-org')],
          issuerUri: TfArg.literal(
            'https://token.actions.githubusercontent.com',
          ),
        ),
        dependsOn: [ResourceDependency(wifPool)],
      ),
    );

    // ---- Service account -------------------------------------------------
    //
    // The SA the four bindings below grant roles to. `sa.member` is the
    // computed `serviceAccount:<email>` string -- pass it straight to each
    // `_iam_member` resource without manually prepending `serviceAccount:`.

    final sa = add(
      GoogleServiceAccount(
        localName: 'demo',
        accountId: TfArg.literal('demo-sa'),
        displayName: TfArg.literal('IAM quickstart demo SA'),
      ),
    );

    final saMember = TfArg.ref(sa.iamMember);

    // Additive IAM on the pool itself: lets the demo SA read pool/provider
    // metadata without granting the authoritative pool policy.
    add(
      GoogleIamWorkloadIdentityPoolIamMember(
        localName: 'wif_pool_viewer',
        workloadIdentityPoolId: TfArg.ref(wifPool.nameRef),
        role: TfArg.literal('roles/iam.workloadIdentityPoolViewer'),
        member: saMember,
        dependsOn: [
          ResourceDependency(wifPool),
          ResourceDependency(sa),
        ],
      ),
    );

    final apiPubsub = add(
      GoogleProjectService(
        localName: 'api_pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiCloudTasks = add(
      GoogleProjectService(
        localName: 'api_cloudtasks',
        service: TfArg.literal('cloudtasks.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiSecretManager = add(
      GoogleProjectService(
        localName: 'api_secretmanager',
        service: TfArg.literal('secretmanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: TfArg.literal('iap.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // ---- Resources to grant against ----------------------------------------

    final topic = add(
      GooglePubsubTopic(
        localName: 'demo',
        name: TfArg.literal('demo-topic'),
        dependsOn: [ResourceDependency(apiPubsub)],
      ),
    );

    final subscription = add(
      GooglePubsubSubscription(
        localName: 'demo_sub',
        name: TfArg.literal('demo-sub'),
        // topic.id (NOT topic.nameRef) -- subscriptions need full path.
        topic: TfArg.ref(topic.id),
        dependsOn: [ResourceDependency(apiPubsub)],
      ),
    );

    final queue = add(
      GoogleCloudTasksQueue(
        localName: 'demo_queue',
        name: TfArg.literal('demo-queue'),
        location: TfArg.literal('us-central1'),
        dependsOn: [ResourceDependency(apiCloudTasks)],
      ),
    );

    final secret = add(
      GoogleSecretManagerSecret(
        localName: 'demo_secret',
        secretId: TfArg.literal('demo-secret'),
        replication: SecretManagerSecretReplication.auto(),
        dependsOn: [ResourceDependency(apiSecretManager)],
      ),
    );

    // ---- 1. Topic-level: publisher ----------------------------------------

    add(
      GooglePubsubTopicIamMember(
        localName: 'topic_publisher',
        // Topic IAM identifies the topic by its **name** (not id).
        topic: TfArg.ref(topic.nameRef),
        role: TfArg.literal('roles/pubsub.publisher'),
        member: saMember,
      ),
    );

    // ---- 2. Subscription-level: subscriber --------------------------------

    add(
      GooglePubsubSubscriptionIamMember(
        localName: 'sub_subscriber',
        // Subscription IAM uses the subscription **name**.
        subscription: TfArg.ref(subscription.nameRef),
        role: TfArg.literal('roles/pubsub.subscriber'),
        member: saMember,
      ),
    );

    // ---- 3. Queue-level: enqueuer -----------------------------------------

    add(
      GoogleCloudTasksQueueIamMember(
        localName: 'queue_enqueuer',
        // Queue IAM identifies via **name + location** (not id).
        name: TfArg.ref(queue.nameRef),
        location: TfArg.ref(queue.locationRef),
        role: TfArg.literal('roles/cloudtasks.enqueuer'),
        member: saMember,
      ),
    );

    // ---- 4. Secret-level: accessor ----------------------------------------

    add(
      GoogleSecretManagerSecretIamMember(
        localName: 'secret_accessor',
        // Secret IAM identifies via **secret_id** (not id / name).
        secretId: TfArg.ref(secret.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: saMember,
      ),
    );

    // ---- 5–7. IAP App Engine: service, version, and app-wide access ---------
    //
    // These use literal App Engine identifiers (no App Engine application
    // resource required for synth). `appId` is typically the GCP project ID.

    add(
      GoogleIapAppEngineServiceIamMember(
        localName: 'gae_service_invoker',
        appId: TfArg.literal(projectId),
        service: TfArg.literal('default'),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapAppEngineVersionIamMember(
        localName: 'gae_version_invoker',
        appId: TfArg.literal(projectId),
        service: TfArg.literal('default'),
        versionId: TfArg.literal('v1'),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapWebTypeAppEngineIamMember(
        localName: 'gae_app_invoker',
        appId: TfArg.literal(projectId),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    // ---- 8–9. IAP regional: Agent Registry and location-scoped web access ----
    //
    // These bind IAP access at a regional location without requiring App
    // Engine or a backend service resource in-stack.

    add(
      GoogleIapAgentRegistryIamMember(
        localName: 'agent_registry_invoker',
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapLocationWebIamMember(
        localName: 'location_web_invoker',
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    // Project-scoped IAP HTTPS (`iap.web`) and Compute backends
    // (`iap.web.type.compute`) — no App Engine / backend resource required.

    add(
      GoogleIapWebIamMember(
        localName: 'web_invoker',
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapWebTypeComputeIamMember(
        localName: 'web_type_compute_invoker',
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    // ---- 10. Custom role: minimal Cloud Storage observer -------------------
    //
    // A least-privilege custom role granting read-only access to GCS
    // objects + buckets. Useful as a building block when a predefined
    // role (e.g. `roles/storage.objectViewer`) is too broad or too narrow.

    final customRole = add(
      GoogleProjectIamCustomRole(
        localName: 'gcs_observer',
        roleId: TfArg.literal('gcsObserver'),
        title: TfArg.literal('GCS Observer'),
        permissions: TfArg.literal([
          'storage.objects.get',
          'storage.objects.list',
          'storage.buckets.get',
          'storage.buckets.list',
        ]),
        description: TfArg.literal(
          'Read-only access to GCS objects and bucket metadata.',
        ),
        stage: TfArg.literal(CustomRoleStage.ga),
      ),
    );

    // ---- 11. Project-level binding: grant custom role to demo SA -----------
    //
    // Wait for the custom role to exist before referencing it.

    add(
      GoogleProjectIamMember(
        localName: 'demo_sa_observer',
        project: TfArg.literal(projectId),
        // Reference the custom role's full path so Terraform binds against
        // the created resource (not just a string literal).
        role: TfArg.ref(customRole.nameRef),
        member: saMember,
        dependsOn: [ResourceDependency(customRole)],
      ),
    );

    // ---- 12. Service-account-level binding: impersonation ------------------
    //
    // A second SA represents whoever needs to impersonate `demo`. Granting
    // `roles/iam.serviceAccountUser` on `demo` lets the second SA generate
    // tokens for `demo` -- the standard cross-team handoff pattern.

    final impersonator = add(
      GoogleServiceAccount(
        localName: 'impersonator',
        accountId: TfArg.literal('demo-impersonator'),
        displayName: TfArg.literal('Demo SA impersonator'),
      ),
    );

    add(
      GoogleServiceAccountIamMember(
        localName: 'demo_sa_user',
        // Target SA is the demo SA; identified by its full resource path.
        serviceAccountId: TfArg.ref(sa.name),
        role: TfArg.literal('roles/iam.serviceAccountUser'),
        member: TfArg.ref(impersonator.iamMember),
      ),
    );

    // ---- 13. Long-lived SA key for the demo SA -----------------------------
    //
    // Only do this when integrating with a system that cannot accept
    // short-lived OAuth tokens. The `private_key` output is sensitive --
    // synth masks it from rendered Terraform JSON / app constants.

    add(
      GoogleServiceAccountKey(
        localName: 'demo_sa_key',
        serviceAccountId: TfArg.ref(sa.name),
        keyAlgorithm: TfArg.literal(KeyAlgorithm.rsa2048),
        privateKeyType: TfArg.literal(PrivateKeyType.googleCredentialsFile),
      ),
    );

    // The seam: export each resource path so the application side has
    // typed lookup keys for all four resources.
    addExport(
      'TOPIC_ID',
      ResourceIdExport(topic.id, emitTerraformOutput: true),
    );
    addExport(
      'SUBSCRIPTION_ID',
      ResourceIdExport(subscription.id, emitTerraformOutput: true),
    );
    addExport(
      'QUEUE_ID',
      ResourceIdExport(queue.id, emitTerraformOutput: true),
    );
    addExport(
      'SECRET_ID',
      ResourceIdExport(secret.id, emitTerraformOutput: true),
    );
    addExport(
      'CUSTOM_ROLE_NAME',
      ResourceIdExport(customRole.nameRef, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/iam_showcase_stack.app.dart');
  }
}
