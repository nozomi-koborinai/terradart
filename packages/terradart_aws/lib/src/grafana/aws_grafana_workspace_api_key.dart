// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_api_key`.
const Set<String> _awsGrafanaWorkspaceApiKeySensitive = <String>{'key'};

/// Grafana Workspace Api Key Key enum for `key_role`.
enum GrafanaWorkspaceApiKeyKeyRole implements TerraformEnum {
  admin('ADMIN'),
  editor('EDITOR'),
  viewer('VIEWER');

  const GrafanaWorkspaceApiKeyKeyRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_grafana_workspace_api_key`.
final class AwsGrafanaWorkspaceApiKey extends Resource {
  static const String tfType = 'aws_grafana_workspace_api_key';

  AwsGrafanaWorkspaceApiKey({
    required super.localName,
    required TfArg<String> keyName,
    required TfArg<GrafanaWorkspaceApiKeyKeyRole> keyRole,
    TfArg<String>? region,
    required TfArg<num> secondsToLive,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key_name': keyName,
           'key_role': keyRole,
           'region': ?region,
           'seconds_to_live': secondsToLive,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaWorkspaceApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaWorkspaceApiKey>`.
  RefTo<AwsGrafanaWorkspaceApiKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyNameRef => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `key_role` attribute.
  TfRef<String> get keyRoleRef => TfRef.attribute<String>(this, 'key_role');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `seconds_to_live` attribute.
  TfRef<num> get secondsToLiveRef =>
      TfRef.attribute<num>(this, 'seconds_to_live');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceIdRef =>
      TfRef.attribute<String>(this, 'workspace_id');
}
