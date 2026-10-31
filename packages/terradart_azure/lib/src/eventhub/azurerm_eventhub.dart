// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_eventhub`.
const Set<String> _azurermEventhubSensitive = <String>{};

/// Eventhub enum for `status`.
extension type const EventhubStatus._(TfArg<String> _)
    implements TfArg<String> {
  EventhubStatus.variable(String name) : this._(TfArg.variable(name));
  EventhubStatus.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = EventhubStatus._(TfArgLiteral('Active'));
  static const disabled = EventhubStatus._(TfArgLiteral('Disabled'));
  static const senddisabled = EventhubStatus._(TfArgLiteral('SendDisabled'));

  static const List<EventhubStatus> values = [active, disabled, senddisabled];
}

/// Exactly one of `message_retention`, `retention_description` on `azurerm_eventhub`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.messageRetention(...)`.
sealed class EventhubRetention {
  const EventhubRetention();

  /// Sets `message_retention`.
  const factory EventhubRetention.messageRetention(
    TfArg<num> messageRetention,
  ) = EventhubMessageRetention;

  /// Sets `retention_description`.
  const factory EventhubRetention.retentionDescription(
    EventhubRetentionDescription retentionDescription,
  ) = EventhubRetentionDescriptionChoice;

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

/// The [EventhubRetention.messageRetention] choice: sets `message_retention`.
final class EventhubMessageRetention extends EventhubRetention {
  const EventhubMessageRetention(this.messageRetention);

  final TfArg<num> messageRetention;

  @internal
  @override
  String get blockKey => 'message_retention';

  @internal
  @override
  Map<String, Object?> encode() => {
    'message_retention': messageRetention.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'message_retention': messageRetention,
  };
}

/// The [EventhubRetention.retentionDescription] choice: sets `retention_description`.
final class EventhubRetentionDescriptionChoice extends EventhubRetention {
  const EventhubRetentionDescriptionChoice(this.retentionDescription);

  final EventhubRetentionDescription retentionDescription;

  @internal
  @override
  String get blockKey => 'retention_description';

  @internal
  @override
  Map<String, Object?> encode() => {
    'retention_description': retentionDescription.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'retention_description': TfArg.literal(retentionDescription.encode()),
  };
}

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

