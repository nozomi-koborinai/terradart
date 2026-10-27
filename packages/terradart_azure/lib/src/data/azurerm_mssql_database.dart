// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../mssql/azurerm_mssql_database.dart';

/// Sensitive field paths for `azurerm_mssql_database`.
const Set<String> _azurermMssqlDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_database`.
final class DataAzurermMssqlDatabase extends Data {
  static const String tfType = 'azurerm_mssql_database';

  DataAzurermMssqlDatabase(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serverId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'server_id': serverId},
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlDatabaseSensitive;

  /// A reference to the `azurerm_mssql_database` this data source reads, for
  /// arguments typed `RefTo<AzurermMssqlDatabase>`.
  RefTo<AzurermMssqlDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `elastic_pool_id` attribute.
  TfRef<String> get elasticPoolId =>
      TfRef.attribute<String>(this, 'elastic_pool_id');

  /// Reference to `enclave_type` attribute.
  TfRef<String> get enclaveType =>
      TfRef.attribute<String>(this, 'enclave_type');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `max_size_gb` attribute.
  TfRef<num> get maxSizeGb => TfRef.attribute<num>(this, 'max_size_gb');

  /// Reference to `read_replica_count` attribute.
  TfRef<num> get readReplicaCount =>
      TfRef.attribute<num>(this, 'read_replica_count');

  /// Reference to `read_scale` attribute.
  TfRef<bool> get readScale => TfRef.attribute<bool>(this, 'read_scale');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_type` attribute.
  TfRef<String> get storageAccountType =>
      TfRef.attribute<String>(this, 'storage_account_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transparent_data_encryption_enabled` attribute.
  TfRef<bool> get transparentDataEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'transparent_data_encryption_enabled');

  /// Reference to `transparent_data_encryption_key_automatic_rotation_enabled` attribute.
  TfRef<bool> get transparentDataEncryptionKeyAutomaticRotationEnabled =>
      TfRef.attribute<bool>(
        this,
        'transparent_data_encryption_key_automatic_rotation_enabled',
      );

  /// Reference to `transparent_data_encryption_key_vault_key_id` attribute.
  TfRef<String> get transparentDataEncryptionKeyVaultKeyId =>
      TfRef.attribute<String>(
        this,
        'transparent_data_encryption_key_vault_key_id',
      );

  /// Reference to `zone_redundant` attribute.
  TfRef<bool> get zoneRedundant =>
      TfRef.attribute<bool>(this, 'zone_redundant');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
