// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_service_account`.
const Set<String> _awsGrafanaWorkspaceServiceAccountSensitive = <String>{};

/// Grafana Workspace Service Account Grafana enum for `grafana_role`.
extension type const GrafanaWorkspaceServiceAccountGrafanaRole._(
  TfArg<String> _
) implements TfArg<String> {
  GrafanaWorkspaceServiceAccountGrafanaRole.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspaceServiceAccountGrafanaRole.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspaceServiceAccountGrafanaRole.arg(TfArg<String> arg)
    : this._(arg);

  static const admin = GrafanaWorkspaceServiceAccountGrafanaRole._(
    TfArgLiteral('ADMIN'),
  );
  static const editor = GrafanaWorkspaceServiceAccountGrafanaRole._(
    TfArgLiteral('EDITOR'),
  );
  static const viewer = GrafanaWorkspaceServiceAccountGrafanaRole._(
    TfArgLiteral('VIEWER'),
  );

  static const List<GrafanaWorkspaceServiceAccountGrafanaRole> values = [
    admin,
    editor,
    viewer,
  ];
}

/// Factory wrapper for `aws_grafana_workspace_service_account`.
final class AwsGrafanaWorkspaceServiceAccount extends Resource {
  static const String tfType = 'aws_grafana_workspace_service_account';

  AwsGrafanaWorkspaceServiceAccount(
    super.localName, {
    required GrafanaWorkspaceServiceAccountGrafanaRole grafanaRole,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');

  /// Reference to `grafana_role` attribute.
  TfRef<String> get grafanaRole =>
      TfRef.attribute<String>(this, 'grafana_role');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
