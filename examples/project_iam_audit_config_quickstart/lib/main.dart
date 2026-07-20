/// Project IAM audit config quickstart.
///
/// Enables `ADMIN_READ` audit logs for `storage.googleapis.com` via
/// `google_project_iam_audit_config`. Admin Activity logs are free; this
/// stack does not enable Data Access (`DATA_READ` / `DATA_WRITE`) logging.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';

/// Project IAM audit config Stack: ADMIN_READ for Cloud Storage.
final class ProjectIamAuditConfigStack extends Stack {
  ProjectIamAuditConfigStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(
      GoogleProjectIamAuditConfig(
        localName: 'storage_admin_read',
        project: TfArg.literal(projectId),
        service: TfArg.literal('storage.googleapis.com'),
        auditLogConfig: [
          ProjectIamAuditConfigAuditLogConfig(
            logType: TfArg.literal(
              ProjectIamAuditConfigAuditLogConfigLogType
                  .adminRead.terraformValue,
            ),
          ),
        ],
      ),
    );
  }
}
