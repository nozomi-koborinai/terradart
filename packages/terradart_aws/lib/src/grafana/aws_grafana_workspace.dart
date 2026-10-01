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
extension type const GrafanaWorkspaceAccountAccessType._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaWorkspaceAccountAccessType.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspaceAccountAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspaceAccountAccessType.arg(TfArg<String> arg) : this._(arg);

  static const currentAccount = GrafanaWorkspaceAccountAccessType._(
    TfArgLiteral('CURRENT_ACCOUNT'),
  );
  static const organization = GrafanaWorkspaceAccountAccessType._(
    TfArgLiteral('ORGANIZATION'),
  );

  static const List<GrafanaWorkspaceAccountAccessType> values = [
    currentAccount,
    organization,
  ];
}

/// Grafana Workspace Authentication enum for `authentication_providers`.
extension type const GrafanaWorkspaceAuthenticationProviders._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaWorkspaceAuthenticationProviders.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspaceAuthenticationProviders.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspaceAuthenticationProviders.arg(TfArg<String> arg)
    : this._(arg);

  static const awsSso = GrafanaWorkspaceAuthenticationProviders._(
    TfArgLiteral('AWS_SSO'),
  );
  static const saml = GrafanaWorkspaceAuthenticationProviders._(
    TfArgLiteral('SAML'),
  );

  static const List<GrafanaWorkspaceAuthenticationProviders> values = [
    awsSso,
    saml,
  ];
}

/// Grafana Workspace Data enum for `data_sources`.
extension type const GrafanaWorkspaceDataSources._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaWorkspaceDataSources.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspaceDataSources.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspaceDataSources.arg(TfArg<String> arg) : this._(arg);

  static const amazonOpensearchService = GrafanaWorkspaceDataSources._(
    TfArgLiteral('AMAZON_OPENSEARCH_SERVICE'),
  );
  static const cloudwatch = GrafanaWorkspaceDataSources._(
    TfArgLiteral('CLOUDWATCH'),
  );
  static const prometheus = GrafanaWorkspaceDataSources._(
    TfArgLiteral('PROMETHEUS'),
  );
  static const xray = GrafanaWorkspaceDataSources._(TfArgLiteral('XRAY'));
  static const timestream = GrafanaWorkspaceDataSources._(
    TfArgLiteral('TIMESTREAM'),
  );
  static const sitewise = GrafanaWorkspaceDataSources._(
    TfArgLiteral('SITEWISE'),
  );
  static const athena = GrafanaWorkspaceDataSources._(TfArgLiteral('ATHENA'));
  static const redshift = GrafanaWorkspaceDataSources._(
    TfArgLiteral('REDSHIFT'),
  );
  static const twinmaker = GrafanaWorkspaceDataSources._(
    TfArgLiteral('TWINMAKER'),
  );

  static const List<GrafanaWorkspaceDataSources> values = [
    amazonOpensearchService,
    cloudwatch,
    prometheus,
    xray,
    timestream,
    sitewise,
    athena,
    redshift,
    twinmaker,
  ];
}

/// Grafana Workspace Notification enum for `notification_destinations`.
extension type const GrafanaWorkspaceNotificationDestinations._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaWorkspaceNotificationDestinations.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspaceNotificationDestinations.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspaceNotificationDestinations.arg(TfArg<String> arg)
    : this._(arg);

  static const sns = GrafanaWorkspaceNotificationDestinations._(
    TfArgLiteral('SNS'),
  );

  static const List<GrafanaWorkspaceNotificationDestinations> values = [sns];
}

/// Grafana Workspace Permission enum for `permission_type`.
extension type const GrafanaWorkspacePermissionType._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaWorkspacePermissionType.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaWorkspacePermissionType.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaWorkspacePermissionType.arg(TfArg<String> arg) : this._(arg);

  static const customerManaged = GrafanaWorkspacePermissionType._(
    TfArgLiteral('CUSTOMER_MANAGED'),
  );
  static const serviceManaged = GrafanaWorkspacePermissionType._(
    TfArgLiteral('SERVICE_MANAGED'),
  );

  static const List<GrafanaWorkspacePermissionType> values = [
    customerManaged,
    serviceManaged,
  ];
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

  AwsGrafanaWorkspace(
    super.localName, {
    required GrafanaWorkspaceAccountAccessType accountAccessType,
    required List<GrafanaWorkspaceAuthenticationProviders>
    authenticationProviders,
    TfArg<String>? configuration,
    List<GrafanaWorkspaceDataSources>? dataSources,
    TfArg<String>? description,
    TfArg<String>? grafanaVersion,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? name,
    List<GrafanaWorkspaceNotificationDestinations>? notificationDestinations,
    TfArg<String>? organizationRoleName,
    TfArg<List<String>>? organizationalUnits,
    required GrafanaWorkspacePermissionType permissionType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get accountAccessType =>
      TfRef.attribute<String>(this, 'account_access_type');

  /// Reference to `authentication_providers` attribute.
  TfRef<List<String>> get authenticationProviders =>
      TfRef.attribute<List<String>>(this, 'authentication_providers');

  /// Reference to `configuration` attribute.
  TfRef<String> get configuration =>
      TfRef.attribute<String>(this, 'configuration');

  /// Reference to `data_sources` attribute.
  TfRef<List<String>> get dataSources =>
      TfRef.attribute<List<String>>(this, 'data_sources');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `grafana_version` attribute.
  TfRef<String> get grafanaVersion =>
      TfRef.attribute<String>(this, 'grafana_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `stack_set_name` attribute.
  TfRef<String> get stackSetName =>
      TfRef.attribute<String>(this, 'stack_set_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
