// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_topic`.
const Set<String> _googlePubsubTopicSensitive = <String>{};

enum PubsubTopicSchemaEncoding implements TerraformEnum {
  encodingUnspecified('ENCODING_UNSPECIFIED'),
  json('JSON'),
  binary('BINARY');

  const PubsubTopicSchemaEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

enum PubsubTopicPlatformLogsSeverity implements TerraformEnum {
  severityUnspecified('SEVERITY_UNSPECIFIED'),
  disabled('DISABLED'),
  debug('DEBUG'),
  info('INFO'),
  warning('WARNING'),
  error('ERROR');

  const PubsubTopicPlatformLogsSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class PubsubTopicSchemaSettings {
  const PubsubTopicSchemaSettings({
    this.schema,
    this.encoding,
    this.firstRevisionId,
    this.lastRevisionId,
  });

  final TfArg<String>? schema;
  final PubsubTopicSchemaEncoding? encoding;
  final TfArg<String>? firstRevisionId;
  final TfArg<String>? lastRevisionId;

  Map<String, Object?> encode() => {
    if (schema != null) 'schema': schema!.toTfJson(),
    if (encoding != null) 'encoding': encoding!.terraformValue,
    if (firstRevisionId != null)
      'first_revision_id': firstRevisionId!.toTfJson(),
    if (lastRevisionId != null) 'last_revision_id': lastRevisionId!.toTfJson(),
  };
}

@immutable
class PubsubTopicPlatformLogsSettings {
  const PubsubTopicPlatformLogsSettings({this.severity});

  final PubsubTopicPlatformLogsSeverity? severity;

  Map<String, Object?> encode() => {
    if (severity != null) 'severity': severity!.terraformValue,
  };
}

@immutable
class PubsubTopicIngestionDataSourceSettings {
  const PubsubTopicIngestionDataSourceSettings({this.platformLogsSettings});

  final PubsubTopicPlatformLogsSettings? platformLogsSettings;

  Map<String, Object?> encode() => {
    if (platformLogsSettings != null)
      'platform_logs_settings': [platformLogsSettings!.encode()],
  };
}

/// Factory wrapper for `google_pubsub_topic`.
///
/// A named resource to which messages are sent by publishers.
///
/// Example:
/// ```dart
/// final orders = GooglePubsubTopic(
///   localName: 'orders',
///   name: TfArg.literal('orders-prod'),
///   messageRetentionDuration:
///       TfArg.literal(const Duration(days: 7).toTfDurationString()),
///   schemaSettings: const PubsubTopicSchemaSettings(
///     encoding: PubsubTopicSchemaEncoding.json,
///   ),
///   lifecycle: const LifecycleOptions(preventDestroy: true),
/// );
/// ```
final class GooglePubsubTopic extends Resource {
  static const String tfType = 'google_pubsub_topic';

  GooglePubsubTopic({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, dynamic>>? messageStoragePolicy,
    PubsubTopicSchemaSettings? schemaSettings,
    TfArg<String>? messageRetentionDuration,
    PubsubTopicIngestionDataSourceSettings? ingestionDataSourceSettings,
    TfArg<List<Map<String, dynamic>>>? messageTransforms,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (labels != null) 'labels': labels,
           if (messageStoragePolicy != null)
             'message_storage_policy': messageStoragePolicy,
           if (schemaSettings != null)
             'schema_settings': TfArg.literal([schemaSettings.encode()]),
           if (messageRetentionDuration != null)
             'message_retention_duration': messageRetentionDuration,
           if (ingestionDataSourceSettings != null)
             'ingestion_data_source_settings': TfArg.literal([
               ingestionDataSourceSettings.encode(),
             ]),
           if (messageTransforms != null)
             'message_transforms': messageTransforms,
           if (tags != null) 'tags': tags,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
