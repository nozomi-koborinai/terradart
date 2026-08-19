// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_metadata_store`.
const Set<String> _googleVertexAiMetadataStoreSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_metadata_store`.
final class GoogleVertexAiMetadataStore extends Resource {
  static const String tfType = 'google_vertex_ai_metadata_store';

  GoogleVertexAiMetadataStore({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<Map<String, dynamic>>? encryptionSpec,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (encryptionSpec != null) 'encryption_spec': encryptionSpec,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiMetadataStoreSensitive;
}
