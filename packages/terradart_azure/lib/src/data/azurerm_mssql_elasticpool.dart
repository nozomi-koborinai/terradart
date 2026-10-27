// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_elasticpool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_elasticpool`.
const Set<String> _azurermMssqlElasticpoolSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_elasticpool`.
final class DataAzurermMssqlElasticpool extends Data {
  static const String tfType = 'azurerm_mssql_elasticpool';

  DataAzurermMssqlElasticpool(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlElasticpoolSensitive;

  /// A reference to the `azurerm_mssql_elasticpool` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlElasticpool>`.
  RefTo<AzurermMssqlElasticpool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enclave_type` attribute.
  TfRef<String> get enclaveType =>
      TfRef.attribute<String>(this, 'enclave_type');

  /// Reference to `high_availability_replica_count` attribute.
  TfRef<num> get highAvailabilityReplicaCount =>
      TfRef.attribute<num>(this, 'high_availability_replica_count');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_size_bytes` attribute.
  TfRef<num> get maxSizeBytes => TfRef.attribute<num>(this, 'max_size_bytes');

  /// Reference to `max_size_gb` attribute.
  TfRef<num> get maxSizeGb => TfRef.attribute<num>(this, 'max_size_gb');

  /// Reference to `per_db_max_capacity` attribute.
  TfRef<num> get perDbMaxCapacity =>
      TfRef.attribute<num>(this, 'per_db_max_capacity');

  /// Reference to `per_db_min_capacity` attribute.
  TfRef<num> get perDbMinCapacity =>
      TfRef.attribute<num>(this, 'per_db_min_capacity');

  /// Reference to `sku` attribute.
  TfRef<List<Map<String, Object?>>> get sku =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');
}