  final EventhubEncoding encoding;

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

/// `encoding` — derived from the provider schema description.
extension type const EventhubEncoding._(TfArg<String> _)
    implements TfArg<String> {
  EventhubEncoding.variable(String name) : this._(TfArg.variable(name));
  EventhubEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubEncoding.arg(TfArg<String> arg) : this._(arg);

  static const avro = EventhubEncoding._(TfArgLiteral('Avro'));
  static const avrodeflate = EventhubEncoding._(TfArgLiteral('AvroDeflate'));

  static const List<EventhubEncoding> values = [avro, avrodeflate];
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

  final EventhubDestinationName name;

  final TfArg<String> storageAccountId;

  final TfArg<String>? storageAuthenticationId;

  final EventhubStorageAuthenticationType? storageAuthenticationType;

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

/// `name` — derived from the provider schema description.
extension type const EventhubDestinationName._(TfArg<String> _)
    implements TfArg<String> {
  EventhubDestinationName.variable(String name) : this._(TfArg.variable(name));
  EventhubDestinationName.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubDestinationName.arg(TfArg<String> arg) : this._(arg);

  static const eventhubarchiveAzureblockblob = EventhubDestinationName._(
    TfArgLiteral('EventHubArchive.AzureBlockBlob'),
  );

  static const List<EventhubDestinationName> values = [
    eventhubarchiveAzureblockblob,
  ];
}

/// `storage_authentication_type` — derived from the provider schema description.
extension type const EventhubStorageAuthenticationType._(TfArg<String> _)
    implements TfArg<String> {
  EventhubStorageAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  EventhubStorageAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubStorageAuthenticationType.arg(TfArg<String> arg) : this._(arg);

  static const storagesas = EventhubStorageAuthenticationType._(
    TfArgLiteral('StorageSAS'),
  );
  static const systemassigned = EventhubStorageAuthenticationType._(
    TfArgLiteral('SystemAssigned'),
  );
  static const userassigned = EventhubStorageAuthenticationType._(
    TfArgLiteral('UserAssigned'),
  );

  static const List<EventhubStorageAuthenticationType> values = [
    storagesas,
    systemassigned,
    userassigned,
  ];
}

/// Typed helper for the `retention_description` block of
/// `azurerm_eventhub` (derived from provider schema).
@immutable
final class EventhubRetentionDescription {
  const EventhubRetentionDescription({
    required this.cleanupPolicy,
    required this.duration,
  });

  final EventhubCleanupPolicy cleanupPolicy;

  final EventhubDuration duration;

  @internal
  Map<String, Object?> encode() => {
    'cleanup_policy': cleanupPolicy.toTfJson(),
    ...duration.encode(),
  };
}

/// Exactly one of `retention_time_in_hours`, `tombstone_retention_time_in_hours` on the `retention_description` block of `azurerm_eventhub`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.retentionTimeInHours(...)`.
sealed class EventhubDuration {
  const EventhubDuration();

  /// Sets `retention_time_in_hours`.
  const factory EventhubDuration.retentionTimeInHours(
    TfArg<num> retentionTimeInHours,
  ) = EventhubDurationRetentionTimeInHours;

  /// Sets `tombstone_retention_time_in_hours`.
  const factory EventhubDuration.tombstoneRetentionTimeInHours(
    TfArg<num> tombstoneRetentionTimeInHours,
  ) = EventhubDurationTombstoneRetentionTimeInHours;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [EventhubDuration.retentionTimeInHours] choice: sets `retention_time_in_hours`.
final class EventhubDurationRetentionTimeInHours extends EventhubDuration {
  const EventhubDurationRetentionTimeInHours(this.retentionTimeInHours);

  final TfArg<num> retentionTimeInHours;

  @internal
  @override
  String get blockKey => 'retention_time_in_hours';

  @internal
  @override
  Map<String, Object?> encode() => {
    'retention_time_in_hours': retentionTimeInHours.toTfJson(),
  };
}

/// The [EventhubDuration.tombstoneRetentionTimeInHours] choice: sets `tombstone_retention_time_in_hours`.
final class EventhubDurationTombstoneRetentionTimeInHours
    extends EventhubDuration {
  const EventhubDurationTombstoneRetentionTimeInHours(
    this.tombstoneRetentionTimeInHours,
  );

  final TfArg<num> tombstoneRetentionTimeInHours;

  @internal
  @override
  String get blockKey => 'tombstone_retention_time_in_hours';

  @internal
  @override
  Map<String, Object?> encode() => {
    'tombstone_retention_time_in_hours': tombstoneRetentionTimeInHours
        .toTfJson(),
  };
}

/// `cleanup_policy` — derived from the provider schema description.
extension type const EventhubCleanupPolicy._(TfArg<String> _)
    implements TfArg<String> {
  EventhubCleanupPolicy.variable(String name) : this._(TfArg.variable(name));
  EventhubCleanupPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const EventhubCleanupPolicy.arg(TfArg<String> arg) : this._(arg);

  static const compact = EventhubCleanupPolicy._(TfArgLiteral('Compact'));
  static const delete = EventhubCleanupPolicy._(TfArgLiteral('Delete'));

  static const List<EventhubCleanupPolicy> values = [compact, delete];
}

/// Factory wrapper for `azurerm_eventhub`.
final class AzurermEventhub extends Resource {
  static const String tfType = 'azurerm_eventhub';

  AzurermEventhub(
    super.localName, {
    required EventhubRetention retention,
    required TfArg<String> name,
    required TfArg<String> namespaceId,
    required TfArg<num> partitionCount,
    EventhubStatus? status,
    EventhubCaptureDescription? captureDescription,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...retention.argMap,
           'name': name,
           'namespace_id': namespaceId,
           'partition_count': partitionCount,
           'status': ?status,
           if (captureDescription != null)
             'capture_description': TfArg.literal(captureDescription.encode()),
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
