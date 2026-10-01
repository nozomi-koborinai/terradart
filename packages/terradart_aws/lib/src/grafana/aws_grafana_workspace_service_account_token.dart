// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_service_account_token`.
const Set<String> _awsGrafanaWorkspaceServiceAccountTokenSensitive = <String>{
  'key',
};

/// Factory wrapper for `aws_grafana_workspace_service_account_token`.
final class AwsGrafanaWorkspaceServiceAccountToken extends Resource {
  static const String tfType = 'aws_grafana_workspace_service_account_token';

  AwsGrafanaWorkspaceServiceAccountToken({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<num> secondsToLive,
    required TfArg<String> serviceAccountId,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'seconds_to_live': secondsToLive,
           'service_account_id': serviceAccountId,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGrafanaWorkspaceServiceAccountTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaWorkspaceServiceAccountToken>`.
  RefTo<AwsGrafanaWorkspaceServiceAccountToken> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `service_account_token_id` attribute.
  TfRef<String> get serviceAccountTokenId =>
      TfRef.attribute<String>(this, 'service_account_token_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `seconds_to_live` attribute.
  TfRef<num> get secondsToLive => TfRef.attribute<num>(this, 'seconds_to_live');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
