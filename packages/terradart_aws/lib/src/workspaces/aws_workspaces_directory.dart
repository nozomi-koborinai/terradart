// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_directory`.
const Set<String> _awsWorkspacesDirectorySensitive = <String>{};

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

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (certificateAuthorityArn != null)
      'certificate_authority_arn': certificateAuthorityArn!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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

  final TfArg<String>? status;

  final TfArg<String>? userAccessUrl;

  Map<String, Object?> encode() => {
    if (relayStateParameterName != null)
      'relay_state_parameter_name': relayStateParameterName!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (userAccessUrl != null) 'user_access_url': userAccessUrl!.toTfJson(),
  };
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
    if (changeComputeType != null)
      'change_compute_type': changeComputeType!.toTfJson(),
    if (increaseVolumeSize != null)
      'increase_volume_size': increaseVolumeSize!.toTfJson(),
    if (rebuildWorkspace != null)
      'rebuild_workspace': rebuildWorkspace!.toTfJson(),
    if (restartWorkspace != null)
      'restart_workspace': restartWorkspace!.toTfJson(),
    if (switchRunningMode != null)
      'switch_running_mode': switchRunningMode!.toTfJson(),
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

  final TfArg<String>? deviceTypeAndroid;

  final TfArg<String>? deviceTypeChromeos;

  final TfArg<String>? deviceTypeIos;

  final TfArg<String>? deviceTypeLinux;

  final TfArg<String>? deviceTypeOsx;

  final TfArg<String>? deviceTypeWeb;

  final TfArg<String>? deviceTypeWindows;

  final TfArg<String>? deviceTypeZeroclient;

  final WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfig?
  accessEndpointConfig;

  Map<String, Object?> encode() => {
    if (deviceTypeAndroid != null)
      'device_type_android': deviceTypeAndroid!.toTfJson(),
    if (deviceTypeChromeos != null)
      'device_type_chromeos': deviceTypeChromeos!.toTfJson(),
    if (deviceTypeIos != null) 'device_type_ios': deviceTypeIos!.toTfJson(),
    if (deviceTypeLinux != null)
      'device_type_linux': deviceTypeLinux!.toTfJson(),
    if (deviceTypeOsx != null) 'device_type_osx': deviceTypeOsx!.toTfJson(),
    if (deviceTypeWeb != null) 'device_type_web': deviceTypeWeb!.toTfJson(),
    if (deviceTypeWindows != null)
      'device_type_windows': deviceTypeWindows!.toTfJson(),
    if (deviceTypeZeroclient != null)
      'device_type_zeroclient': deviceTypeZeroclient!.toTfJson(),
    if (accessEndpointConfig != null)
      'access_endpoint_config': accessEndpointConfig!.encode(),
  };
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfig {
  const WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfig({
    this.internetFallbackProtocols,
    required this.accessEndpoints,
  });

  final TfArg<List<Object?>>? internetFallbackProtocols;

  final List<
    WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoints
  >
  accessEndpoints;

  Map<String, Object?> encode() => {
    if (internetFallbackProtocols != null)
      'internet_fallback_protocols': internetFallbackProtocols!.toTfJson(),
    'access_endpoints': [for (final e in accessEndpoints) e.encode()],
  };
}

/// Typed helper for the `workspace_access_properties.access_endpoint_config.access_endpoints` block of
/// `aws_workspaces_directory` (derived from provider schema).
@immutable
final class WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoints {
  const WorkspacesDirectoryWorkspaceAccessPropertiesAccessEndpointConfigAccessEndpoints({
    required this.accessEndpointType,
    required this.vpcEndpointId,
  });

  final TfArg<String> accessEndpointType;

  final TfArg<String> vpcEndpointId;

  Map<String, Object?> encode() => {
    'access_endpoint_type': accessEndpointType.toTfJson(),
    'vpc_endpoint_id': vpcEndpointId.toTfJson(),
  };
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
    if (customSecurityGroupId != null)
      'custom_security_group_id': customSecurityGroupId!.toTfJson(),
    if (defaultOu != null) 'default_ou': defaultOu!.toTfJson(),
    if (enableInternetAccess != null)
      'enable_internet_access': enableInternetAccess!.toTfJson(),
    if (enableMaintenanceMode != null)
      'enable_maintenance_mode': enableMaintenanceMode!.toTfJson(),
    if (userEnabledAsLocalAdministrator != null)
      'user_enabled_as_local_administrator': userEnabledAsLocalAdministrator!
          .toTfJson(),
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
    TfArg<List<String>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tenancy,
    TfArg<String>? userIdentityType,
    TfArg<String>? workspaceDirectoryDescription,
    TfArg<String>? workspaceDirectoryName,
    TfArg<String>? workspaceType,
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
           if (directoryId != null) 'directory_id': directoryId,
           if (ipGroupIds != null) 'ip_group_ids': ipGroupIds,
           if (region != null) 'region': region,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (tenancy != null) 'tenancy': tenancy,
           if (userIdentityType != null) 'user_identity_type': userIdentityType,
           if (workspaceDirectoryDescription != null)
             'workspace_directory_description': workspaceDirectoryDescription,
           if (workspaceDirectoryName != null)
             'workspace_directory_name': workspaceDirectoryName,
           if (workspaceType != null) 'workspace_type': workspaceType,
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
}
