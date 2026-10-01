// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_workspaces_directory`.
const Set<String> _awsWorkspacesDirectorySensitive = <String>{};

/// Workspaces Directory enum for `tenancy`.
enum WorkspacesDirectoryTenancy implements TerraformEnum {
  dedicated('DEDICATED'),
  shared('SHARED');

  const WorkspacesDirectoryTenancy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspaces Directory User Identity enum for `user_identity_type`.
enum WorkspacesDirectoryUserIdentityType implements TerraformEnum {
  customerManaged('CUSTOMER_MANAGED'),
  awsDirectoryService('AWS_DIRECTORY_SERVICE'),
  awsIamIdentityCenter('AWS_IAM_IDENTITY_CENTER');

  const WorkspacesDirectoryUserIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workspaces Directory Workspace enum for `workspace_type`.
enum WorkspacesDirectoryWorkspaceType implements TerraformEnum {
  personal('PERSONAL'),
  pools('POOLS');

  const WorkspacesDirectoryWorkspaceType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<WorkspacesDirectoryCertificateBasedAuthPropertiesStatus>? status;

  Map<String, Object?> encode() => {
    'certificate_authority_arn': ?certificateAuthorityArn?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum WorkspacesDirectoryCertificateBasedAuthPropertiesStatus
    implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const WorkspacesDirectoryCertificateBasedAuthPropertiesStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<WorkspacesDirectorySamlPropertiesStatus>? status;

  final TfArg<String>? userAccessUrl;

  Map<String, Object?> encode() => {
    'relay_state_parameter_name': ?relayStateParameterName?.toTfJson(),
    'status': ?status?.toTfJson(),
    'user_access_url': ?userAccessUrl?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum WorkspacesDirectorySamlPropertiesStatus implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  enabledWithDirectoryLoginFallback('ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK');

  const WorkspacesDirectorySamlPropertiesStatus(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<WorkspacesDirectoryDeviceTypeAndroid>? deviceTypeAndroid;

  final TfArg<WorkspacesDirectoryDeviceTypeChromeos>? deviceTypeChromeos;

  final TfArg<WorkspacesDirectoryDeviceTypeIos>? deviceTypeIos;

  final TfArg<WorkspacesDirectoryDeviceTypeLinux>? deviceTypeLinux;

  final TfArg<WorkspacesDirectoryDeviceTypeOsx>? deviceTypeOsx;

  final TfArg<WorkspacesDirectoryDeviceTypeWeb>? deviceTypeWeb;

  final TfArg<WorkspacesDirectoryDeviceTypeWindows>? deviceTypeWindows;

  final TfArg<WorkspacesDirectoryDeviceTypeZeroclient>? deviceTypeZeroclient;

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
enum WorkspacesDirectoryDeviceTypeAndroid implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeAndroid(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_chromeos` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeChromeos implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeChromeos(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_ios` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeIos implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeIos(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_linux` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeLinux implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeLinux(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_osx` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeOsx implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeOsx(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_web` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeWeb implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeWeb(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_windows` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeWindows implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeWindows(this.terraformValue);
  @override
  final String terraformValue;
}

/// `device_type_zeroclient` — derived from the provider schema description.
enum WorkspacesDirectoryDeviceTypeZeroclient implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const WorkspacesDirectoryDeviceTypeZeroclient(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryAccessEndpointConfig {
  const WorkspacesDirectoryAccessEndpointConfig({
    this.internetFallbackProtocols,
    required this.accessEndpoints,
  });

  final List<TfArg<WorkspacesDirectoryInternetFallbackProtocols>>?
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
enum WorkspacesDirectoryInternetFallbackProtocols implements TerraformEnum {
  pcoip('PCOIP');

  const WorkspacesDirectoryInternetFallbackProtocols(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config.access_endpoints` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryAccessEndpoints {
  const WorkspacesDirectoryAccessEndpoints({
    required this.accessEndpointType,
    required this.vpcEndpointId,
  });

  final TfArg<WorkspacesDirectoryAccessEndpointType> accessEndpointType;

  final TfArg<String> vpcEndpointId;

  Map<String, Object?> encode() => {
    'access_endpoint_type': accessEndpointType.toTfJson(),
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };
}

/// `access_endpoint_type` — derived from the provider schema description.
enum WorkspacesDirectoryAccessEndpointType implements TerraformEnum {
  streamingWsp('STREAMING_WSP');

  const WorkspacesDirectoryAccessEndpointType(this.terraformValue);
  @override
  final String terraformValue;
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

  AwsWorkspacesDirectory({
    required super.localName,
    TfArg<String>? directoryId,
    TfArg<List<String>>? ipGroupIds,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<WorkspacesDirectoryTenancy>? tenancy,
    TfArg<WorkspacesDirectoryUserIdentityType>? userIdentityType,
    TfArg<String>? workspaceDirectoryDescription,
    TfArg<String>? workspaceDirectoryName,
    TfArg<WorkspacesDirectoryWorkspaceType>? workspaceType,
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
