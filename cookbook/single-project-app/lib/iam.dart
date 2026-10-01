/// Tier 4: IAM (service account + role bindings).
library;

import 'package:terradart_google/iam.dart';
import 'package:terradart_google/secret_manager.dart';

GoogleServiceAccount buildRunSa() => GoogleServiceAccount(
  'run_sa',
  accountId: .literal('coffee-run-sa'),
  displayName: .literal('Coffee Shop Cloud Run SA'),
);

List<GoogleProjectIamMember> buildProjectIamBindings({
  required String projectId,
  required GoogleServiceAccount runSa,
}) => [
  GoogleProjectIamMember(
    'run_sa_sql_client',
    project: .literal(projectId),
    role: .literal('roles/cloudsql.client'),
    member: runSa.principal,
  ),
  GoogleProjectIamMember(
    'run_sa_log_writer',
    project: .literal(projectId),
    role: .literal('roles/logging.logWriter'),
    member: runSa.principal,
  ),
  GoogleProjectIamMember(
    'run_sa_monitoring_writer',
    project: .literal(projectId),
    role: .literal('roles/monitoring.metricWriter'),
    member: runSa.principal,
  ),
];

GoogleSecretManagerSecretIamMember buildSecretIamMember(
  GoogleSecretManagerSecret dbPasswordSecret,
  GoogleServiceAccount runSa,
) => GoogleSecretManagerSecretIamMember(
  'db_password_access',
  secret: dbPasswordSecret.ref,
  role: .literal('roles/secretmanager.secretAccessor'),
  member: runSa.principal,
);
