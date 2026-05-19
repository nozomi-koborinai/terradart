// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
enum StorageNotificationPayloadFormat {
  jsonApiV1('JSON_API_V1'),
  none('NONE');

  const StorageNotificationPayloadFormat(this.terraformValue);
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
enum StorageNotificationEventType {
  objectFinalize('OBJECT_FINALIZE'),
  objectMetadataUpdate('OBJECT_METADATA_UPDATE'),
  objectDelete('OBJECT_DELETE'),
  objectArchive('OBJECT_ARCHIVE');

  const StorageNotificationEventType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_storage_notification` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Configures a notification subscription on a Cloud Storage bucket
/// that publishes object-mutation events (create / metadata update /
/// delete / archive) to a Pub/Sub topic. One bucket can hold multiple
/// notification configs (with different filters / payload formats).
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
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_storage_notification.`).
/// - `bucket`: GCS bucket **name** (NOT a self-link / URL). Typically
///   pass `TfArg.ref(bucket.nameRef)` against a sibling
///   [GoogleStorageBucket], or `TfArg.literal('my-bucket')`.
/// - `topic`: **fully-qualified** Pub/Sub topic resource path
///   `'projects/{project_id}/topics/{topic_name}'`. The provider
///   rejects a bare topic name. Pass `TfArg.ref(topic.id)` against a
///   sibling `GooglePubsubTopic` (the `id` getter exposes the full
///   path), or build the literal yourself.
/// - `payload_format`: message body format —
///   [StorageNotificationPayloadFormat.jsonApiV1] for the full GCS
///   Object resource JSON, or [StorageNotificationPayloadFormat.none]
///   for a header-only notification.
///
/// Optional filters:
/// - `event_types`: subset of
///   [StorageNotificationEventType] values to subscribe to (defaults
///   to all four when omitted).
/// - `object_name_prefix`: prefix path filter — only objects whose
///   names start with this string emit events.
/// - `custom_attributes`: free-form key/value attributes attached to
///   every published Pub/Sub message.
///
/// ### Example — full-fidelity notifications on a sibling bucket,
/// scoped to object writes under `incoming/`:
/// ```dart
/// final ingestTopic = GooglePubsubTopic(
///   localName: 'ingest',
///   name: TfArg.literal('gcs-ingest'),
/// );
/// final assets = GoogleStorageBucket(
///   localName: 'assets',
///   name: TfArg.literal('my-app-assets-prod'),
///   location: TfArg.literal('ASIA-NORTHEAST1'),
/// );
/// final notif = GoogleStorageNotification(
///   localName: 'assets_ingest',
///   bucket: TfArg.ref(assets.nameRef),
///   // `ingestTopic.id` resolves to
///   // `projects/{project}/topics/gcs-ingest` — the full path the API
///   // expects. Passing `ingestTopic.nameRef` (just `gcs-ingest`)
///   // would fail at apply.
///   topic: TfArg.ref(ingestTopic.id),
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
///   localName: 'audit',
///   bucket: TfArg.literal('my-bucket'),
///   topic: TfArg.literal('projects/my-proj/topics/my-topic'),
///   payloadFormat: TfArg.literal(
///     StorageNotificationPayloadFormat.jsonApiV1,
///   ),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleStorageNotification>`
/// for runtime behavior. `argMap` stores `TfArg<dynamic>?` entries
/// directly. Synth's JSON-encoding pass walks them and calls
/// `arg.toTfJson()` to encode at write time. The `event_types`
/// parameter is a typed `List<StorageNotificationEventType>` — the
/// enum-to-Terraform-string conversion happens in this wrapper before
/// the values reach the JSON encoder.
final class GoogleStorageNotification extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_storage_notification';

  GoogleStorageNotification({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> topic,
    required TfArg<StorageNotificationPayloadFormat> payloadFormat,
    List<StorageNotificationEventType>? eventTypes,
    TfArg<String>? objectNamePrefix,
    TfArg<Map<String, String>>? customAttributes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'bucket': bucket,
           'topic': topic,
           'payload_format': payloadFormat,
           if (eventTypes != null)
             'event_types': TfArg.literal(
               eventTypes.map((e) => e.terraformValue).toList(),
             ),
           if (objectNamePrefix != null) 'object_name_prefix': objectNamePrefix,
           if (customAttributes != null) 'custom_attributes': customAttributes,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleStorageNotificationSensitive;

  /// Reference to `id` attribute. Format:
  /// `{bucket}/notificationConfigs/{notification_id}`.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `notification_id` attribute — the numeric id the
  /// API assigns after create. Populated after apply.
  TfRef<String> get notificationId =>
      TfRef.attribute<String>(this, 'notification_id');

  /// Reference to `self_link` attribute (HTTPS API URI of the
  /// notification config). Populated after apply.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
