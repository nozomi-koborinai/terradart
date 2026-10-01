// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_workspaces_directory`.
const Set<String> _awsWorkspacesDirectorySensitive = <String>{};

/// Workspaces Directory enum for `tenancy`.
extension type const WorkspacesDirectoryTenancy._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryTenancy.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryTenancy.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryTenancy.arg(TfArg<String> arg) : this._(arg);

  static const dedicated = WorkspacesDirectoryTenancy._(
    TfArgLiteral('DEDICATED'),
  );
  static const shared = WorkspacesDirectoryTenancy._(TfArgLiteral('SHARED'));

  static const List<WorkspacesDirectoryTenancy> values = [dedicated, shared];
}

/// Workspaces Directory User Identity enum for `user_identity_type`.
extension type const WorkspacesDirectoryUserIdentityType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryUserIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryUserIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryUserIdentityType.arg(TfArg<String> arg)
    : this._(arg);

  static const customerManaged = WorkspacesDirectoryUserIdentityType._(
    TfArgLiteral('CUSTOMER_MANAGED'),
  );
  static const awsDirectoryService = WorkspacesDirectoryUserIdentityType._(
    TfArgLiteral('AWS_DIRECTORY_SERVICE'),
  );
  static const awsIamIdentityCenter = WorkspacesDirectoryUserIdentityType._(
    TfArgLiteral('AWS_IAM_IDENTITY_CENTER'),
  );

  static const List<WorkspacesDirectoryUserIdentityType> values = [
    customerManaged,
    awsDirectoryService,
    awsIamIdentityCenter,
  ];
}

/// Workspaces Directory Workspace enum for `workspace_type`.
extension type const WorkspacesDirectoryWorkspaceType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryWorkspaceType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryWorkspaceType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryWorkspaceType.arg(TfArg<String> arg) : this._(arg);

  static const personal = WorkspacesDirectoryWorkspaceType._(
    TfArgLiteral('PERSONAL'),
  );
  static const pools = WorkspacesDirectoryWorkspaceType._(
    TfArgLiteral('POOLS'),
  );

  static const List<WorkspacesDirectoryWorkspaceType> values = [
    personal,
    pools,
  ];
}

/// Typed helper for the `active_directory_config` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryActiveDirectoryConfig {
  const WorkspacesDirectoryActiveDirectoryConfig({
    required this.domainName,
    required this.serviceAccountSecretArn,
  });

  final TfArg<String> domainName;

  final TfArg<String> serviceAccountSecretArn;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'service_account_secret_arn': serviceAccountSecretArn.toTfJson(),
  };
}

/// Typed helper for the `certificate_based_auth_properties` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryCertificateBasedAuthProperties {
  const WorkspacesDirectoryCertificateBasedAuthProperties({
    this.certificateAuthorityArn,
    this.status,
  });

  final TfArg<String>? certificateAuthorityArn;

  final WorkspacesDirectoryCertificateBasedAuthPropertiesStatus? status;

  Map<String, Object?> encode() => {
    'certificate_authority_arn': ?certificateAuthorityArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const WorkspacesDirectoryCertificateBasedAuthPropertiesStatus._(
  TfArg<String> _
) implements TfArg<String> {
  WorkspacesDirectoryCertificateBasedAuthPropertiesStatus.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryCertificateBasedAuthPropertiesStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkspacesDirectoryCertificateBasedAuthPropertiesStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const disabled =
      WorkspacesDirectoryCertificateBasedAuthPropertiesStatus._(
        TfArgLiteral('DISABLED'),
      );
  static const enabled =
      WorkspacesDirectoryCertificateBasedAuthPropertiesStatus._(
        TfArgLiteral('ENABLED'),
      );

  static const List<WorkspacesDirectoryCertificateBasedAuthPropertiesStatus>
  values = [disabled, enabled];
}

/// Typed helper for the `saml_properties` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectorySamlProperties {
  const WorkspacesDirectorySamlProperties({
    this.relayStateParameterName,
    this.status,
    this.userAccessUrl,
  });

  final TfArg<String>? relayStateParameterName;

  final WorkspacesDirectorySamlPropertiesStatus? status;

  final TfArg<String>? userAccessUrl;

  Map<String, Object?> encode() => {
    'relay_state_parameter_name': ?relayStateParameterName?.toTfJson(),
    'status': ?status?.toTfJson(),
    'user_access_url': ?userAccessUrl?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const WorkspacesDirectorySamlPropertiesStatus._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectorySamlPropertiesStatus.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectorySamlPropertiesStatus.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectorySamlPropertiesStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = WorkspacesDirectorySamlPropertiesStatus._(
    TfArgLiteral('DISABLED'),
  );
  static const enabled = WorkspacesDirectorySamlPropertiesStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const enabledWithDirectoryLoginFallback =
      WorkspacesDirectorySamlPropertiesStatus._(
        TfArgLiteral('ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK'),
      );

  static const List<WorkspacesDirectorySamlPropertiesStatus> values = [
    disabled,
    enabled,
    enabledWithDirectoryLoginFallback,
  ];
}

/// Typed helper for the `self_service_permissions` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectorySelfServicePermissions {
  const WorkspacesDirectorySelfServicePermissions({
    this.changeComputeType,
    this.increaseVolumeSize,
    this.rebuildWorkspace,
    this.restartWorkspace,
    this.switchRunningMode,
  });

  final TfArg<bool>? changeComputeType;

  final TfArg<bool>? increaseVolumeSize;

  final TfArg<bool>? rebuildWorkspace;

  final TfArg<bool>? restartWorkspace;

  final TfArg<bool>? switchRunningMode;

  Map<String, Object?> encode() => {
    'change_compute_type': ?changeComputeType?.toTfJson(),
    'increase_volume_size': ?increaseVolumeSize?.toTfJson(),
    'rebuild_workspace': ?rebuildWorkspace?.toTfJson(),
    'restart_workspace': ?restartWorkspace?.toTfJson(),
    'switch_running_mode': ?switchRunningMode?.toTfJson(),
  };
}

