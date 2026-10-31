// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_management_policy`.
const Set<String> _azurermStorageManagementPolicySensitive = <String>{};

/// Typed helper for the `rule` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyRule {
  const StorageManagementPolicyRule({
    required this.enabled,
    required this.name,
    required this.actions,
    required this.filters,
  });

  final TfArg<bool> enabled;

  final TfArg<String> name;

  final StorageManagementPolicyActions actions;

  final StorageManagementPolicyFilters filters;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'name': name.toTfJson(),
    'actions': actions.encode(),
    'filters': filters.encode(),
  };
}

/// Typed helper for the `rule.actions` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyActions {
  const StorageManagementPolicyActions({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  final StorageManagementPolicyBaseBlob? baseBlob;

  final StorageManagementPolicySnapshot? snapshot;

  final StorageManagementPolicyVersion? version;

  @internal
  Map<String, Object?> encode() => {
    'base_blob': ?baseBlob?.encode(),
    'snapshot': ?snapshot?.encode(),
    'version': ?version?.encode(),
  };
}

/// Typed helper for the `rule.actions.base_blob` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyBaseBlob {
  const StorageManagementPolicyBaseBlob({
    this.autoTierToHotFromCoolEnabled,
    this.deleteAfterDaysSinceCreationGreaterThan,
    this.deleteAfterDaysSinceLastAccessTimeGreaterThan,
    this.deleteAfterDaysSinceModificationGreaterThan,
    this.tierToArchiveAfterDaysSinceCreationGreaterThan,
    this.tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToArchiveAfterDaysSinceModificationGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
    this.tierToColdAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToColdAfterDaysSinceModificationGreaterThan,
    this.tierToCoolAfterDaysSinceCreationGreaterThan,
    this.tierToCoolAfterDaysSinceLastAccessTimeGreaterThan,
    this.tierToCoolAfterDaysSinceModificationGreaterThan,
  });

  final TfArg<bool>? autoTierToHotFromCoolEnabled;

  final TfArg<num>? deleteAfterDaysSinceCreationGreaterThan;

  final TfArg<num>? deleteAfterDaysSinceLastAccessTimeGreaterThan;

  final TfArg<num>? deleteAfterDaysSinceModificationGreaterThan;

  final TfArg<num>? tierToArchiveAfterDaysSinceCreationGreaterThan;

  final TfArg<num>? tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan;

  final TfArg<num>? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;

  final TfArg<num>? tierToArchiveAfterDaysSinceModificationGreaterThan;

  final TfArg<num>? tierToColdAfterDaysSinceCreationGreaterThan;

  final TfArg<num>? tierToColdAfterDaysSinceLastAccessTimeGreaterThan;

  final TfArg<num>? tierToColdAfterDaysSinceModificationGreaterThan;

  final TfArg<num>? tierToCoolAfterDaysSinceCreationGreaterThan;

  final TfArg<num>? tierToCoolAfterDaysSinceLastAccessTimeGreaterThan;

  final TfArg<num>? tierToCoolAfterDaysSinceModificationGreaterThan;

  @internal
  Map<String, Object?> encode() => {
    'auto_tier_to_hot_from_cool_enabled': ?autoTierToHotFromCoolEnabled
        ?.toTfJson(),
    'delete_after_days_since_creation_greater_than':
        ?deleteAfterDaysSinceCreationGreaterThan?.toTfJson(),
    'delete_after_days_since_last_access_time_greater_than':
        ?deleteAfterDaysSinceLastAccessTimeGreaterThan?.toTfJson(),
    'delete_after_days_since_modification_greater_than':
        ?deleteAfterDaysSinceModificationGreaterThan?.toTfJson(),
    'tier_to_archive_after_days_since_creation_greater_than':
        ?tierToArchiveAfterDaysSinceCreationGreaterThan?.toTfJson(),
    'tier_to_archive_after_days_since_last_access_time_greater_than':
        ?tierToArchiveAfterDaysSinceLastAccessTimeGreaterThan?.toTfJson(),
    'tier_to_archive_after_days_since_last_tier_change_greater_than':
        ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?.toTfJson(),
    'tier_to_archive_after_days_since_modification_greater_than':
        ?tierToArchiveAfterDaysSinceModificationGreaterThan?.toTfJson(),
    'tier_to_cold_after_days_since_creation_greater_than':
        ?tierToColdAfterDaysSinceCreationGreaterThan?.toTfJson(),
    'tier_to_cold_after_days_since_last_access_time_greater_than':
        ?tierToColdAfterDaysSinceLastAccessTimeGreaterThan?.toTfJson(),
    'tier_to_cold_after_days_since_modification_greater_than':
        ?tierToColdAfterDaysSinceModificationGreaterThan?.toTfJson(),
    'tier_to_cool_after_days_since_creation_greater_than':
        ?tierToCoolAfterDaysSinceCreationGreaterThan?.toTfJson(),
    'tier_to_cool_after_days_since_last_access_time_greater_than':
        ?tierToCoolAfterDaysSinceLastAccessTimeGreaterThan?.toTfJson(),
    'tier_to_cool_after_days_since_modification_greater_than':
        ?tierToCoolAfterDaysSinceModificationGreaterThan?.toTfJson(),
  };
}

