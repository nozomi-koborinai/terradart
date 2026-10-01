// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_notification`.
const Set<String> _googleStorageNotificationSensitive = <String>{};

/// `payload_format`. Picks the body the Pub/Sub message carries for
/// each event.
///
/// - [jsonApiV1]: full GCS Object resource serialized as JSON in the
///   message body. Pair with downstream code that parses the Object
///   schema (size, contentType, metadata, etc.).
/// - [none]: header-only notification — the message attributes still
///   identify the bucket / object / event type, but the body is empty.
///   Use when downstream consumers only need the event signal.
enum StorageNotificationPayloadFormat implements TerraformEnum {
  jsonApiV1('JSON_API_V1'),
  none('NONE');

  const StorageNotificationPayloadFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// One entry in `event_types[]`. Selects which object-mutation events
/// the notification subscribes to. Omitting the list entirely (or
/// passing all four values) subscribes to every event type.
///
/// - [objectFinalize]: a new object successfully completed upload, or
///   a new generation of an existing object was created.
/// - [objectMetadataUpdate]: an object's metadata changed (the object
///   itself was unchanged).
/// - [objectDelete]: an object was deleted — fires whether the bucket
///   has versioning enabled or not.
/// - [objectArchive]: a versioned object became non-current (only
///   fires on versioning-enabled buckets).
enum StorageNotificationEventType implements TerraformEnum {
  objectFinalize('OBJECT_FINALIZE'),
  objectMetadataUpdate('OBJECT_METADATA_UPDATE'),
  objectDelete('OBJECT_DELETE'),
  objectArchive('OBJECT_ARCHIVE');

  const StorageNotificationEventType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_notification`.
///
/// Creates a new notification configuration on a specified bucket, establishing
/// a flow of event notifications from GCS to a Cloud Pub/Sub topic.
///
/// ### IAM precondition
/// Before applying this resource, the GCS service account
/// (`service-{PROJECT_NUMBER}@gs-project-accounts.iam.gserviceaccount.com`)
/// MUST hold the `roles/pubsub.publisher` role on the destination
/// [topic]. The provider does NOT manage this binding for you — wire
/// it up via a sibling `google_pubsub_topic_iam_member` (or the
/// `google_storage_project_service_account` data source feeding into
/// the IAM binding) and add it to the resource's `dependsOn`.
///
/// `topic` must be a **fully-qualified** Pub/Sub topic resource path
/// `'projects/{project_id}/topics/{topic_name}'`. The provider rejects
/// a bare topic name. Pass `topic.ref` against a sibling
/// `GooglePubsubTopic` (it emits the topic `id`, the full path), or
/// build the literal yourself.
///
/// ### Example — full-fidelity notifications on a sibling bucket,
/// scoped to object writes under `incoming/`:
/// ```dart
/// final ingestTopic = GooglePubsubTopic(
///   'ingest',
///   name: TfArg.literal('gcs-ingest'),
/// );
/// final assets = GoogleStorageBucket(
///   'assets',
///   name: TfArg.literal('my-app-assets-prod'),
///   location: TfArg.literal('ASIA-NORTHEAST1'),
/// );
/// final notif = GoogleStorageNotification(
///   'assets_ingest',
///   bucket: assets.ref,
///   // Emits the topic `id`, `projects/{project}/topics/gcs-ingest` —
///   // the full path the API expects.
///   topic: ingestTopic.ref,
///   payloadFormat: TfArg.literal(
///     StorageNotificationPayloadFormat.jsonApiV1,
///   ),
///   eventTypes: const [
///     StorageNotificationEventType.objectFinalize,
///     StorageNotificationEventType.objectMetadataUpdate,
///   ],
///   objectNamePrefix: TfArg.literal('incoming/'),
///   customAttributes: TfArg.literal(const {'source': 'gcs-ingest'}),
/// );
/// ```
///
/// ### Example — pre-built literal topic path (e.g. when the topic
/// lives in another project / is provisioned outside Terraform):
/// ```dart
/// final notif = GoogleStorageNotification(
///   'audit',
///   bucket: RefTo.literal('my-bucket'),
///   topic: RefTo.literal('projects/my-proj/topics/my-topic'),
///   payloadFormat: TfArg.literal(
///     StorageNotificationPayloadFormat.jsonApiV1,
///   ),
/// );
/// ```
final class GoogleStorageNotification extends Resource {
  static const String tfType = 'google_storage_notification';

  GoogleStorageNotification(
    super.localName, {
    required RefTo<GoogleStorageBucket> bucket,
    required RefTo<GooglePubsubTopic> topic,
    required TfArg<StorageNotificationPayloadFormat> payloadFormat,
    List<StorageNotificationEventType>? eventTypes,
    TfArg<String>? objectNamePrefix,
    TfArg<Map<String, String>>? customAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'topic': topic.encodeAs('id'),
           'payload_format': payloadFormat,
           if (eventTypes != null)
             'event_types': TfArg.literal(
               eventTypes.map((e) => e.terraformValue).toList(),
             ),
           'object_name_prefix': ?objectNamePrefix,
           'custom_attributes': ?customAttributes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageNotificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageNotification>`.
  RefTo<GoogleStorageNotification> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `notification_id` attribute.
  TfRef<String> get notificationId =>
      TfRef.attribute<String>(this, 'notification_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `custom_attributes` attribute.
  TfRef<Map<String, String>> get customAttributes =>
      TfRef.attribute<Map<String, String>>(this, 'custom_attributes');

  /// Reference to `event_types` attribute.
  TfRef<List<String>> get eventTypes =>
      TfRef.attribute<List<String>>(this, 'event_types');

  /// Reference to `object_name_prefix` attribute.
  TfRef<String> get objectNamePrefix =>
      TfRef.attribute<String>(this, 'object_name_prefix');

  /// Reference to `payload_format` attribute.
  TfRef<String> get payloadFormat =>
      TfRef.attribute<String>(this, 'payload_format');

  /// Reference to `topic` attribute.
  TfRef<String> get topic => TfRef.attribute<String>(this, 'topic');
}
