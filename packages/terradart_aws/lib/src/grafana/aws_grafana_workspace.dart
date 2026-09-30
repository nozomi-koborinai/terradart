// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final TfArg<List<String>> prefixListIds;

  final TfArg<List<String>> vpceIds;

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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
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
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? name,
    List<TfArg<GrafanaWorkspaceNotificationDestinations>>?
    notificationDestinations,
    TfArg<String>? organizationRoleName,
    TfArg<List<String>>? organizationalUnits,
    required TfArg<GrafanaWorkspacePermissionType> permissionType,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
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
           'configuration': ?configuration,
           if (dataSources != null)
             'data_sources': TfArg.literal([
               for (final e in dataSources) e.toTfJson(),
             ]),
           'description': ?description,
           'grafana_version': ?grafanaVersion,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': ?name,
           if (notificationDestinations != null)
             'notification_destinations': TfArg.literal([
               for (final e in notificationDestinations) e.toTfJson(),
             ]),
           'organization_role_name': ?organizationRoleName,
           'organizational_units': ?organizationalUnits,
           'permission_type': permissionType,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'stack_set_name': ?stackSetName,
           'tags': ?tags,
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

  /// Reference to `account_access_type` attribute.
  TfRef<String> get accountAccessTypeRef =>
      TfRef.attribute<String>(this, 'account_access_type');

  /// Reference to `authentication_providers` attribute.
  TfRef<List<String>> get authenticationProvidersRef =>
      TfRef.attribute<List<String>>(this, 'authentication_providers');

  /// Reference to `configuration` attribute.
  TfRef<String> get configurationRef =>
      TfRef.attribute<String>(this, 'configuration');

  /// Reference to `data_sources` attribute.
  TfRef<List<String>> get dataSourcesRef =>
      TfRef.attribute<List<String>>(this, 'data_sources');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `grafana_version` attribute.
  TfRef<String> get grafanaVersionRef =>
      TfRef.attribute<String>(this, 'grafana_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `notification_destinations` attribute.
  TfRef<List<String>> get notificationDestinationsRef =>
      TfRef.attribute<List<String>>(this, 'notification_destinations');

  /// Reference to `organization_role_name` attribute.
  TfRef<String> get organizationRoleNameRef =>
      TfRef.attribute<String>(this, 'organization_role_name');

  /// Reference to `organizational_units` attribute.
  TfRef<List<String>> get organizationalUnitsRef =>
      TfRef.attribute<List<String>>(this, 'organizational_units');

  /// Reference to `permission_type` attribute.
  TfRef<String> get permissionTypeRef =>
      TfRef.attribute<String>(this, 'permission_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `stack_set_name` attribute.
  TfRef<String> get stackSetNameRef =>
      TfRef.attribute<String>(this, 'stack_set_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
