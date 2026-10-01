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
///  17. `google_iam_project_access_policy`
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

import 'package:terradart_google/cloud_tasks.dart';
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
        'ci',
        workloadIdentityPoolId: .literal('github-actions'),
        displayName: .literal('GitHub Actions CI/CD'),
      ),
    );

    add(
      GoogleIamWorkloadIdentityPoolProvider(
        'github_provider',
        workloadIdentityPoolId: wifPool.ref,
        workloadIdentityPoolProviderId: .literal('github-actions'),
        displayName: .literal('GitHub Actions OIDC'),
        attributeCondition: .literal('assertion.repository_owner == "my-org"'),
        attributeMapping: .literal({
          'google.subject': 'assertion.repository',
          'attribute.repository_owner': 'assertion.repository_owner',
        }),
        trustSource: .oidc(
          .new(
            allowedAudiences: .literal(['https://github.com/my-org']),
            issuerUri: .literal('https://token.actions.githubusercontent.com'),
          ),
        ),
        dependsOn: [wifPool],
      ),
    );

    // ---- Service account -------------------------------------------------
    //
    // The SA the four bindings below grant roles to. `sa.member` is the
    // computed `serviceAccount:<email>` string -- pass it straight to each
    // `_iam_member` resource without manually prepending `serviceAccount:`.

    final sa = add(
      GoogleServiceAccount(
        'demo',
        accountId: .literal('demo-sa'),
        displayName: .literal('IAM quickstart demo SA'),
      ),
    );

    // Additive IAM on the pool itself: lets the demo SA read pool/provider
    // metadata without granting the authoritative pool policy.
    add(
      GoogleIamWorkloadIdentityPoolIamMember(
        'wif_pool_viewer',
        workloadIdentityPool: wifPool.ref,
        role: .literal('roles/iam.workloadIdentityPoolViewer'),
        member: sa.principal,
        dependsOn: [wifPool, sa],
      ),
    );

    final apiPubsub = add(
      GoogleProjectService(
        'api_pubsub',
        service: .literal('pubsub.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiCloudTasks = add(
      GoogleProjectService(
        'api_cloudtasks',
        service: .literal('cloudtasks.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiSecretManager = add(
      GoogleProjectService(
        'api_secretmanager',
        service: .literal('secretmanager.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );
    final apiIap = add(
      GoogleProjectService(
        'api_iap',
        service: .literal('iap.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // ---- Resources to grant against ----------------------------------------

    final topic = add(
      GooglePubsubTopic(
        'demo',
        name: .literal('demo-topic'),
        dependsOn: [apiPubsub],
      ),
    );

    final subscription = add(
      GooglePubsubSubscription(
        'demo_sub',
        name: .literal('demo-sub'),
        // topic.id (NOT topic.name) -- subscriptions need full path.
        topic: topic.ref,
        dependsOn: [apiPubsub],
      ),
    );

    final queue = add(
      GoogleCloudTasksQueue(
        'demo_queue',
        name: .literal('demo-queue'),
        location: .literal('us-central1'),
        dependsOn: [apiCloudTasks],
      ),
    );

    final secret = add(
      GoogleSecretManagerSecret(
        'demo_secret',
        secretId: .literal('demo-secret'),
        replication: const .auto(.new()),
        dependsOn: [apiSecretManager],
      ),
    );

    // ---- 1. Topic-level: publisher ----------------------------------------

    add(
      GooglePubsubTopicIamMember(
        'topic_publisher',
        // Topic IAM identifies the topic by its **name** (not id).
        topic: topic.ref,
        role: .literal('roles/pubsub.publisher'),
        member: sa.principal,
      ),
    );

    // ---- 2. Subscription-level: subscriber --------------------------------

    add(
      GooglePubsubSubscriptionIamMember(
        'sub_subscriber',
        // Subscription IAM uses the subscription **name**.
        subscription: subscription.ref,
        role: .literal('roles/pubsub.subscriber'),
        member: sa.principal,
      ),
    );

    // ---- 3. Queue-level: enqueuer -----------------------------------------

    add(
      GoogleCloudTasksQueueIamMember(
        'queue_enqueuer',
        // Queue IAM identifies via **name + location** (not id).
        queue: queue.ref,
        role: .literal('roles/cloudtasks.enqueuer'),
        member: sa.principal,
      ),
    );

    // ---- 4. Secret-level: accessor ----------------------------------------

    add(
      GoogleSecretManagerSecretIamMember(
        'secret_accessor',
        // Secret IAM identifies via **secret_id** (not id / name).
        secret: secret.ref,
        role: .literal('roles/secretmanager.secretAccessor'),
        member: sa.principal,
      ),
    );

    // ---- 5–7. IAP App Engine: service, version, and app-wide access ---------
    //
    // These use literal App Engine identifiers (no App Engine application
    // resource required for synth). `appId` is typically the GCP project ID.

    add(
      GoogleIapAppEngineServiceIamMember(
        'gae_service_invoker',
        appId: .literal(projectId),
        service: .literal('default'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    add(
      GoogleIapAppEngineVersionIamMember(
        'gae_version_invoker',
        appId: .literal(projectId),
        service: .literal('default'),
        versionId: .literal('v1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    add(
      GoogleIapWebTypeAppEngineIamMember(
        'gae_app_invoker',
        appId: .literal(projectId),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    // ---- 8–9. IAP regional: Agent Registry and location-scoped web access ----
    //
    // These bind IAP access at a regional location without requiring App
    // Engine or a backend service resource in-stack.

    add(
      GoogleIapAgentRegistryIamMember(
        'agent_registry_invoker',
        location: .literal('us-central1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    add(
      GoogleIapLocationWebIamMember(
        'location_web_invoker',
        location: .literal('us-central1'),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    // Project-scoped IAP HTTPS (`iap.web`) and Compute backends
    // (`iap.web.type.compute`) — no App Engine / backend resource required.

    add(
      GoogleIapWebIamMember(
        'web_invoker',
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    add(
      GoogleIapWebTypeComputeIamMember(
        'web_type_compute_invoker',
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: sa.principal,
        dependsOn: [apiIap],
      ),
    );

    // ---- 10. Custom role: minimal Cloud Storage observer -------------------
    //
    // A least-privilege custom role granting read-only access to GCS
    // objects + buckets. Useful as a building block when a predefined
    // role (e.g. `roles/storage.objectViewer`) is too broad or too narrow.

    final customRole = add(
      GoogleProjectIamCustomRole(
        'gcs_observer',
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
        stage: .ga,
      ),
    );

    // ---- 11. Project-level binding: grant custom role to demo SA -----------
    //
    // Wait for the custom role to exist before referencing it.

    add(
      GoogleProjectIamMember(
        'demo_sa_observer',
        project: .literal(projectId),
        // Reference the custom role's full path so Terraform binds against
        // the created resource (not just a string literal).
        role: customRole.name,
        member: sa.principal,
        dependsOn: [customRole],
      ),
    );

    // ---- 12. Service-account-level binding: impersonation ------------------
    //
    // A second SA represents whoever needs to impersonate `demo`. Granting
    // `roles/iam.serviceAccountUser` on `demo` lets the second SA generate
    // tokens for `demo` -- the standard cross-team handoff pattern.

    final impersonator = add(
      GoogleServiceAccount(
        'impersonator',
        accountId: .literal('demo-impersonator'),
        displayName: .literal('Demo SA impersonator'),
      ),
    );

    add(
      GoogleServiceAccountIamMember(
        'demo_sa_user',
        // Target SA is the demo SA; identified by its full resource path.
        serviceAccount: sa.ref,
        role: .literal('roles/iam.serviceAccountUser'),
        member: impersonator.principal,
      ),
    );

    // ---- 13. Long-lived SA key for the demo SA -----------------------------
    //
    // Only do this when integrating with a system that cannot accept
    // short-lived OAuth tokens. The `private_key` output is sensitive --
    // synth masks it from rendered Terraform JSON / app constants.

    add(
      GoogleServiceAccountKey(
        'demo_sa_key',
        serviceAccountId: sa.ref,
        keyAlgorithm: .rsa2048,
        privateKeyType: .googleCredentialsFile,
      ),
    );

    // ---- 14. OS Login SSH public key on the demo SA -----------------------
    //
    // Imports a dummy ssh-ed25519 public key onto the in-stack SA identity.
    // Does not provision a VM. Private key is not in the repo.

    final apiOsLogin = add(
      GoogleProjectService(
        'api_oslogin',
        service: .literal('oslogin.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleOsLoginSshPublicKey(
        'demo_ssh',
        user: sa.email,
        key: .literal(
          'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMlTZg5RNgdRr0tVBEkKHZOi3VCrR2eoC7e5stONs4Uw terradart-dummy',
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [sa, apiOsLogin],
      ),
    );

    // ---- 15. Workload Identity service-agent mint -------------------------
    //
    // generateServiceAgents for Pub/Sub (already in this stack). Does not
    // grant IAM. MM exclude_delete: destroy drops state; Google-owned
    // SAs remain. The wrap fixture has no deletion_policy attribute.

    final current = add(DataGoogleProject('current'));

    final apiWorkloadIdentity = add(
      GoogleProjectService(
        'api_workloadidentity',
        service: .literal('workloadidentity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleWorkloadIdentityServiceAgent(
        'pubsub_agents',
        parent: .literal(
          'projects/${current.number.interpolation}/locations/global/serviceProducers/pubsub.googleapis.com',
        ),
        dependsOn: [apiWorkloadIdentity],
      ),
    );

    // ---- 16. Workforce Identity Federation OAuth client -------------------
    //
    // App metadata only. PUBLIC_CLIENT so no client secret. Does not
    // complete OAuth or create a workforce pool.

    add(
      GoogleIamOauthClient(
        'demo_oauth',
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
        'workforce',
        location: .literal('global'),
        parent: .literal('organizations/123456789'),
        workforcePoolId: .literal('terradart-wf'),
        displayName: .literal('terradart workforce'),
        deletionPolicy: .literal('DELETE'),
      ),
    );

    add(
      GoogleIamWorkforcePoolIamMember(
        'workforce_viewer',
        workforcePool: .literal('terradart-wf'),
        location: .literal('global'),
        role: .literal('roles/iam.workforcePoolViewer'),
        member: sa.principal,
        dependsOn: [workforce, sa],
      ),
    );

    final wfProvider = add(
      GoogleIamWorkforcePoolProvider(
        'workforce_oidc',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        trustSource: .oidc(
          .new(
            issuerUri: .literal('https://accounts.google.com'),
            clientId: .literal('client.apps.googleusercontent.com'),
          ),
        ),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [workforce],
      ),
    );

    add(
      GoogleIamWorkforcePoolProviderKey(
        'workforce_key',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        keyId: .literal('terradart-key'),
        use: .literal('ENCRYPTION'),
        keyData: IamWorkforcePoolProviderKeyData(keySpec: .rsa2048),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [wfProvider],
      ),
    );

    final scim = add(
      GoogleIamWorkforcePoolProviderScimTenant(
        'workforce_scim',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        scimTenantId: .literal('terradart-scim'),
        claimMapping: .literal(<String, String>{
          'google.subject': 'user.externalId',
          'google.group': 'group.externalId',
        }),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [wfProvider],
      ),
    );

    add(
      GoogleIamWorkforcePoolProviderScimToken(
        'workforce_scim_token',
        location: .literal('global'),
        workforcePoolId: .literal('terradart-wf'),
        providerId: .literal('terradart-oidc'),
        scimTenantId: .literal('terradart-scim'),
        scimTokenId: .literal('terradart-scim-token'),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [scim],
      ),
    );

    // IAM v3 access policy on the project: an explicit ALLOW rule for the
    // demo SA on one Eventarc permission.
    add(
      GoogleIamProjectAccessPolicy(
        'project_access_policy',
        accessPolicyId: .literal('terradart-access-policy'),
        location: .literal('global'),
        displayName: .literal('IAM quickstart access policy'),
        details: IamProjectAccessPolicyDetails(
          rules: [
            .new(
              effect: .allow,
              principals: .literal([
                'principal://iam.googleapis.com/projects/-/serviceAccounts/${sa.email.interpolation}',
              ]),
              operation: .new(
                permissions: .literal([
                  'eventarc.googleapis.com/messageBuses.publish',
                ]),
              ),
            ),
          ],
        ),
      ),
    );

    // The seam: export each resource path so the application side has
    // typed lookup keys for all four resources.
    addOutput('topic_id', topic.id);
    addOutput('subscription_id', subscription.id);
    addOutput('queue_id', queue.id);
    addOutput('secret_id', secret.id);
    addOutput('custom_role_name', customRole.name);
  }
}
