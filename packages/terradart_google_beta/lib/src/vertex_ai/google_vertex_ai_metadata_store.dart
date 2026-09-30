// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_metadata_store`.
const Set<String> _googleVertexAiMetadataStoreSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_metadata_store` (derived from provider schema).
@immutable
final class VertexAiMetadataStoreEncryptionSpec {
  const VertexAiMetadataStoreEncryptionSpec({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_metadata_store`.
///
/// Instance of a metadata store. Contains a set of metadata that can be
/// queried.
final class GoogleVertexAiMetadataStore extends Resource {
  static const String tfType = 'google_vertex_ai_metadata_store';

  GoogleVertexAiMetadataStore({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? region,
    VertexAiMetadataStoreEncryptionSpec? encryptionSpec,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'name': ?name,
           'project': ?project,
           'region': ?region,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiMetadataStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiMetadataStore>`.
  RefTo<GoogleVertexAiMetadataStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
