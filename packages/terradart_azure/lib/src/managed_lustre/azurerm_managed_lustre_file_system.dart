// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_managed_lustre_file_system`.
const Set<String> _azurermManagedLustreFileSystemSensitive = <String>{};

/// Typed helper for the `encryption_key` block of
/// `azurerm_managed_lustre_file_system` (derived from provider schema).
@immutable
final class ManagedLustreFileSystemEncryptionKey {
  const ManagedLustreFileSystemEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> keyUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'key_url': keyUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Typed helper for the `hsm_setting` block of
/// `azurerm_managed_lustre_file_system` (derived from provider schema).
@immutable
final class ManagedLustreFileSystemHsmSetting {
  const ManagedLustreFileSystemHsmSetting({
    required this.containerId,
    this.importPrefix,
    required this.loggingContainerId,
  });

  final TfArg<String> containerId;

  final TfArg<String>? importPrefix;

  final TfArg<String> loggingContainerId;

  @internal
  Map<String, Object?> encode() => {
    'container_id': containerId.toTfJson(),
    'import_prefix': ?importPrefix?.toTfJson(),
    'logging_container_id': loggingContainerId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_managed_lustre_file_system` (derived from provider schema).
@immutable
final class ManagedLustreFileSystemIdentity {
  const ManagedLustreFileSystemIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window` block of
/// `azurerm_managed_lustre_file_system` (derived from provider schema).
@immutable
final class ManagedLustreFileSystemMaintenanceWindow {
  const ManagedLustreFileSystemMaintenanceWindow({
    required this.dayOfWeek,
    required this.timeOfDayInUtc,
  });

  final ManagedLustreFileSystemDayOfWeek dayOfWeek;

  final TfArg<String> timeOfDayInUtc;

  @internal
  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'time_of_day_in_utc': timeOfDayInUtc.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
extension type const ManagedLustreFileSystemDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  ManagedLustreFileSystemDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  ManagedLustreFileSystemDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedLustreFileSystemDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const friday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = ManagedLustreFileSystemDayOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<ManagedLustreFileSystemDayOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Typed helper for the `root_squash` block of
/// `azurerm_managed_lustre_file_system` (derived from provider schema).
@immutable
final class ManagedLustreFileSystemRootSquash {
  const ManagedLustreFileSystemRootSquash({
    required this.mode,
    required this.noSquashNids,
    this.squashGid,
    this.squashUid,
  });

  final ManagedLustreFileSystemMode mode;

  final TfArg<String> noSquashNids;

  final TfArg<num>? squashGid;

  final TfArg<num>? squashUid;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'no_squash_nids': noSquashNids.toTfJson(),
    'squash_gid': ?squashGid?.toTfJson(),
    'squash_uid': ?squashUid?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const ManagedLustreFileSystemMode._(TfArg<String> _)
    implements TfArg<String> {
  ManagedLustreFileSystemMode.variable(String name)
    : this._(TfArg.variable(name));
  ManagedLustreFileSystemMode.expression(String template)
    : this._(TfArg.expression(template));
  const ManagedLustreFileSystemMode.arg(TfArg<String> arg) : this._(arg);

  static const all = ManagedLustreFileSystemMode._(TfArgLiteral('All'));
  static const rootonly = ManagedLustreFileSystemMode._(
    TfArgLiteral('RootOnly'),
  );

  static const List<ManagedLustreFileSystemMode> values = [all, rootonly];
}

/// Factory wrapper for `azurerm_managed_lustre_file_system`.
final class AzurermManagedLustreFileSystem extends Resource {
  static const String tfType = 'azurerm_managed_lustre_file_system';

  AzurermManagedLustreFileSystem(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    required TfArg<num> storageCapacityInTb,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    required TfArg<List<String>> zones,
    ManagedLustreFileSystemEncryptionKey? encryptionKey,
    ManagedLustreFileSystemHsmSetting? hsmSetting,
    ManagedLustreFileSystemIdentity? identity,
    required ManagedLustreFileSystemMaintenanceWindow maintenanceWindow,
    ManagedLustreFileSystemRootSquash? rootSquash,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'storage_capacity_in_tb': storageCapacityInTb,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           'zones': zones,
           if (encryptionKey != null)
             'encryption_key': TfArg.literal(encryptionKey.encode()),
           if (hsmSetting != null)
             'hsm_setting': TfArg.literal(hsmSetting.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (rootSquash != null)
             'root_squash': TfArg.literal(rootSquash.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedLustreFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedLustreFileSystem>`.
  RefTo<AzurermManagedLustreFileSystem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `mgs_address` attribute.
  TfRef<String> get mgsAddress => TfRef.attribute<String>(this, 'mgs_address');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_capacity_in_tb` attribute.
  TfRef<num> get storageCapacityInTb =>
      TfRef.attribute<num>(this, 'storage_capacity_in_tb');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
