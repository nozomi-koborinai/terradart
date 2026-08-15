// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_pubsub_topic`.
const Set<String> _googlePubsubTopicSensitive = <String>{};

/// Factory wrapper for `google_pubsub_topic`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePubsubTopic extends Data {
  static const String tfType = 'google_pubsub_topic';

  DataGooglePubsubTopic({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubTopicSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `ingestion_data_source_settings` attribute.
  TfRef<List<Map<String, Object?>>> get ingestionDataSourceSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ingestion_data_source_settings',
      );

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `message_retention_duration` attribute.
  TfRef<String> get messageRetentionDuration =>
      TfRef.attribute<String>(this, 'message_retention_duration');

  /// Reference to `message_storage_policy` attribute.
  TfRef<List<Map<String, Object?>>> get messageStoragePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'message_storage_policy',
      );

  /// Reference to `message_transforms` attribute.
  TfRef<List<Map<String, Object?>>> get messageTransforms =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'message_transforms');

  /// Reference to `schema_settings` attribute.
  TfRef<List<Map<String, Object?>>> get schemaSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schema_settings');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
