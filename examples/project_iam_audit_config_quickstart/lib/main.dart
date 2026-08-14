/// Project IAM audit config + deny policy quickstart.
///
/// Enables `ADMIN_READ` audit logs for `storage.googleapis.com` via
/// `google_project_iam_audit_config`. Admin Activity logs are free; this
/// stack does not enable Data Access (`DATA_READ` / `DATA_WRITE`) logging.
///
/// Also enables `iam.googleapis.com`, mints an in-stack service account,
/// and attaches a project IAM deny policy that denies only that account
/// `storage.googleapis.com/objects.get`. The deny does not target
/// `public:all` or project-admin permissions.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Project IAM audit config + deny policy Stack.
final class ProjectIamAuditConfigStack extends Stack {
  ProjectIamAuditConfigStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiIam = add(
      GoogleProjectService(
        localName: 'api_iam',
        service: TfArg.literal('iam.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

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

    final denied = add(
      GoogleServiceAccount(
        localName: 'denied',
        accountId: TfArg.literal('terradart-denied'),
        displayName: TfArg.literal('TerraDart deny-policy target'),
        dependsOn: [ResourceDependency(apiIam)],
      ),
    );

    add(
      GoogleIamDenyPolicy(
        localName: 'storage_get_deny',
        parent: TfArg.literal(
          Uri.encodeComponent(
            'cloudresourcemanager.googleapis.com/projects/$projectId',
          ),
        ),
        name: TfArg.literal('terradart-storage-get-deny'),
        displayName: TfArg.literal('Deny storage.objects.get for smoke SA'),
        deletionPolicy: TfArg.literal('DELETE'),
        rules: [
          IamDenyPolicyRules(
            description: TfArg.literal(
              'Deny storage.objects.get for the in-stack SA only.',
            ),
            denyRule: IamDenyPolicyRulesDenyRule(
              deniedPrincipals: TfArg.literal([
                'principal://iam.googleapis.com/projects/-/serviceAccounts/${denied.email.interpolation}',
              ]),
              deniedPermissions: TfArg.literal([
                'storage.googleapis.com/objects.get',
              ]),
            ),
          ),
        ],
        dependsOn: [
          ResourceDependency(apiIam),
          ResourceDependency(denied),
        ],
      ),
    );
  }
}
