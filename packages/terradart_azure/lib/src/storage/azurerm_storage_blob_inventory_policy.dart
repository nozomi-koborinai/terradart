// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_storage_blob_inventory_policy`.
const Set<String> _azurermStorageBlobInventoryPolicySensitive = <String>{};

/// Typed helper for the `rules` block of
/// `azurerm_storage_blob_inventory_policy` (derived from provider schema).
@immutable
final class StorageBlobInventoryPolicyRules {
  const StorageBlobInventoryPolicyRules({
    required this.format,
    required this.name,
    required this.schedule,
    required this.schemaFields,
    required this.scope,
    required this.storageContainerName,
    this.filter,
  });

  final StorageBlobInventoryPolicyFormat format;

  final TfArg<String> name;

  final StorageBlobInventoryPolicySchedule schedule;

  final TfArg<List<String>> schemaFields;

  final StorageBlobInventoryPolicyScope scope;

  final TfArg<String> storageContainerName;

  final StorageBlobInventoryPolicyFilter? filter;

  @internal
  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'schedule': schedule.toTfJson(),
    'schema_fields': schemaFields.toTfJson(),
    'scope': scope.toTfJson(),
    'storage_container_name': storageContainerName.toTfJson(),
    'filter': ?filter?.encode(),
  };
}

/// `format` — derived from the provider schema description.
extension type const StorageBlobInventoryPolicyFormat._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobInventoryPolicyFormat.variable(String name)
    : this._(TfArg.variable(name));
  StorageBlobInventoryPolicyFormat.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobInventoryPolicyFormat.arg(TfArg<String> arg) : this._(arg);

  static const csv = StorageBlobInventoryPolicyFormat._(TfArgLiteral('Csv'));
  static const parquet = StorageBlobInventoryPolicyFormat._(
    TfArgLiteral('Parquet'),
  );

  static const List<StorageBlobInventoryPolicyFormat> values = [csv, parquet];
}

/// `schedule` — derived from the provider schema description.
extension type const StorageBlobInventoryPolicySchedule._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobInventoryPolicySchedule.variable(String name)
    : this._(TfArg.variable(name));
  StorageBlobInventoryPolicySchedule.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobInventoryPolicySchedule.arg(TfArg<String> arg) : this._(arg);

  static const daily = StorageBlobInventoryPolicySchedule._(
    TfArgLiteral('Daily'),
  );
  static const weekly = StorageBlobInventoryPolicySchedule._(
    TfArgLiteral('Weekly'),
  );

  static const List<StorageBlobInventoryPolicySchedule> values = [
    daily,
    weekly,
  ];
}

/// `scope` — derived from the provider schema description.
extension type const StorageBlobInventoryPolicyScope._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobInventoryPolicyScope.variable(String name)
    : this._(TfArg.variable(name));
  StorageBlobInventoryPolicyScope.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobInventoryPolicyScope.arg(TfArg<String> arg) : this._(arg);

  static const blob = StorageBlobInventoryPolicyScope._(TfArgLiteral('Blob'));
  static const container = StorageBlobInventoryPolicyScope._(
    TfArgLiteral('Container'),
  );

  static const List<StorageBlobInventoryPolicyScope> values = [blob, container];
}

/// Typed helper for the `rules.filter` block of
/// `azurerm_storage_blob_inventory_policy` (derived from provider schema).
@immutable
final class StorageBlobInventoryPolicyFilter {
  const StorageBlobInventoryPolicyFilter({
    required this.blobTypes,
    this.createdWithinDays,
    this.excludePrefixes,
    this.includeBlobVersions,
    this.includeDeleted,
    this.includeSnapshots,
    this.prefixMatch,
  });

  final List<StorageBlobInventoryPolicyBlobTypes> blobTypes;

  final TfArg<num>? createdWithinDays;

  final TfArg<List<String>>? excludePrefixes;

  final TfArg<bool>? includeBlobVersions;

  final TfArg<bool>? includeDeleted;

  final TfArg<bool>? includeSnapshots;

  final TfArg<List<String>>? prefixMatch;

  @internal
  Map<String, Object?> encode() => {
    'blob_types': [for (final e in blobTypes) e.toTfJson()],
    'created_within_days': ?createdWithinDays?.toTfJson(),
    'exclude_prefixes': ?excludePrefixes?.toTfJson(),
    'include_blob_versions': ?includeBlobVersions?.toTfJson(),
    'include_deleted': ?includeDeleted?.toTfJson(),
    'include_snapshots': ?includeSnapshots?.toTfJson(),
    'prefix_match': ?prefixMatch?.toTfJson(),
  };
}

/// `blob_types` — derived from the provider schema description.
extension type const StorageBlobInventoryPolicyBlobTypes._(TfArg<String> _)
    implements TfArg<String> {
  StorageBlobInventoryPolicyBlobTypes.variable(String name)
    : this._(TfArg.variable(name));
  StorageBlobInventoryPolicyBlobTypes.expression(String template)
    : this._(TfArg.expression(template));
  const StorageBlobInventoryPolicyBlobTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const blockblob = StorageBlobInventoryPolicyBlobTypes._(
    TfArgLiteral('blockBlob'),
  );
  static const appendblob = StorageBlobInventoryPolicyBlobTypes._(
    TfArgLiteral('appendBlob'),
  );
  static const pageblob = StorageBlobInventoryPolicyBlobTypes._(
    TfArgLiteral('pageBlob'),
  );

  static const List<StorageBlobInventoryPolicyBlobTypes> values = [
    blockblob,
    appendblob,
    pageblob,
  ];
}

/// Factory wrapper for `azurerm_storage_blob_inventory_policy`.
final class AzurermStorageBlobInventoryPolicy extends Resource {
  static const String tfType = 'azurerm_storage_blob_inventory_policy';

  AzurermStorageBlobInventoryPolicy(
    super.localName, {
    required RefTo<AzurermStorageAccount> storageAccountId,
    required List<StorageBlobInventoryPolicyRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'storage_account_id': storageAccountId.encodeAs('id'),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageBlobInventoryPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageBlobInventoryPolicy>`.
  RefTo<AzurermStorageBlobInventoryPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');
}
