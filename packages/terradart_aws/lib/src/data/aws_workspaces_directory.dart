// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_directory`.
const Set<String> _awsWorkspacesDirectorySensitive = <String>{};

/// Factory wrapper for `aws_workspaces_directory`.
final class DataAwsWorkspacesDirectory extends Data {
  static const String tfType = 'aws_workspaces_directory';

  DataAwsWorkspacesDirectory({
    required super.localName,
    required TfArg<String> directoryId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesDirectorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_directory_config` attribute.
  TfRef<List<Map<String, Object?>>> get activeDirectoryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'active_directory_config',
      );

  /// Reference to `alias` attribute.
  TfRef<String> get alias => TfRef.attribute<String>(this, 'alias');

  /// Reference to `certificate_based_auth_properties` attribute.
  TfRef<List<Map<String, Object?>>> get certificateBasedAuthProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'certificate_based_auth_properties',
      );

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

  /// Reference to `ip_group_ids` attribute.
  TfRef<List<String>> get ipGroupIds =>
      TfRef.attribute<List<String>>(this, 'ip_group_ids');

  /// Reference to `registration_code` attribute.
  TfRef<String> get registrationCode =>
      TfRef.attribute<String>(this, 'registration_code');

  /// Reference to `saml_properties` attribute.
  TfRef<List<Map<String, Object?>>> get samlProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'saml_properties');

  /// Reference to `self_service_permissions` attribute.
  TfRef<List<Map<String, Object?>>> get selfServicePermissions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'self_service_permissions',
      );

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tenancy` attribute.
  TfRef<String> get tenancy => TfRef.attribute<String>(this, 'tenancy');

  /// Reference to `user_identity_type` attribute.
  TfRef<String> get userIdentityType =>
      TfRef.attribute<String>(this, 'user_identity_type');

  /// Reference to `workspace_access_properties` attribute.
  TfRef<List<Map<String, Object?>>> get workspaceAccessProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workspace_access_properties',
      );

  /// Reference to `workspace_creation_properties` attribute.
  TfRef<List<Map<String, Object?>>> get workspaceCreationProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workspace_creation_properties',
      );

  /// Reference to `workspace_directory_description` attribute.
  TfRef<String> get workspaceDirectoryDescription =>
      TfRef.attribute<String>(this, 'workspace_directory_description');

  /// Reference to `workspace_directory_name` attribute.
  TfRef<String> get workspaceDirectoryName =>
      TfRef.attribute<String>(this, 'workspace_directory_name');

  /// Reference to `workspace_security_group_id` attribute.
  TfRef<String> get workspaceSecurityGroupId =>
      TfRef.attribute<String>(this, 'workspace_security_group_id');

  /// Reference to `workspace_type` attribute.
  TfRef<String> get workspaceType =>
      TfRef.attribute<String>(this, 'workspace_type');
}
