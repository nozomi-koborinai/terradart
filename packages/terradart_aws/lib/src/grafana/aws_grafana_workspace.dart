// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace`.
const Set<String> _awsGrafanaWorkspaceSensitive = <String>{};

/// Grafana Workspace Account Access enum for `account_access_type`.
enum GrafanaWorkspaceAccountAccessType implements TerraformEnum {
  currentAccount('CURRENT_ACCOUNT'),
  organization('ORGANIZATION');

  const GrafanaWorkspaceAccountAccessType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Grafana Workspace Authentication enum for `authentication_providers`.
enum GrafanaWorkspaceAuthenticationProviders implements TerraformEnum {
  awsSso('AWS_SSO'),
  saml('SAML');

  const GrafanaWorkspaceAuthenticationProviders(this.terraformValue);
  @override
  final String terraformValue;
}

/// Grafana Workspace Data enum for `data_sources`.
enum GrafanaWorkspaceDataSources implements TerraformEnum {
  amazonOpensearchService('AMAZON_OPENSEARCH_SERVICE'),
  cloudwatch('CLOUDWATCH'),
  prometheus('PROMETHEUS'),
  xray('XRAY'),
  timestream('TIMESTREAM'),
  sitewise('SITEWISE'),
  athena('ATHENA'),
  redshift('REDSHIFT'),
  twinmaker('TWINMAKER');

  const GrafanaWorkspaceDataSources(this.terraformValue);
  @override
  final String terraformValue;
}

/// Grafana Workspace Notification enum for `notification_destinations`.
enum GrafanaWorkspaceNotificationDestinations implements TerraformEnum {
  sns('SNS');

  const GrafanaWorkspaceNotificationDestinations(this.terraformValue);
  @override
  final String terraformValue;
}

/// Grafana Workspace Permission enum for `permission_type`.
enum GrafanaWorkspacePermissionType implements TerraformEnum {
  customerManaged('CUSTOMER_MANAGED'),
  serviceManaged('SERVICE_MANAGED');

  const GrafanaWorkspacePermissionType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required TfArg<GrafanaWorkspaceAccountAccessType> accountAccessType,
    required List<TfArg<GrafanaWorkspaceAuthenticationProviders>>
    authenticationProviders,
    TfArg<String>? configuration,
    List<TfArg<GrafanaWorkspaceDataSources>>? dataSources,
    TfArg<String>? description,
    TfArg<String>? grafanaVersion,
    TfArg<String>? kmsKeyId,
    TfArg<String>? name,
    List<TfArg<GrafanaWorkspaceNotificationDestinations>>?
    notificationDestinations,
    TfArg<String>? organizationRoleName,
    TfArg<List<String>>? organizationalUnits,
    required TfArg<GrafanaWorkspacePermissionType> permissionType,
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
           'authentication_providers': TfArg.literal([
             for (final e in authenticationProviders) e.toTfJson(),
           ]),
           if (configuration != null) 'configuration': configuration,
           if (dataSources != null)
             'data_sources': TfArg.literal([
               for (final e in dataSources) e.toTfJson(),
             ]),
           if (description != null) 'description': description,
           if (grafanaVersion != null) 'grafana_version': grafanaVersion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (name != null) 'name': name,
           if (notificationDestinations != null)
             'notification_destinations': TfArg.literal([
               for (final e in notificationDestinations) e.toTfJson(),
             ]),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaWorkspace>`.
  RefTo<AwsGrafanaWorkspace> get ref => RefTo.of(this);

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
