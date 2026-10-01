// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_dataset`.
const Set<String> _googleVertexAiDatasetSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_dataset` (derived from provider schema).
@immutable
final class VertexAiDatasetEncryptionSpec {
  const VertexAiDatasetEncryptionSpec({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_dataset`.
///
/// A collection of DataItems and Annotations on them.
final class GoogleVertexAiDataset extends Resource {
  static const String tfType = 'google_vertex_ai_dataset';

  GoogleVertexAiDataset(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> metadataSchemaUri,
    TfArg<String>? region,
    VertexAiDatasetEncryptionSpec? encryptionSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'metadata_schema_uri': metadataSchemaUri,
           'region': ?region,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiDatasetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiDataset>`.
  RefTo<GoogleVertexAiDataset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `metadata_schema_uri` attribute.
  TfRef<String> get metadataSchemaUri =>
      TfRef.attribute<String>(this, 'metadata_schema_uri');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
