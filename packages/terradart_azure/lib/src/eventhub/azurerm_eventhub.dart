// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventhub`.
const Set<String> _azurermEventhubSensitive = <String>{};

/// Typed helper for the `capture_description` block of
/// `azurerm_eventhub` (derived from provider schema).
@immutable
final class EventhubCaptureDescription {
  const EventhubCaptureDescription({
    required this.enabled,
    required this.encoding,
    this.intervalInSeconds,
    this.sizeLimitInBytes,
    this.skipEmptyArchives,
    required this.destination,
  });

  final TfArg<bool> enabled;

  final TfArg<String> encoding;

  final TfArg<num>? intervalInSeconds;

  final TfArg<num>? sizeLimitInBytes;

  final TfArg<bool>? skipEmptyArchives;

  final EventhubDestination destination;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'encoding': encoding.toTfJson(),
    'interval_in_seconds': ?intervalInSeconds?.toTfJson(),
    'size_limit_in_bytes': ?sizeLimitInBytes?.toTfJson(),
    'skip_empty_archives': ?skipEmptyArchives?.toTfJson(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `capture_description.destination` block of
/// `azurerm_eventhub` (derived from provider schema).
@immutable
final class EventhubDestination {
  const EventhubDestination({
    required this.archiveNameFormat,
    required this.blobContainerName,
    required this.name,
    required this.storageAccountId,
    this.storageAuthenticationId,
    this.storageAuthenticationType,
  });

  final TfArg<String> archiveNameFormat;

  final TfArg<String> blobContainerName;

  final TfArg<String> name;

  final TfArg<String> storageAccountId;

  final TfArg<String>? storageAuthenticationId;

  final TfArg<String>? storageAuthenticationType;

  @internal
  Map<String, Object?> encode() => {
    'archive_name_format': archiveNameFormat.toTfJson(),
    'blob_container_name': blobContainerName.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
    'storage_authentication_id': ?storageAuthenticationId?.toTfJson(),
    'storage_authentication_type': ?storageAuthenticationType?.toTfJson(),
  };
}

/// Typed helper for the `retention_description` block of
/// `azurerm_eventhub` (derived from provider schema).
@immutable
final class EventhubRetentionDescription {
  const EventhubRetentionDescription({
    required this.cleanupPolicy,
    this.retentionTimeInHours,
    this.tombstoneRetentionTimeInHours,
  });

  final TfArg<String> cleanupPolicy;

  final TfArg<num>? retentionTimeInHours;

  final TfArg<num>? tombstoneRetentionTimeInHours;

  @internal
  Map<String, Object?> encode() => {
    'cleanup_policy': cleanupPolicy.toTfJson(),
    'retention_time_in_hours': ?retentionTimeInHours?.toTfJson(),
    'tombstone_retention_time_in_hours': ?tombstoneRetentionTimeInHours
        ?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_eventhub`.
final class AzurermEventhub extends Resource {
  static const String tfType = 'azurerm_eventhub';

  AzurermEventhub(
    super.localName, {
    TfArg<num>? messageRetention,
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    required TfArg<num> partitionCount,
    TfArg<String>? status,
    EventhubCaptureDescription? captureDescription,
    EventhubRetentionDescription? retentionDescription,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'message_retention': ?messageRetention,
           'name': name,
           'namespace_id': namespaceId,
           'partition_count': partitionCount,
           'status': ?status,
           if (captureDescription != null)
             'capture_description': TfArg.literal(captureDescription.encode()),
           if (retentionDescription != null)
             'retention_description': TfArg.literal(
               retentionDescription.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermEventhubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermEventhub>`.
  RefTo<AzurermEventhub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `partition_ids` attribute.
  TfRef<List<String>> get partitionIds =>
      TfRef.attribute<List<String>>(this, 'partition_ids');

  /// Reference to `message_retention` attribute.
  TfRef<num> get messageRetention =>
      TfRef.attribute<num>(this, 'message_retention');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
