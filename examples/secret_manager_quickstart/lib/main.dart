/// Secret Manager quickstart -- write-only field pattern.
///
/// Defines `DbCredentialsStack`: provisions a `google_secret_manager_secret`
/// with auto replication, supplies the value via the **write-only**
/// `secretDataWo` + `secretDataWoVersion` fields (so the plaintext never
/// lands in Terraform state), and grants
/// `roles/secretmanager.secretAccessor` to a reader service account.
///
/// Bump `secretDataWoVersion` to rotate.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/secret_manager.dart';

/// Secret Manager secret + version + IAM accessor Stack.
final class DbCredentialsStack extends Stack {
  DbCredentialsStack({
    required String projectId,
    required String dbPasswordCleartext,
    int secretVersion = 1,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    // 1. The secret resource itself (auto-replicated).
    final secret = add(
      GoogleSecretManagerSecret(
        localName: 'db_password',
        secretId: TfArg.literal('db-password'),
        replication: SecretManagerSecretReplication.auto(),
        labels: const TfArgLiteral<Map<String, String>>({
          'managed-by': 'terradart',
        }),
      ),
    );

    // 2. The version. Use secretDataWo (write-only) so the plaintext is
    //    not stored in Terraform state. Bump secretDataWoVersion to rotate.
    add(
      GoogleSecretManagerSecretVersion(
        localName: 'db_password_v$secretVersion',
        secret: TfArg.ref(secret.id),
        secretDataWo: TfArg.literal(dbPasswordCleartext),
        secretDataWoVersion: TfArg.literal(secretVersion),
      ),
    );

    // 3. The application service account that reads the secret. The IAM
    //    binding below grants it accessor; without this SA the binding fails
    //    with "Service account ... does not exist". Account IDs must be
    //    6-30 chars, so use `app-runner` (the bare `app` is too short).
    final appSa = add(
      GoogleServiceAccount(
        localName: 'app',
        accountId: TfArg.literal('app-runner'),
        displayName: TfArg.literal('Application runtime (secret reader)'),
      ),
    );

    // 4. Grant accessor to the application service account. The member is
    //    derived from the SA's pre-formatted `serviceAccount:<email>` ref, and
    //    dependsOn ensures the SA exists before the policy is applied.
    add(
      GoogleSecretManagerSecretIamMember(
        localName: 'db_password_accessor',
        // Secret IAM identity is `secret_id` (NOT `id` / `name`).
        secretId: TfArg.ref(secret.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: TfArg.ref(appSa.iamMember),
        dependsOn: [ResourceDependency(appSa)],
      ),
    );

    // Export the secret's resource path as a typed Dart constant. The
    // application reads the live value at runtime via the Secret Manager
    // client library -- the constant is the lookup key, not the secret.
    addExport(
      'DB_PASSWORD_SECRET_ID',
      ResourceIdExport(secret.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/db_credentials_stack.app.dart');
  }
}
