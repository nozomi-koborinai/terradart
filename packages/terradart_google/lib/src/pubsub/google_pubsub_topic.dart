import 'package:terradart_core/terradart_core.dart';

import '../generated/google_pubsub_topic.schema.dart'
    show $GooglePubsubTopic, googlePubsubTopicSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GooglePubsubTopicSchemaInstance implements $GooglePubsubTopic {
  const _GooglePubsubTopicSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_pubsub_topic` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_pubsub_topic.`).
/// - `name`: GCP topic name. Pass `TfArg.literal('orders-prod')` or
///   `TfArg.ref(otherTopic.nameRef)` to interpolate.
///
/// Example:
/// ```dart
/// final orders = GooglePubsubTopic(
///   localName: 'orders',
///   name: TfArg.literal('orders-prod'),
///   messageRetentionDuration:
///       TfArg.literal(const Duration(days: 7).toTfDurationString()),
///   lifecycle: const LifecycleOptions(preventDestroy: true),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GooglePubsubTopic>` for runtime
/// behavior. `argMap` stores `TfArg<dynamic>?` entries directly. Synth's
/// JSON-encoding pass walks them and calls `arg.toTfJson()` to encode at
/// write time.
final class GooglePubsubTopic extends Resource<$GooglePubsubTopic> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_pubsub_topic';

  GooglePubsubTopic({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, dynamic>>? messageStoragePolicy,
    TfArg<Map<String, dynamic>>? schemaSettings,
    TfArg<String>? messageRetentionDuration,
    TfArg<Map<String, dynamic>>? ingestionDataSourceSettings,
    TfArg<List<Map<String, dynamic>>>? messageTransforms,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GooglePubsubTopicSchemaInstance(),
         argMap: {
           'name': name,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (labels != null) 'labels': labels,
           if (messageStoragePolicy != null)
             'message_storage_policy': messageStoragePolicy,
           if (schemaSettings != null) 'schema_settings': schemaSettings,
           if (messageRetentionDuration != null)
             'message_retention_duration': messageRetentionDuration,
           if (ingestionDataSourceSettings != null)
             'ingestion_data_source_settings': ingestionDataSourceSettings,
           if (messageTransforms != null)
             'message_transforms': messageTransforms,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googlePubsubTopicSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `topic.nameRef` → `${google_pubsub_topic.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/topics/{name}`). Use this when the consumer expects
  /// the full resource path (e.g. `google_pubsub_subscription.topic`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
