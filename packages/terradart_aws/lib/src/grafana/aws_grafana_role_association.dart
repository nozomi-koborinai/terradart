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
           'group_ids': ?groupIds,
           'region': ?region,
           'role': role,
           'user_ids': ?userIds,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaRoleAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaRoleAssociation>`.
  RefTo<AwsGrafanaRoleAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_ids` attribute.
  TfRef<List<String>> get groupIds =>
      TfRef.attribute<List<String>>(this, 'group_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `user_ids` attribute.
  TfRef<List<String>> get userIds =>
      TfRef.attribute<List<String>>(this, 'user_ids');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