/// Typed helper for the `workspace_access_properties` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryWorkspaceAccessProperties {
  const WorkspacesDirectoryWorkspaceAccessProperties({
    this.deviceTypeAndroid,
    this.deviceTypeChromeos,
    this.deviceTypeIos,
    this.deviceTypeLinux,
    this.deviceTypeOsx,
    this.deviceTypeWeb,
    this.deviceTypeWindows,
    this.deviceTypeZeroclient,
    this.accessEndpointConfig,
  });

  final WorkspacesDirectoryDeviceTypeAndroid? deviceTypeAndroid;

  final WorkspacesDirectoryDeviceTypeChromeos? deviceTypeChromeos;

  final WorkspacesDirectoryDeviceTypeIos? deviceTypeIos;

  final WorkspacesDirectoryDeviceTypeLinux? deviceTypeLinux;

  final WorkspacesDirectoryDeviceTypeOsx? deviceTypeOsx;

  final WorkspacesDirectoryDeviceTypeWeb? deviceTypeWeb;

  final WorkspacesDirectoryDeviceTypeWindows? deviceTypeWindows;

  final WorkspacesDirectoryDeviceTypeZeroclient? deviceTypeZeroclient;

  final WorkspacesDirectoryAccessEndpointConfig? accessEndpointConfig;

  Map<String, Object?> encode() => {
    'device_type_android': ?deviceTypeAndroid?.toTfJson(),
    'device_type_chromeos': ?deviceTypeChromeos?.toTfJson(),
    'device_type_ios': ?deviceTypeIos?.toTfJson(),
    'device_type_linux': ?deviceTypeLinux?.toTfJson(),
    'device_type_osx': ?deviceTypeOsx?.toTfJson(),
    'device_type_web': ?deviceTypeWeb?.toTfJson(),
    'device_type_windows': ?deviceTypeWindows?.toTfJson(),
    'device_type_zeroclient': ?deviceTypeZeroclient?.toTfJson(),
    'access_endpoint_config': ?accessEndpointConfig?.encode(),
  };
}

/// `device_type_android` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeAndroid._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeAndroid.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeAndroid.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeAndroid.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeAndroid._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeAndroid._(
    TfArgLiteral('DENY'),
  );

  static const List<WorkspacesDirectoryDeviceTypeAndroid> values = [
    allow,
    deny,
  ];
}

/// `device_type_chromeos` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeChromeos._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeChromeos.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeChromeos.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeChromeos.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeChromeos._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeChromeos._(
    TfArgLiteral('DENY'),
  );

  static const List<WorkspacesDirectoryDeviceTypeChromeos> values = [
    allow,
    deny,
  ];
}

/// `device_type_ios` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeIos._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeIos.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeIos.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeIos.arg(TfArg<String> arg) : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeIos._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeIos._(TfArgLiteral('DENY'));

  static const List<WorkspacesDirectoryDeviceTypeIos> values = [allow, deny];
}

/// `device_type_linux` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeLinux._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeLinux.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeLinux.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeLinux.arg(TfArg<String> arg) : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeLinux._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeLinux._(
    TfArgLiteral('DENY'),
  );

  static const List<WorkspacesDirectoryDeviceTypeLinux> values = [allow, deny];
}

