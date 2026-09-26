// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_role_association`.
const Set<String> _awsGrafanaRoleAssociationSensitive = <String>{};

/// Factory wrapper for `aws_grafana_role_association`.
final class AwsGrafanaRoleAssociation extends Resource {
  static const String tfType = 'aws_grafana_role_association';

  AwsGrafanaRoleAssociation({
    required super.localName,
    TfArg<List<String>>? groupIds,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<List<String>>? userIds,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (groupIds != null) 'group_ids': groupIds,
           if (region != null) 'region': region,
           'role': role,
           if (userIds != null) 'user_ids': userIds,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaRoleAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