/// Typed helper for the `rule.actions.snapshot` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicySnapshot {
  const StorageManagementPolicySnapshot({
    this.changeTierToArchiveAfterDaysSinceCreation,
    this.changeTierToCoolAfterDaysSinceCreation,
    this.deleteAfterDaysSinceCreationGreaterThan,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  final TfArg<num>? changeTierToArchiveAfterDaysSinceCreation;

  final TfArg<num>? changeTierToCoolAfterDaysSinceCreation;

  final TfArg<num>? deleteAfterDaysSinceCreationGreaterThan;

  final TfArg<num>? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;

  final TfArg<num>? tierToColdAfterDaysSinceCreationGreaterThan;

  @internal
  Map<String, Object?> encode() => {
    'change_tier_to_archive_after_days_since_creation':
        ?changeTierToArchiveAfterDaysSinceCreation?.toTfJson(),
    'change_tier_to_cool_after_days_since_creation':
        ?changeTierToCoolAfterDaysSinceCreation?.toTfJson(),
    'delete_after_days_since_creation_greater_than':
        ?deleteAfterDaysSinceCreationGreaterThan?.toTfJson(),
    'tier_to_archive_after_days_since_last_tier_change_greater_than':
        ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?.toTfJson(),
    'tier_to_cold_after_days_since_creation_greater_than':
        ?tierToColdAfterDaysSinceCreationGreaterThan?.toTfJson(),
  };
}

/// Typed helper for the `rule.actions.version` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyVersion {
  const StorageManagementPolicyVersion({
    this.changeTierToArchiveAfterDaysSinceCreation,
    this.changeTierToCoolAfterDaysSinceCreation,
    this.deleteAfterDaysSinceCreation,
    this.tierToArchiveAfterDaysSinceLastTierChangeGreaterThan,
    this.tierToColdAfterDaysSinceCreationGreaterThan,
  });

  final TfArg<num>? changeTierToArchiveAfterDaysSinceCreation;

  final TfArg<num>? changeTierToCoolAfterDaysSinceCreation;

  final TfArg<num>? deleteAfterDaysSinceCreation;

  final TfArg<num>? tierToArchiveAfterDaysSinceLastTierChangeGreaterThan;

  final TfArg<num>? tierToColdAfterDaysSinceCreationGreaterThan;

  @internal
  Map<String, Object?> encode() => {
    'change_tier_to_archive_after_days_since_creation':
        ?changeTierToArchiveAfterDaysSinceCreation?.toTfJson(),
    'change_tier_to_cool_after_days_since_creation':
        ?changeTierToCoolAfterDaysSinceCreation?.toTfJson(),
    'delete_after_days_since_creation': ?deleteAfterDaysSinceCreation
        ?.toTfJson(),
    'tier_to_archive_after_days_since_last_tier_change_greater_than':
        ?tierToArchiveAfterDaysSinceLastTierChangeGreaterThan?.toTfJson(),
    'tier_to_cold_after_days_since_creation_greater_than':
        ?tierToColdAfterDaysSinceCreationGreaterThan?.toTfJson(),
  };
}

/// Typed helper for the `rule.filters` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyFilters {
  const StorageManagementPolicyFilters({
    required this.blobTypes,
    this.prefixMatch,
    this.matchBlobIndexTag,
  });

  final EnumList<StorageManagementPolicyBlobTypes> blobTypes;

  final TfArg<List<String>>? prefixMatch;

  final List<StorageManagementPolicyMatchBlobIndexTag>? matchBlobIndexTag;

  @internal
  Map<String, Object?> encode() => {
    'blob_types': blobTypes.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
    if (matchBlobIndexTag != null)
      'match_blob_index_tag': [for (final e in matchBlobIndexTag!) e.encode()],
  };
}

/// `blob_types` — derived from the provider schema description.
extension type const StorageManagementPolicyBlobTypes._(TfArg<String> _)
    implements TfArg<String> {
  StorageManagementPolicyBlobTypes.variable(String name)
    : this._(TfArg.variable(name));
  StorageManagementPolicyBlobTypes.expression(String template)
    : this._(TfArg.expression(template));
  const StorageManagementPolicyBlobTypes.arg(TfArg<String> arg) : this._(arg);

  static const blockblob = StorageManagementPolicyBlobTypes._(
    TfArgLiteral('blockBlob'),
  );
  static const appendblob = StorageManagementPolicyBlobTypes._(
    TfArgLiteral('appendBlob'),
  );

  static const List<StorageManagementPolicyBlobTypes> values = [
    blockblob,
    appendblob,
  ];
}

/// Typed helper for the `rule.filters.match_blob_index_tag` block of
/// `azurerm_storage_management_policy` (derived from provider schema).
@immutable
final class StorageManagementPolicyMatchBlobIndexTag {
  const StorageManagementPolicyMatchBlobIndexTag({
    required this.name,
    this.operation,
    required this.value,
  });

  final TfArg<String> name;

  final StorageManagementPolicyOperation? operation;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operation': ?operation?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `operation` — derived from the provider schema description.
extension type const StorageManagementPolicyOperation._(TfArg<String> _)
    implements TfArg<String> {
  StorageManagementPolicyOperation.variable(String name)
    : this._(TfArg.variable(name));
  StorageManagementPolicyOperation.expression(String template)
    : this._(TfArg.expression(template));
  const StorageManagementPolicyOperation.arg(TfArg<String> arg) : this._(arg);

  static const eq = StorageManagementPolicyOperation._(TfArgLiteral('=='));

  static const List<StorageManagementPolicyOperation> values = [eq];
}

/// Factory wrapper for `azurerm_storage_management_policy`.
final class AzurermStorageManagementPolicy extends Resource {
  static const String tfType = 'azurerm_storage_management_policy';

  AzurermStorageManagementPolicy(
    super.localName, {
    required RefTo<AzurermStorageAccount> storageAccountId,
    List<StorageManagementPolicyRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'storage_account_id': storageAccountId.encodeAs('id'),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageManagementPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageManagementPolicy>`.
  RefTo<AzurermStorageManagementPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