/// `device_type_osx` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeOsx._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeOsx.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeOsx.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeOsx.arg(TfArg<String> arg) : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeOsx._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeOsx._(TfArgLiteral('DENY'));

  static const List<WorkspacesDirectoryDeviceTypeOsx> values = [allow, deny];
}

/// `device_type_web` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeWeb._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeWeb.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeWeb.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeWeb.arg(TfArg<String> arg) : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeWeb._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeWeb._(TfArgLiteral('DENY'));

  static const List<WorkspacesDirectoryDeviceTypeWeb> values = [allow, deny];
}

/// `device_type_windows` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeWindows._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeWindows.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeWindows.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeWindows.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeWindows._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeWindows._(
    TfArgLiteral('DENY'),
  );

  static const List<WorkspacesDirectoryDeviceTypeWindows> values = [
    allow,
    deny,
  ];
}

/// `device_type_zeroclient` — derived from the provider schema description.
extension type const WorkspacesDirectoryDeviceTypeZeroclient._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryDeviceTypeZeroclient.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryDeviceTypeZeroclient.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryDeviceTypeZeroclient.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WorkspacesDirectoryDeviceTypeZeroclient._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = WorkspacesDirectoryDeviceTypeZeroclient._(
    TfArgLiteral('DENY'),
  );

  static const List<WorkspacesDirectoryDeviceTypeZeroclient> values = [
    allow,
    deny,
  ];
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryAccessEndpointConfig {
  const WorkspacesDirectoryAccessEndpointConfig({
    this.internetFallbackProtocols,
    required this.accessEndpoints,
  });

  final List<WorkspacesDirectoryInternetFallbackProtocols>?
  internetFallbackProtocols;

  final List<WorkspacesDirectoryAccessEndpoints> accessEndpoints;

  Map<String, Object?> encode() => {
    if (internetFallbackProtocols != null)
      'internet_fallback_protocols': [
        for (final e in internetFallbackProtocols!) e.toTfJson(),
      ],
    'access_endpoints': [for (final e in accessEndpoints) e.encode()],
  };
}

