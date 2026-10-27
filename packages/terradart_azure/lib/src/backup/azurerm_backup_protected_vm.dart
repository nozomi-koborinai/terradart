// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_backup_protected_vm`.
const Set<String> _azurermBackupProtectedVmSensitive = <String>{};

/// At most one of `exclude_disk_luns`, `include_disk_luns` on `azurerm_backup_protected_vm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludeDiskLuns(...)`.
sealed class BackupProtectedVmDiskLuns {
  const BackupProtectedVmDiskLuns();

  /// Sets `exclude_disk_luns`.
  const factory BackupProtectedVmDiskLuns.excludeDiskLuns(
    TfArg<List<num>> excludeDiskLuns,
  ) = BackupProtectedVmExcludeDiskLuns;

  /// Sets `include_disk_luns`.
  const factory BackupProtectedVmDiskLuns.includeDiskLuns(
    TfArg<List<num>> includeDiskLuns,
  ) = BackupProtectedVmIncludeDiskLuns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BackupProtectedVmDiskLuns.excludeDiskLuns] choice: sets `exclude_disk_luns`.
final class BackupProtectedVmExcludeDiskLuns extends BackupProtectedVmDiskLuns {
  const BackupProtectedVmExcludeDiskLuns(this.excludeDiskLuns);

  final TfArg<List<num>> excludeDiskLuns;

  @internal
  @override
  String get blockKey => 'exclude_disk_luns';

  @internal
  @override
  Map<String, Object?> encode() => {
    'exclude_disk_luns': excludeDiskLuns.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude_disk_luns': excludeDiskLuns,
  };
}

/// The [BackupProtectedVmDiskLuns.includeDiskLuns] choice: sets `include_disk_luns`.
final class BackupProtectedVmIncludeDiskLuns extends BackupProtectedVmDiskLuns {
  const BackupProtectedVmIncludeDiskLuns(this.includeDiskLuns);

  final TfArg<List<num>> includeDiskLuns;

  @internal
  @override
  String get blockKey => 'include_disk_luns';

  @internal
  @override
  Map<String, Object?> encode() => {
    'include_disk_luns': includeDiskLuns.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'include_disk_luns': includeDiskLuns,
  };
}

/// Factory wrapper for `azurerm_backup_protected_vm`.
final class AzurermBackupProtectedVm extends Resource {
  static const String tfType = 'azurerm_backup_protected_vm';

  AzurermBackupProtectedVm(
    super.localName, {
    TfArg<String>? backupPolicyId,
    BackupProtectedVmDiskLuns? diskLuns,
    TfArg<String>? protectionState,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sourceVmId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': ?backupPolicyId,
           ...?diskLuns?.argMap,
           'protection_state': ?protectionState,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'source_vm_id': ?sourceVmId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBackupProtectedVmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBackupProtectedVm>`.
  RefTo<AzurermBackupProtectedVm> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_policy_id` attribute.
  TfRef<String> get backupPolicyId =>
      TfRef.attribute<String>(this, 'backup_policy_id');

  /// Reference to `exclude_disk_luns` attribute.
  TfRef<List<num>> get excludeDiskLuns =>
      TfRef.attribute<List<num>>(this, 'exclude_disk_luns');

  /// Reference to `include_disk_luns` attribute.
  TfRef<List<num>> get includeDiskLuns =>
      TfRef.attribute<List<num>>(this, 'include_disk_luns');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_vm_id` attribute.
  TfRef<String> get sourceVmId => TfRef.attribute<String>(this, 'source_vm_id');
}
