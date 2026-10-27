// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_oracle_exascale_database_storage_vault`.
const Set<String> _azurermOracleExascaleDatabaseStorageVaultSensitive =
    <String>{};

/// Typed helper for the `high_capacity_database_storage` block of
/// `azurerm_oracle_exascale_database_storage_vault` (derived from provider schema).
@immutable
final class OracleExascaleDatabaseStorageVaultHighCapacityDatabaseStorage {
  const OracleExascaleDatabaseStorageVaultHighCapacityDatabaseStorage({
    required this.totalSizeInGb,
  });

  final TfArg<num> totalSizeInGb;

  @internal
  Map<String, Object?> encode() => {
    'total_size_in_gb': totalSizeInGb.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_oracle_exascale_database_storage_vault`.
final class AzurermOracleExascaleDatabaseStorageVault extends Resource {
  static const String tfType = 'azurerm_oracle_exascale_database_storage_vault';

  AzurermOracleExascaleDatabaseStorageVault(
    super.localName, {
    required TfArg<num> additionalFlashCachePercentage,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timeZone,
    required TfArg<List<String>> zones,
    required OracleExascaleDatabaseStorageVaultHighCapacityDatabaseStorage
    highCapacityDatabaseStorage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_flash_cache_percentage': additionalFlashCachePercentage,
           'description': ?description,
           'display_name': displayName,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'time_zone': ?timeZone,
           'zones': zones,
           'high_capacity_database_storage': TfArg.literal(
             highCapacityDatabaseStorage.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOracleExascaleDatabaseStorageVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOracleExascaleDatabaseStorageVault>`.
  RefTo<AzurermOracleExascaleDatabaseStorageVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_flash_cache_percentage` attribute.
  TfRef<num> get additionalFlashCachePercentage =>
      TfRef.attribute<num>(this, 'additional_flash_cache_percentage');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