/// `internet_fallback_protocols` — derived from the provider schema description.
extension type const WorkspacesDirectoryInternetFallbackProtocols._(
  TfArg<String> _
) implements TfArg<String> {
  WorkspacesDirectoryInternetFallbackProtocols.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryInternetFallbackProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryInternetFallbackProtocols.arg(TfArg<String> arg)
    : this._(arg);

  static const pcoip = WorkspacesDirectoryInternetFallbackProtocols._(
    TfArgLiteral('PCOIP'),
  );

  static const List<WorkspacesDirectoryInternetFallbackProtocols> values = [
    pcoip,
  ];
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config.access_endpoints` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryAccessEndpoints {
  const WorkspacesDirectoryAccessEndpoints({
    required this.accessEndpointType,
    required this.vpcEndpointId,
  });

  final WorkspacesDirectoryAccessEndpointType accessEndpointType;

  final TfArg<String> vpcEndpointId;

  Map<String, Object?> encode() => {
    'access_endpoint_type': accessEndpointType.toTfJson(),
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };
}

/// `access_endpoint_type` — derived from the provider schema description.
extension type const WorkspacesDirectoryAccessEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  WorkspacesDirectoryAccessEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  WorkspacesDirectoryAccessEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkspacesDirectoryAccessEndpointType.arg(TfArg<String> arg)
    : this._(arg);

  static const streamingWsp = WorkspacesDirectoryAccessEndpointType._(
    TfArgLiteral('STREAMING_WSP'),
  );

  static const List<WorkspacesDirectoryAccessEndpointType> values = [
    streamingWsp,
  ];
}

/// Typed helper for the `workspace_creation_properties` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryWorkspaceCreationProperties {
  const WorkspacesDirectoryWorkspaceCreationProperties({
    this.customSecurityGroupId,
    this.defaultOu,
    this.enableInternetAccess,
    this.enableMaintenanceMode,
    this.userEnabledAsLocalAdministrator,
  });

  final TfArg<String>? customSecurityGroupId;

  final TfArg<String>? defaultOu;

  final TfArg<bool>? enableInternetAccess;

  final TfArg<bool>? enableMaintenanceMode;

  final TfArg<bool>? userEnabledAsLocalAdministrator;

  Map<String, Object?> encode() => {
    'custom_security_group_id': ?customSecurityGroupId?.toTfJson(),
    'default_ou': ?defaultOu?.toTfJson(),
    'enable_internet_access': ?enableInternetAccess?.toTfJson(),
    'enable_maintenance_mode': ?enableMaintenanceMode?.toTfJson(),
    'user_enabled_as_local_administrator': ?userEnabledAsLocalAdministrator
        ?.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspaces_directory`.
final class AwsWorkspacesDirectory extends Resource {
  static const String tfType = 'aws_workspaces_directory';

  AwsWorkspacesDirectory(
    super.localName, {
    TfArg<String>? directoryId,
    TfArg<List<String>>? ipGroupIds,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    WorkspacesDirectoryTenancy? tenancy,
    WorkspacesDirectoryUserIdentityType? userIdentityType,
    TfArg<String>? workspaceDirectoryDescription,
    TfArg<String>? workspaceDirectoryName,
    WorkspacesDirectoryWorkspaceType? workspaceType,
    WorkspacesDirectoryActiveDirectoryConfig? activeDirectoryConfig,
    WorkspacesDirectoryCertificateBasedAuthProperties?
    certificateBasedAuthProperties,
    WorkspacesDirectorySamlProperties? samlProperties,
    WorkspacesDirectorySelfServicePermissions? selfServicePermissions,
    WorkspacesDirectoryWorkspaceAccessProperties? workspaceAccessProperties,
    WorkspacesDirectoryWorkspaceCreationProperties? workspaceCreationProperties,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': ?directoryId,
           'ip_group_ids': ?ipGroupIds,
           'region': ?region,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           'tenancy': ?tenancy,
           'user_identity_type': ?userIdentityType,
           'workspace_directory_description': ?workspaceDirectoryDescription,
           'workspace_directory_name': ?workspaceDirectoryName,
           'workspace_type': ?workspaceType,
           if (activeDirectoryConfig != null)
             'active_directory_config': TfArg.literal(
               activeDirectoryConfig.encode(),
             ),
           if (certificateBasedAuthProperties != null)
             'certificate_based_auth_properties': TfArg.literal(
               certificateBasedAuthProperties.encode(),
             ),
           if (samlProperties != null)
             'saml_properties': TfArg.literal(samlProperties.encode()),
           if (selfServicePermissions != null)
             'self_service_permissions': TfArg.literal(
               selfServicePermissions.encode(),
             ),
           if (workspaceAccessProperties != null)
             'workspace_access_properties': TfArg.literal(
               workspaceAccessProperties.encode(),
             ),
           if (workspaceCreationProperties != null)
             'workspace_creation_properties': TfArg.literal(
               workspaceCreationProperties.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkspacesDirectory>`.
  RefTo<AwsWorkspacesDirectory> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `customer_user_name` attribute.
  TfRef<String> get customerUserName =>
      TfRef.attribute<String>(this, 'customer_user_name');

  /// Reference to `directory_name` attribute.
  TfRef<String> get directoryName =>
      TfRef.attribute<String>(this, 'directory_name');

  /// Reference to `directory_type` attribute.
  TfRef<String> get directoryType =>
      TfRef.attribute<String>(this, 'directory_type');

  /// Reference to `dns_ip_addresses` attribute.
  TfRef<List<String>> get dnsIpAddresses =>
      TfRef.attribute<List<String>>(this, 'dns_ip_addresses');

  /// Reference to `iam_role_id` attribute.
  TfRef<String> get iamRoleId => TfRef.attribute<String>(this, 'iam_role_id');

  /// Reference to `registration_code` attribute.
  TfRef<String> get registrationCode =>
      TfRef.attribute<String>(this, 'registration_code');

  /// Reference to `workspace_security_group_id` attribute.
  TfRef<String> get workspaceSecurityGroupId =>
      TfRef.attribute<String>(this, 'workspace_security_group_id');

  /// Reference to `directory_id` attribute.
  TfRef<String> get directoryId =>
      TfRef.attribute<String>(this, 'directory_id');

  /// Reference to `ip_group_ids` attribute.
  TfRef<List<String>> get ipGroupIds =>
      TfRef.attribute<List<String>>(this, 'ip_group_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `user_identity_type` attribute.
  TfRef<String> get userIdentityType =>
      TfRef.attribute<String>(this, 'user_identity_type');

  /// Reference to `workspace_directory_description` attribute.
  TfRef<String> get workspaceDirectoryDescription =>
      TfRef.attribute<String>(this, 'workspace_directory_description');

  /// Reference to `workspace_directory_name` attribute.
  TfRef<String> get workspaceDirectoryName =>
      TfRef.attribute<String>(this, 'workspace_directory_name');

  /// Reference to `workspace_type` attribute.
  TfRef<String> get workspaceType =>
      TfRef.attribute<String>(this, 'workspace_type');
}
