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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

/// Secret Manager secret + version + IAM accessor Stack.
class DbCredentialsStack extends Stack {
  DbCredentialsStack({
    required String projectId,
    required String dbPasswordCleartext,
    int secretVersion = 1,
  }) : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1')
          ],
        ) {
    // 1. The secret resource itself (auto-replicated).
    final secret = add(
      GoogleSecretManagerSecret(
        localName: 'db_password',
        secretId: TfArg.literal('db-password'),
        replication: Replication.auto(),
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

    // 3. Grant accessor to the application service account.
    add(
      GoogleSecretManagerSecretIamMember(
        localName: 'db_password_accessor',
        // Secret IAM identity is `secret_id` (NOT `id` / `name`).
        secretId: TfArg.ref(secret.secretIdRef),
        role: TfArg.literal('roles/secretmanager.secretAccessor'),
        member: TfArg.literal(
          'serviceAccount:app@$projectId.iam.gserviceaccount.com',
        ),
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

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);

    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );

    final dartConstants = result.dartConstants;
    final dartPath = result.dartConstantsPath;
    if (dartConstants != null && dartPath != null) {
      final dartFile = File(dartPath);
      await dartFile.parent.create(recursive: true);
      await dartFile.writeAsString(dartConstants);
    }
  }
}
