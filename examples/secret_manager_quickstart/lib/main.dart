/// Secret Manager quickstart -- write-only field pattern.
///
/// Defines `DbCredentialsStack`: provisions a `google_secret_manager_secret`
/// with auto replication, supplies the value via the **write-only**
/// `SecretManagerSecretVersionWriteOnlyPayload` (so the plaintext never
/// lands in Terraform state), grants
/// `roles/secretmanager.secretAccessor` to a reader service account, and
/// exercises authoritative secret IAM binding + policy adjuncts.
///
/// Bump `secretDataWoVersion` to rotate.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/secret_manager.dart';

String _iamPolicyDataJson({required String role, required String member}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

/// Secret Manager secret + version + IAM accessor Stack.
final class DbCredentialsStack extends Stack {
  DbCredentialsStack({
    required String projectId,
    required String dbPasswordCleartext,
    int secretVersion = 1,
  }) : super(
         providers: [GoogleProvider(project: projectId, region: 'us-central1')],
       ) {
    // 1. The secret resource itself (auto-replicated).
    final secret = add(
      GoogleSecretManagerSecret(
        'db_password',
        secretId: .literal('db-password'),
        replication: const .auto(.new()),
        labels: const TfArgLiteral<Map<String, String>>({
          'managed-by': 'terradart',
        }),
      ),
    );

    // 2. The version. Use secretDataWo (write-only) so the plaintext is
    //    not stored in Terraform state. Bump secretDataWoVersion to rotate.
    add(
      GoogleSecretManagerSecretVersion(
        'db_password_v$secretVersion',
        secret: secret.ref,
        payload: .writeOnly(
          secretDataWo: .literal(dbPasswordCleartext),
          secretDataWoVersion: .literal('$secretVersion'),
        ),
      ),
    );

    // 3. The application service account that reads the secret. The IAM
    //    binding below grants it accessor; without this SA the binding fails
    //    with "Service account ... does not exist". Account IDs must be
    //    6-30 chars, so use `app-runner` (the bare `app` is too short).
    final appSa = add(
      GoogleServiceAccount(
        'app',
        accountId: .literal('app-runner'),
        displayName: .literal('Application runtime (secret reader)'),
      ),
    );

    // 4. Grant accessor to the application service account. The member is
    //    derived from the SA's pre-formatted `serviceAccount:<email>` ref, and
    //    dependsOn ensures the SA exists before the policy is applied.
    add(
      GoogleSecretManagerSecretIamMember(
        'db_password_accessor',
        // Secret IAM identity is `secret_id` (NOT `id` / `name`).
        secret: secret.ref,
        role: .literal('roles/secretmanager.secretAccessor'),
        member: appSa.principal,
        dependsOn: [appSa],
      ),
    );

    // Authoritative adjuncts for the same accessor role (member → binding →
    // policy). Final apply state is the policy document; member/binding stay
    // in the example for factory coverage (same pattern as compute_quickstart).
    final secretAccessorBinding = add(
      GoogleSecretManagerSecretIamBinding(
        'db_password_accessor_binding',
        secret: secret.ref,
        role: .literal('roles/secretmanager.secretAccessor'),
        members: .literal([appSa.principal]),
        dependsOn: [secret, appSa],
      ),
    );

    add(
      GoogleSecretManagerSecretIamPolicy(
        'db_password_accessor_policy',
        secret: secret.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/secretmanager.secretAccessor',
            member:
                'serviceAccount:app-runner@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [secret, secretAccessorBinding],
      ),
    );

    // 5. A regional (single-location) secret -- the data-residency variant of
    //    the secret above. Regional secrets store the value in one location and
    //    have no replication block. They also lack the write-only field, so the
    //    value is supplied via `secretData` (sensitive, kept out of logs).
    final regionalSecret = add(
      GoogleSecretManagerRegionalSecret(
        'db_password_regional',
        secretId: .literal('db-password-regional'),
        location: .literal('us-central1'),
        labels: const TfArgLiteral<Map<String, String>>({
          'managed-by': 'terradart',
        }),
      ),
    );

    // NOTE: google_secret_manager_regional_secret_version is intentionally not
    // created here. Regional secrets have no write-only (`_wo`) data field, and
    // synth refuses a literal on the sensitive `secret_data` field; supplying it
    // via a Terraform variable would make this (otherwise applyable) example
    // require `-var` at apply time. The version factory is tracked in
    // tool/example_debt.yaml instead.

    add(
      GoogleSecretManagerRegionalSecretIamMember(
        'db_password_regional_accessor',
        secret: regionalSecret.ref,
        role: .literal('roles/secretmanager.secretAccessor'),
        member: appSa.principal,
        dependsOn: [regionalSecret, appSa],
      ),
    );

    final regionalAccessorBinding = add(
      GoogleSecretManagerRegionalSecretIamBinding(
        'db_password_regional_accessor_binding',
        secret: regionalSecret.ref,
        role: .literal('roles/secretmanager.secretAccessor'),
        members: .literal([appSa.principal]),
        dependsOn: [regionalSecret, appSa],
      ),
    );

    add(
      GoogleSecretManagerRegionalSecretIamPolicy(
        'db_password_regional_accessor_policy',
        secret: regionalSecret.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/secretmanager.secretAccessor',
            member:
                'serviceAccount:app-runner@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [regionalSecret, regionalAccessorBinding],
      ),
    );

    // Export the secret's resource path (computed at apply, so a Terraform
    // output). The application reads the live value at runtime via the
    // Secret Manager client library -- the path is the lookup key, not the
    // secret.
    addOutput('db_password_secret_id', secret.id);
  }
}
