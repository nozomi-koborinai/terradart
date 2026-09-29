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
///  14. `google_os_login_ssh_public_key`
///  15. `google_workload_identity_service_agent`
///  16. `google_iam_oauth_client`
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
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/secret_manager.dart';

/// IAM showcase Stack.
final class IamShowcaseStack extends Stack {
  IamShowcaseStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // ---- Workload Identity Federation pool + provider --------------------
    //
    // Pool namespace plus GitHub Actions OIDC trust binding (sealed
    // `trustSource` API from terradart 0.12.3+).

    final wifPool = add(
      GoogleIamWorkloadIdentityPool(
        localName: 'ci',
        workloadIdentityPoolId: .literal('github-actions'),
        displayName: .literal('GitHub Actions CI/CD'),
      ),
    );

    add(
      GoogleIamWorkloadIdentityPoolProvider(
        localName: 'github_provider',
        workloadIdentityPoolId: .ref(wifPool.nameRef),
        workloadIdentityPoolProviderId: .literal('github-actions'),
        displayName: .literal('GitHub Actions OIDC'),
        attributeCondition: .literal('assertion.repository_owner == "my-org"'),
        attributeMapping: .literal({
          'google.subject': 'assertion.repository',
          'attribute.repository_owner': 'assertion.repository_owner',
        }),
        trustSource: .oidc(
          allowedAudiences: [.literal('https://github.com/my-org')],
          issuerUri: .literal('https://token.actions.githubusercontent.com'),
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
        accountId: .literal('demo-sa'),
        displayName: .literal('IAM quickstart demo SA'),
      ),
    );

    final saMember = TfArg.ref(sa.iamMember);

    // Additive IAM on the pool itself: lets the demo SA read pool/provider
    // metadata without granting the authoritative pool policy.
    add(
      GoogleIamWorkloadIdentityPoolIamMember(
        localName: 'wif_pool_viewer',
        workloadIdentityPoolId: .ref(wifPool.nameRef),
        role: .literal('roles/iam.workloadIdentityPoolViewer'),
        member: saMember,
        dependsOn: [ResourceDependency(wifPool), ResourceDependency(sa)],
      ),
    );

    final apiPubsub = add(
      GoogleProjectService(
        localName: 'api_pubsub',
        service: .literal('pubsub.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiCloudTasks = add(
      GoogleProjectService(
        localName: 'api_cloudtasks',
        service: .literal('cloudtasks.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiSecretManager = add(
      GoogleProjectService(
        localName: 'api_secretmanager',
        service: .literal('secretmanager.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: .literal('iap.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // ---- Resources to grant against ----------------------------------------

    final topic = add(
      GooglePubsubTopic(
        localName: 'demo',
        name: .literal('demo-topic'),
        dependsOn: [ResourceDependency(apiPubsub)],
      ),
    );

    final subscription = add(
      GooglePubsubSubscription(
        localName: 'demo_sub',
        name: .literal('demo-sub'),
        // topic.id (NOT topic.nameRef) -- subscriptions need full path.
        topic: .ref(topic.id),
        dependsOn: [ResourceDependency(apiPubsub)],
      ),
    );

    final queue = add(
      GoogleCloudTasksQueue(
        localName: 'demo_queue',
        name: .literal('demo-queue'),
        location: .literal('us-central1'),
        dependsOn: [ResourceDependency(apiCloudTasks)],
      ),
    );

    final secret = add(
      GoogleSecretManagerSecret(
        localName: 'demo_secret',
        secretId: .literal('demo-secret'),
        replication: SecretManagerSecretReplication.auto(),
        dependsOn: [ResourceDependency(apiSecretManager)],
      ),
    );

    // ---- 1. Topic-level: publisher ----------------------------------------

    add(
      GooglePubsubTopicIamMember(
        localName: 'topic_publisher',
        // Topic IAM identifies the topic by its **name** (not id).
        topic: .ref(topic.nameRef),
        role: .literal('roles/pubsub.publisher'),
        member: saMember,
      ),
    );

    // ---- 2. Subscription-level: subscriber --------------------------------

    add(
      GooglePubsubSubscriptionIamMember(
        localName: 'sub_subscriber',
        // Subscription IAM uses the subscription **name**.
        subscription: .ref(subscription.nameRef),
        role: .literal('roles/pubsub.subscriber'),
        member: saMember,
      ),
    );

    // ---- 3. Queue-level: enqueuer -----------------------------------------

    add(
      GoogleCloudTasksQueueIamMember(
        localName: 'queue_enqueuer',
        // Queue IAM identifies via **name + location** (not id).
        name: .ref(queue.nameRef),
        location: .ref(queue.locationRef),
        role: .literal('roles/cloudtasks.enqueuer'),
        member: saMember,
      ),
    );

    // ---- 4. Secret-level: accessor ----------------------------------------

    add(
      GoogleSecretManagerSecretIamMember(
        localName: 'secret_accessor',
        // Secret IAM identifies via **secret_id** (not id / name).
        secretId: .ref(secret.secretIdRef),
        role: .literal('roles/secretmanager.secretAccessor'),
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
        appId: .literal(projectId),
        service: .literal('default'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapAppEngineVersionIamMember(
        localName: 'gae_version_invoker',
        appId: .literal(projectId),
        service: .literal('default'),
        versionId: .literal('v1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapWebTypeAppEngineIamMember(
        localName: 'gae_app_invoker',
        appId: .literal(projectId),
        role: .literal('roles/iap.httpsResourceAccessor'),
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
        location: .literal('us-central1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapLocationWebIamMember(
        localName: 'location_web_invoker',
        location: .literal('us-central1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    // Project-scoped IAP HTTPS (`iap.web`) and Compute backends
    // (`iap.web.type.compute`) — no App Engine / backend resource required.

    add(
      GoogleIapWebIamMember(
        localName: 'web_invoker',
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: saMember,
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    add(
      GoogleIapWebTypeComputeIamMember(
        localName: 'web_type_compute_invoker',
        role: .literal('roles/iap.httpsResourceAccessor'),
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
        roleId: .literal('gcsObserver'),
        title: .literal('GCS Observer'),
        permissions: .literal([
          'storage.objects.get',
          'storage.objects.list',
          'storage.buckets.get',
          'storage.buckets.list',
        ]),
        description: .literal(
          'Read-only access to GCS objects and bucket metadata.',
        ),
        stage: .literal(.ga),
      ),
    );

    // ---- 11. Project-level binding: grant custom role to demo SA -----------
    //
    // Wait for the custom role to exist before referencing it.

    add(
      GoogleProjectIamMember(
        localName: 'demo_sa_observer',
        project: .literal(projectId),
        // Reference the custom role's full path so Terraform binds against
        // the created resource (not just a string literal).
        role: .ref(customRole.nameRef),
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
        accountId: .literal('demo-impersonator'),
        displayName: .literal('Demo SA impersonator'),
      ),
    );

    add(
      GoogleServiceAccountIamMember(
        localName: 'demo_sa_user',
        // Target SA is the demo SA; identified by its full resource path.
        serviceAccountId: .ref(sa.name),
        role: .literal('roles/iam.serviceAccountUser'),
        member: .ref(impersonator.iamMember),
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
        serviceAccountId: .ref(sa.name),
        keyAlgorithm: .literal(.rsa2048),
        privateKeyType: .literal(.googleCredentialsFile),
      ),
    );

    // ---- 14. OS Login SSH public key on the demo SA -----------------------
    //
    // Imports a dummy ssh-ed25519 public key onto the in-stack SA identity.
    // Does not provision a VM. Private key is not in the repo.

    final apiOsLogin = add(
      GoogleProjectService(
        localName: 'api_oslogin',
        service: .literal('oslogin.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleOsLoginSshPublicKey(
        localName: 'demo_ssh',
        user: .ref(sa.email),
        key: .literal(
          'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMlTZg5RNgdRr0tVBEkKHZOi3VCrR2eoC7e5stONs4Uw terradart-dummy',
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(sa), ResourceDependency(apiOsLogin)],
      ),
    );

    // ---- 15. Workload Identity service-agent mint -------------------------
    //
    // generateServiceAgents for Pub/Sub (already in this stack). Does not
    // grant IAM. MM exclude_delete: destroy drops state; Google-owned
    // SAs remain. The wrap fixture has no deletion_policy attribute.

    final current = addData(GoogleProject(localName: 'current'));

    final apiWorkloadIdentity = add(
      GoogleProjectService(
        localName: 'api_workloadidentity',
        service: .literal('workloadidentity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleWorkloadIdentityServiceAgent(
        localName: 'pubsub_agents',
        parent: .literal(
          'projects/${current.number.interpolation}/locations/global/serviceProducers/pubsub.googleapis.com',
        ),
        dependsOn: [ResourceDependency(apiWorkloadIdentity)],
      ),
    );

    // ---- 16. Workforce Identity Federation OAuth client -------------------
    //
    // App metadata only. PUBLIC_CLIENT so no client secret. Does not
    // complete OAuth or create a workforce pool.

    add(
      GoogleIamOauthClient(
        localName: 'demo_oauth',
        oauthClientId: .literal('terradart-oauth'),
        location: .literal('global'),
        allowedGrantTypes: .literal(['AUTHORIZATION_CODE_GRANT']),
        allowedRedirectUris: .literal(['https://www.example.com']),
        allowedScopes: .literal(['openid']),
        clientType: .literal('PUBLIC_CLIENT'),
        deletionPolicy: .literal('DELETE'),
      ),
    );

    // Coverage-only workforce factories (organization parent,
    // placeholder id); see the README's "Before you apply" section.
    final workforce = add(
      GoogleIamWorkforcePool(
        localName: 'workforce',
        location: .literal('global'),
        parent: .literal('organizations/123456789'),
        workforcePoolId: .literal('terradart-wf'),
        displayName: .literal('terradart workforce'),
        deletionPolicy: .literal('DELETE'),
      ),
    );

    add(
      GoogleIamWorkforcePoolIamMember(
        localName: 'workforce_viewer',
        workforcePoolId: .literal('terradart-wf'),
        location: .literal('global'),
        role: .literal('roles/iam.workforcePoolViewer'),
        member: saMember,
        dependsOn: [ResourceDependency(workforce), ResourceDependency(sa)],
      ),
    );

    final wfProvider = add(
      GoogleIamWorkforcePoolProvider(
        localName: 'workforce_oidc',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        trustSource: .oidc(
          issuerUri: .literal('https://accounts.google.com'),
          clientId: .literal('client.apps.googleusercontent.com'),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(workforce)],
      ),
    );

    add(
      GoogleIamWorkforcePoolProviderKey(
        localName: 'workforce_key',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        keyId: .literal('terradart-key'),
        use: .literal('ENCRYPTION'),
        keyData: IamWorkforcePoolProviderKeyKeyData(
          keySpec: .literal(.rsa2048),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(wfProvider)],
      ),
    );

    final scim = add(
      GoogleIamWorkforcePoolProviderScimTenant(
        localName: 'workforce_scim',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        scimTenantId: .literal('terradart-scim'),
        claimMapping: .literal(<String, String>{
          'google.subject': 'user.externalId',
          'google.group': 'group.externalId',
        }),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(wfProvider)],
      ),
    );

    add(
      GoogleIamWorkforcePoolProviderScimToken(
        localName: 'workforce_scim_token',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        scimTenantId: .literal('terradart-scim'),
        scimTokenId: .literal('terradart-scim-token'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [ResourceDependency(scim)],
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
