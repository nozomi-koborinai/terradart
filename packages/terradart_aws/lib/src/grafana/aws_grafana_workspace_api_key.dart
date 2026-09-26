// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_api_key`.
const Set<String> _awsGrafanaWorkspaceApiKeySensitive = <String>{'key'};

/// Factory wrapper for `aws_grafana_workspace_api_key`.
final class AwsGrafanaWorkspaceApiKey extends Resource {
  static const String tfType = 'aws_grafana_workspace_api_key';

  AwsGrafanaWorkspaceApiKey({
    required super.localName,
    required TfArg<String> keyName,
    required TfArg<String> keyRole,
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
           if (region != null) 'region': region,
           'seconds_to_live': secondsToLive,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaWorkspaceApiKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');
}
