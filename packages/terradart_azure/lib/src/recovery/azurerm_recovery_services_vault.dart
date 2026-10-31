// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_recovery_services_vault`.
const Set<String> _azurermRecoveryServicesVaultSensitive = <String>{};

/// Recovery Services Vault enum for `immutability`.
extension type const RecoveryServicesVaultImmutability._(TfArg<String> _)
    implements TfArg<String> {
  RecoveryServicesVaultImmutability.variable(String name)
    : this._(TfArg.variable(name));
  RecoveryServicesVaultImmutability.expression(String template)
    : this._(TfArg.expression(template));
  const RecoveryServicesVaultImmutability.arg(TfArg<String> arg) : this._(arg);

  static const disabled = RecoveryServicesVaultImmutability._(
    TfArgLiteral('Disabled'),
  );
  static const locked = RecoveryServicesVaultImmutability._(
    TfArgLiteral('Locked'),
  );
  static const unlocked = RecoveryServicesVaultImmutability._(
    TfArgLiteral('Unlocked'),
  );

  static const List<RecoveryServicesVaultImmutability> values = [
    disabled,
    locked,
    unlocked,
  ];
}

/// Recovery Services Vault enum for `sku`.
extension type const RecoveryServicesVaultSku._(TfArg<String> _)
    implements TfArg<String> {
  RecoveryServicesVaultSku.variable(String name) : this._(TfArg.variable(name));
  RecoveryServicesVaultSku.expression(String template)
    : this._(TfArg.expression(template));
  const RecoveryServicesVaultSku.arg(TfArg<String> arg) : this._(arg);

  static const rs0 = RecoveryServicesVaultSku._(TfArgLiteral('RS0'));
  static const standard = RecoveryServicesVaultSku._(TfArgLiteral('Standard'));

  static const List<RecoveryServicesVaultSku> values = [rs0, standard];
}

/// Recovery Services Vault Storage Mode enum for `storage_mode_type`.
extension type const RecoveryServicesVaultStorageModeType._(TfArg<String> _)
    implements TfArg<String> {
  RecoveryServicesVaultStorageModeType.variable(String name)
    : this._(TfArg.variable(name));
  RecoveryServicesVaultStorageModeType.expression(String template)
    : this._(TfArg.expression(template));
  const RecoveryServicesVaultStorageModeType.arg(TfArg<String> arg)
    : this._(arg);

  static const georedundant = RecoveryServicesVaultStorageModeType._(
    TfArgLiteral('GeoRedundant'),
  );
  static const locallyredundant = RecoveryServicesVaultStorageModeType._(
    TfArgLiteral('LocallyRedundant'),
  );
  static const zoneredundant = RecoveryServicesVaultStorageModeType._(
    TfArgLiteral('ZoneRedundant'),
  );

  static const List<RecoveryServicesVaultStorageModeType> values = [
    georedundant,
    locallyredundant,
    zoneredundant,
  ];
}

/// Typed helper for the `encryption` block of
/// `azurerm_recovery_services_vault` (derived from provider schema).
@immutable
final class RecoveryServicesVaultEncryption {
  const RecoveryServicesVaultEncryption({
    required this.infrastructureEncryptionEnabled,
    required this.keyId,
    this.useSystemAssignedIdentity,
    this.userAssignedIdentityId,
  });

  final TfArg<bool> infrastructureEncryptionEnabled;

  final TfArg<String> keyId;

  final TfArg<bool>? useSystemAssignedIdentity;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'infrastructure_encryption_enabled': infrastructureEncryptionEnabled
        .toTfJson(),
    'key_id': keyId.toTfJson(),
    'use_system_assigned_identity': ?useSystemAssignedIdentity?.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_recovery_services_vault` (derived from provider schema).
@immutable
final class RecoveryServicesVaultIdentity {
  const RecoveryServicesVaultIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `monitoring` block of
/// `azurerm_recovery_services_vault` (derived from provider schema).
@immutable
final class RecoveryServicesVaultMonitoring {
  const RecoveryServicesVaultMonitoring({
    this.alertsForAllFailoverIssuesEnabled,
    this.alertsForAllJobFailuresEnabled,
    this.alertsForAllReplicationIssuesEnabled,
    this.alertsForCriticalOperationFailuresEnabled,
    this.emailNotificationsForSiteRecoveryEnabled,
  });

  final TfArg<bool>? alertsForAllFailoverIssuesEnabled;

  final TfArg<bool>? alertsForAllJobFailuresEnabled;

  final TfArg<bool>? alertsForAllReplicationIssuesEnabled;

  final TfArg<bool>? alertsForCriticalOperationFailuresEnabled;

  final TfArg<bool>? emailNotificationsForSiteRecoveryEnabled;

  @internal
  Map<String, Object?> encode() => {
    'alerts_for_all_failover_issues_enabled': ?alertsForAllFailoverIssuesEnabled
        ?.toTfJson(),
    'alerts_for_all_job_failures_enabled': ?alertsForAllJobFailuresEnabled
        ?.toTfJson(),
    'alerts_for_all_replication_issues_enabled':
        ?alertsForAllReplicationIssuesEnabled?.toTfJson(),
    'alerts_for_critical_operation_failures_enabled':
        ?alertsForCriticalOperationFailuresEnabled?.toTfJson(),
    'email_notifications_for_site_recovery_enabled':
        ?emailNotificationsForSiteRecoveryEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_recovery_services_vault`.
final class AzurermRecoveryServicesVault extends Resource {
  static const String tfType = 'azurerm_recovery_services_vault';

  AzurermRecoveryServicesVault(
    super.localName, {
    TfArg<bool>? classicVmwareReplicationEnabled,
    TfArg<bool>? crossRegionRestoreEnabled,
    RecoveryServicesVaultImmutability? immutability,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RecoveryServicesVaultSku sku,
    RecoveryServicesVaultStorageModeType? storageModeType,
    TfArg<Map<String, String>>? tags,
    RecoveryServicesVaultEncryption? encryption,
    RecoveryServicesVaultIdentity? identity,
    RecoveryServicesVaultMonitoring? monitoring,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'classic_vmware_replication_enabled':
               ?classicVmwareReplicationEnabled,
           'cross_region_restore_enabled': ?crossRegionRestoreEnabled,
           'immutability': ?immutability,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'storage_mode_type': ?storageModeType,
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (monitoring != null)
             'monitoring': TfArg.literal(monitoring.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRecoveryServicesVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRecoveryServicesVault>`.
  RefTo<AzurermRecoveryServicesVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `classic_vmware_replication_enabled` attribute.
  TfRef<bool> get classicVmwareReplicationEnabled =>
      TfRef.attribute<bool>(this, 'classic_vmware_replication_enabled');

  /// Reference to `cross_region_restore_enabled` attribute.
  TfRef<bool> get crossRegionRestoreEnabled =>
      TfRef.attribute<bool>(this, 'cross_region_restore_enabled');

  /// Reference to `immutability` attribute.
  TfRef<String> get immutability =>
      TfRef.attribute<String>(this, 'immutability');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `storage_mode_type` attribute.
  TfRef<String> get storageModeType =>
      TfRef.attribute<String>(this, 'storage_mode_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
