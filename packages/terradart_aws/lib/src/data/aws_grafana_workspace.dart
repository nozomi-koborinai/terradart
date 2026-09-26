// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace`.
const Set<String> _awsGrafanaWorkspaceSensitive = <String>{};

/// Factory wrapper for `aws_grafana_workspace`.
final class DataAwsGrafanaWorkspace extends Data {
  static const String tfType = 'aws_grafana_workspace';

  DataAwsGrafanaWorkspace({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaWorkspaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_access_type` attribute.
  TfRef<String> get accountAccessType =>
      TfRef.attribute<String>(this, 'account_access_type');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authentication_providers` attribute.
  TfRef<List<String>> get authenticationProviders =>
      TfRef.attribute<List<String>>(this, 'authentication_providers');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `data_sources` attribute.
  TfRef<List<String>> get dataSources =>
      TfRef.attribute<List<String>>(this, 'data_sources');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `grafana_version` attribute.
  TfRef<String> get grafanaVersion =>
      TfRef.attribute<String>(this, 'grafana_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `notification_destinations` attribute.
  TfRef<List<String>> get notificationDestinations =>
      TfRef.attribute<List<String>>(this, 'notification_destinations');

  /// Reference to `organization_role_name` attribute.
  TfRef<String> get organizationRoleName =>
      TfRef.attribute<String>(this, 'organization_role_name');

  /// Reference to `organizational_units` attribute.
  TfRef<List<String>> get organizationalUnits =>
      TfRef.attribute<List<String>>(this, 'organizational_units');

  /// Reference to `permission_type` attribute.
  TfRef<String> get permissionType =>
      TfRef.attribute<String>(this, 'permission_type');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `saml_configuration_status` attribute.
  TfRef<String> get samlConfigurationStatus =>
      TfRef.attribute<String>(this, 'saml_configuration_status');

  /// Reference to `stack_set_name` attribute.
  TfRef<String> get stackSetName =>
      TfRef.attribute<String>(this, 'stack_set_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
