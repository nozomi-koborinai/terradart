// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_data_protection_backup_vault`.
const Set<String> _azurermDataProtectionBackupVaultSensitive = <String>{};

/// Data Protection Backup Vault Datastore enum for `datastore_type`.
extension type const DataProtectionBackupVaultDatastoreType._(TfArg<String> _)
    implements TfArg<String> {
  DataProtectionBackupVaultDatastoreType.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupVaultDatastoreType.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupVaultDatastoreType.arg(TfArg<String> arg)
    : this._(arg);

  static const archivestore = DataProtectionBackupVaultDatastoreType._(
    TfArgLiteral('ArchiveStore'),
  );
  static const operationalstore = DataProtectionBackupVaultDatastoreType._(
    TfArgLiteral('OperationalStore'),
  );
  static const vaultstore = DataProtectionBackupVaultDatastoreType._(
    TfArgLiteral('VaultStore'),
  );

  static const List<DataProtectionBackupVaultDatastoreType> values = [
    archivestore,
    operationalstore,
    vaultstore,
  ];
}

/// Data Protection Backup Vault enum for `immutability`.
extension type const DataProtectionBackupVaultImmutability._(TfArg<String> _)
    implements TfArg<String> {
  DataProtectionBackupVaultImmutability.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupVaultImmutability.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupVaultImmutability.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = DataProtectionBackupVaultImmutability._(
    TfArgLiteral('Disabled'),
  );
  static const locked = DataProtectionBackupVaultImmutability._(
    TfArgLiteral('Locked'),
  );
  static const unlocked = DataProtectionBackupVaultImmutability._(
    TfArgLiteral('Unlocked'),
  );

  static const List<DataProtectionBackupVaultImmutability> values = [
    disabled,
    locked,
    unlocked,
  ];
}

/// Data Protection Backup Vault enum for `redundancy`.
extension type const DataProtectionBackupVaultRedundancy._(TfArg<String> _)
    implements TfArg<String> {
  DataProtectionBackupVaultRedundancy.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupVaultRedundancy.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupVaultRedundancy.arg(TfArg<String> arg)
    : this._(arg);

  static const georedundant = DataProtectionBackupVaultRedundancy._(
    TfArgLiteral('GeoRedundant'),
  );
  static const locallyredundant = DataProtectionBackupVaultRedundancy._(
    TfArgLiteral('LocallyRedundant'),
  );
  static const zoneredundant = DataProtectionBackupVaultRedundancy._(
    TfArgLiteral('ZoneRedundant'),
  );

  static const List<DataProtectionBackupVaultRedundancy> values = [
    georedundant,
    locallyredundant,
    zoneredundant,
  ];
}

/// Data Protection Backup Vault Soft enum for `soft_delete`.
extension type const DataProtectionBackupVaultSoftDelete._(TfArg<String> _)
    implements TfArg<String> {
  DataProtectionBackupVaultSoftDelete.variable(String name)
    : this._(TfArg.variable(name));
  DataProtectionBackupVaultSoftDelete.expression(String template)
    : this._(TfArg.expression(template));
  const DataProtectionBackupVaultSoftDelete.arg(TfArg<String> arg)
    : this._(arg);

  static const alwayson = DataProtectionBackupVaultSoftDelete._(
    TfArgLiteral('AlwaysOn'),
  );
  static const off = DataProtectionBackupVaultSoftDelete._(TfArgLiteral('Off'));
  static const on = DataProtectionBackupVaultSoftDelete._(TfArgLiteral('On'));

  static const List<DataProtectionBackupVaultSoftDelete> values = [
    alwayson,
    off,
    on,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_data_protection_backup_vault` (derived from provider schema).
@immutable
final class DataProtectionBackupVaultIdentity {
  const DataProtectionBackupVaultIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_protection_backup_vault`.
final class AzurermDataProtectionBackupVault extends Resource {
  static const String tfType = 'azurerm_data_protection_backup_vault';

  AzurermDataProtectionBackupVault(
    super.localName, {
    TfArg<bool>? crossRegionRestoreEnabled,
    required DataProtectionBackupVaultDatastoreType datastoreType,
    DataProtectionBackupVaultImmutability? immutability,
    required TfArg<String> location,
    required TfArg<String> name,
    required DataProtectionBackupVaultRedundancy redundancy,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionDurationInDays,
    DataProtectionBackupVaultSoftDelete? softDelete,
    TfArg<Map<String, String>>? tags,
    DataProtectionBackupVaultIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cross_region_restore_enabled': ?crossRegionRestoreEnabled,
           'datastore_type': datastoreType,
           'immutability': ?immutability,
           'location': location,
           'name': name,
           'redundancy': redundancy,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_duration_in_days': ?retentionDurationInDays,
           'soft_delete': ?softDelete,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataProtectionBackupVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupVault>`.
  RefTo<AzurermDataProtectionBackupVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cross_region_restore_enabled` attribute.
  TfRef<bool> get crossRegionRestoreEnabled =>
      TfRef.attribute<bool>(this, 'cross_region_restore_enabled');

  /// Reference to `datastore_type` attribute.
  TfRef<String> get datastoreType =>
      TfRef.attribute<String>(this, 'datastore_type');

  /// Reference to `immutability` attribute.
  TfRef<String> get immutability =>
      TfRef.attribute<String>(this, 'immutability');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `redundancy` attribute.
  TfRef<String> get redundancy => TfRef.attribute<String>(this, 'redundancy');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_duration_in_days` attribute.
  TfRef<num> get retentionDurationInDays =>
      TfRef.attribute<num>(this, 'retention_duration_in_days');

  /// Reference to `soft_delete` attribute.
  TfRef<String> get softDelete => TfRef.attribute<String>(this, 'soft_delete');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
