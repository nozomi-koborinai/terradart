// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_service_account`.
const Set<String> _awsGrafanaWorkspaceServiceAccountSensitive = <String>{};

/// Grafana Workspace Service Account Grafana enum for `grafana_role`.
enum GrafanaWorkspaceServiceAccountGrafanaRole implements TerraformEnum {
  admin('ADMIN'),
  editor('EDITOR'),
  viewer('VIEWER');

  const GrafanaWorkspaceServiceAccountGrafanaRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_grafana_workspace_service_account`.
final class AwsGrafanaWorkspaceServiceAccount extends Resource {
  static const String tfType = 'aws_grafana_workspace_service_account';

  AwsGrafanaWorkspaceServiceAccount({
    required super.localName,
    required TfArg<GrafanaWorkspaceServiceAccountGrafanaRole> grafanaRole,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'grafana_role': grafanaRole,
           'name': name,
           'region': ?region,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGrafanaWorkspaceServiceAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaWorkspaceServiceAccount>`.
  RefTo<AwsGrafanaWorkspaceServiceAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');
}
