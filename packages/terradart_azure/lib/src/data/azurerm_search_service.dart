// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../search/azurerm_search_service.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_search_service`.
const Set<String> _azurermSearchServiceSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Factory wrapper for `azurerm_search_service`.
final class DataAzurermSearchService extends Data {
  static const String tfType = 'azurerm_search_service';

  DataAzurermSearchService(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSearchServiceSensitive;

  /// A reference to the `azurerm_search_service` this data source reads, for
  /// arguments typed `RefTo<AzurermSearchService>`.
  RefTo<AzurermSearchService> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key_encryption_compliance_status` attribute.
  TfRef<String> get customerManagedKeyEncryptionComplianceStatus =>
      TfRef.attribute<String>(
        this,
        'customer_managed_key_encryption_compliance_status',
      );

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `query_keys` attribute.
  TfRef<List<Map<String, Object?>>> get queryKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'query_keys');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
