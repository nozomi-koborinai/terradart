// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_object_replication`.
const Set<String> _azurermStorageObjectReplicationSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `azurerm_storage_object_replication` (derived from provider schema).
@immutable
final class StorageObjectReplicationRules {
  const StorageObjectReplicationRules({
    this.copyBlobsCreatedAfter,
    required this.destinationContainerName,
    this.filterOutBlobsWithPrefix,
    required this.sourceContainerName,
  });

  final TfArg<String>? copyBlobsCreatedAfter;

  final TfArg<String> destinationContainerName;

  final TfArg<List<String>>? filterOutBlobsWithPrefix;

  final TfArg<String> sourceContainerName;

  @internal
  Map<String, Object?> encode() => {
    'copy_blobs_created_after': ?copyBlobsCreatedAfter?.toTfJson(),
    'destination_container_name': destinationContainerName.toTfJson(),
    'filter_out_blobs_with_prefix': ?filterOutBlobsWithPrefix?.toTfJson(),
    'source_container_name': sourceContainerName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_storage_object_replication`.
final class AzurermStorageObjectReplication extends Resource {
  static const String tfType = 'azurerm_storage_object_replication';

  AzurermStorageObjectReplication(
    super.localName, {
    required TfArg<String> destinationStorageAccountId,
    TfArg<bool>? metricsEnabled,
    required TfArg<String> sourceStorageAccountId,
    required List<StorageObjectReplicationRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_storage_account_id': destinationStorageAccountId,
           'metrics_enabled': ?metricsEnabled,
           'source_storage_account_id': sourceStorageAccountId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageObjectReplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageObjectReplication>`.
  RefTo<AzurermStorageObjectReplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_object_replication_id` attribute.
  TfRef<String> get destinationObjectReplicationId =>
      TfRef.attribute<String>(this, 'destination_object_replication_id');

  /// Reference to `source_object_replication_id` attribute.
  TfRef<String> get sourceObjectReplicationId =>
      TfRef.attribute<String>(this, 'source_object_replication_id');

  /// Reference to `destination_storage_account_id` attribute.
  TfRef<String> get destinationStorageAccountId =>
      TfRef.attribute<String>(this, 'destination_storage_account_id');

  /// Reference to `metrics_enabled` attribute.
  TfRef<bool> get metricsEnabled =>
      TfRef.attribute<bool>(this, 'metrics_enabled');

  /// Reference to `source_storage_account_id` attribute.
  TfRef<String> get sourceStorageAccountId =>
      TfRef.attribute<String>(this, 'source_storage_account_id');
}
