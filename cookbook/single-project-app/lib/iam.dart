/// Tier 4: IAM (service account + role bindings).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/secret_manager.dart';

GoogleServiceAccount buildRunSa() => GoogleServiceAccount(
      localName: 'run_sa',
      accountId: TfArg.literal('coffee-run-sa'),
      displayName: TfArg.literal('Coffee Shop Cloud Run SA'),
    );

List<GoogleProjectIamMember> buildProjectIamBindings({
  required String projectId,
  required GoogleServiceAccount runSa,
}) =>
    [
      GoogleProjectIamMember(
        localName: 'run_sa_sql_client',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/cloudsql.client'),
        member: TfArg.ref(runSa.iamMember),
      ),
      GoogleProjectIamMember(
        localName: 'run_sa_log_writer',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/logging.logWriter'),
        member: TfArg.ref(runSa.iamMember),
      ),
      GoogleProjectIamMember(
        localName: 'run_sa_monitoring_writer',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/monitoring.metricWriter'),
        member: TfArg.ref(runSa.iamMember),
      ),
    ];

GoogleSecretManagerSecretIamMember buildSecretIamMember(
  GoogleSecretManagerSecret dbPasswordSecret,
  GoogleServiceAccount runSa,
) =>
    GoogleSecretManagerSecretIamMember(
      localName: 'db_password_access',
      secretId: TfArg.ref(dbPasswordSecret.id),
      role: TfArg.literal('roles/secretmanager.secretAccessor'),
      member: TfArg.ref(runSa.iamMember),
    );
