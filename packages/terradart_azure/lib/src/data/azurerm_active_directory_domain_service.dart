// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../active_directory/azurerm_active_directory_domain_service.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_active_directory_domain_service`.
const Set<String> _azurermActiveDirectoryDomainServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_active_directory_domain_service`.
final class DataAzurermActiveDirectoryDomainService extends Data {
  static const String tfType = 'azurerm_active_directory_domain_service';

  DataAzurermActiveDirectoryDomainService(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermActiveDirectoryDomainServiceSensitive;

  /// A reference to the `azurerm_active_directory_domain_service` this data source reads, for
  /// arguments typed `RefTo<AzurermActiveDirectoryDomainService>`.
  RefTo<AzurermActiveDirectoryDomainService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployment_id` attribute.
  TfRef<String> get deploymentId =>
      TfRef.attribute<String>(this, 'deployment_id');

  /// Reference to `domain_configuration_type` attribute.
  TfRef<String> get domainConfigurationType =>
      TfRef.attribute<String>(this, 'domain_configuration_type');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `filtered_sync_enabled` attribute.
  TfRef<bool> get filteredSyncEnabled =>
      TfRef.attribute<bool>(this, 'filtered_sync_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `notifications` attribute.
  TfRef<List<Map<String, Object?>>> get notifications =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'notifications');

  /// Reference to `replica_sets` attribute.
  TfRef<List<Map<String, Object?>>> get replicaSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replica_sets');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `secure_ldap` attribute.
  TfRef<List<Map<String, Object?>>> get secureLdap =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secure_ldap');

  /// Reference to `security` attribute.
  TfRef<List<Map<String, Object?>>> get security =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'security');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sync_owner` attribute.
  TfRef<String> get syncOwner => TfRef.attribute<String>(this, 'sync_owner');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
