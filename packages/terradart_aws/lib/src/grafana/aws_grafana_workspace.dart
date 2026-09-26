// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace`.
const Set<String> _awsGrafanaWorkspaceSensitive = <String>{};

/// Typed helper for the `network_access_control` block of
/// `aws_grafana_workspace` (derived from provider schema).
@immutable
final class GrafanaWorkspaceNetworkAccessControl {
  const GrafanaWorkspaceNetworkAccessControl({
    required this.prefixListIds,
    required this.vpceIds,
  });

  final TfArg<List<Object?>> prefixListIds;

  final TfArg<List<Object?>> vpceIds;

  Map<String, Object?> encode() => {
    'prefix_list_ids': prefixListIds.toTfJson(),
    'vpce_ids': vpceIds.toTfJson(),
  };
}

/// Typed helper for the `vpc_configuration` block of
/// `aws_grafana_workspace` (derived from provider schema).
@immutable
final class GrafanaWorkspaceVpcConfiguration {
  const GrafanaWorkspaceVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_grafana_workspace`.
final class AwsGrafanaWorkspace extends Resource {
  static const String tfType = 'aws_grafana_workspace';

  AwsGrafanaWorkspace({
    required super.localName,
    required TfArg<String> accountAccessType,
    required TfArg<List<String>> authenticationProviders,
    TfArg<String>? configuration,
    TfArg<List<String>>? dataSources,
    TfArg<String>? description,
    TfArg<String>? grafanaVersion,
    TfArg<String>? kmsKeyId,
    TfArg<String>? name,
    TfArg<List<String>>? notificationDestinations,
    TfArg<String>? organizationRoleName,
    TfArg<List<String>>? organizationalUnits,
    required TfArg<String> permissionType,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<String>? stackSetName,
    TfArg<Map<String, String>>? tags,
    GrafanaWorkspaceNetworkAccessControl? networkAccessControl,
    GrafanaWorkspaceVpcConfiguration? vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_access_type': accountAccessType,
           'authentication_providers': authenticationProviders,
           if (configuration != null) 'configuration': configuration,
           if (dataSources != null) 'data_sources': dataSources,
           if (description != null) 'description': description,
           if (grafanaVersion != null) 'grafana_version': grafanaVersion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (name != null) 'name': name,
           if (notificationDestinations != null)
             'notification_destinations': notificationDestinations,
           if (organizationRoleName != null)
             'organization_role_name': organizationRoleName,
           if (organizationalUnits != null)
             'organizational_units': organizationalUnits,
           'permission_type': permissionType,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (stackSetName != null) 'stack_set_name': stackSetName,
           if (tags != null) 'tags': tags,
           if (networkAccessControl != null)
             'network_access_control': TfArg.literal(
               networkAccessControl.encode(),
             ),
           if (vpcConfiguration != null)
             'vpc_configuration': TfArg.literal(vpcConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaWorkspaceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `saml_configuration_status` attribute.
  TfRef<String> get samlConfigurationStatus =>
      TfRef.attribute<String>(this, 'saml_configuration_status');
}
