import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';

import 'constants.dart';

final class LunchRuntimeIdentity {
  const LunchRuntimeIdentity({
    required this.serviceAccount,
    required this.cloudSqlClientGrant,
    required this.instanceUserGrant,
    required this.vertexUserGrant,
  });

  final GoogleServiceAccount serviceAccount;
  final GoogleProjectIamMember cloudSqlClientGrant;
  final GoogleProjectIamMember instanceUserGrant;
  final GoogleProjectIamMember vertexUserGrant;
}

LunchRuntimeIdentity addRuntimeIdentity({
  required Stack stack,
  required String projectId,
  required GoogleProjectService vertexApi,
}) {
  final serviceAccount = stack.add(
    GoogleServiceAccount(
      'sql_client',
      accountId: .literal(sqlClientAccountId),
      displayName: .literal('Lunch Concierge runtime and SQL client'),
    ),
  );

  final cloudSqlClientGrant = stack.add(
    GoogleProjectIamMember(
      'sql_client_cloudsql_client',
      project: .literal(projectId),
      role: .literal('roles/cloudsql.client'),
      member: serviceAccount.principal,
      dependsOn: [serviceAccount],
    ),
  );

  final instanceUserGrant = stack.add(
    GoogleProjectIamMember(
      'sql_client_instance_user',
      project: .literal(projectId),
      role: .literal('roles/cloudsql.instanceUser'),
      member: serviceAccount.principal,
      dependsOn: [serviceAccount],
    ),
  );

  final vertexUserGrant = stack.add(
    GoogleProjectIamMember(
      'sql_client_vertex_user',
      project: .literal(projectId),
      role: .literal('roles/aiplatform.user'),
      member: serviceAccount.principal,
      dependsOn: [serviceAccount, vertexApi],
    ),
  );

  return LunchRuntimeIdentity(
    serviceAccount: serviceAccount,
    cloudSqlClientGrant: cloudSqlClientGrant,
    instanceUserGrant: instanceUserGrant,
    vertexUserGrant: vertexUserGrant,
  );
}
