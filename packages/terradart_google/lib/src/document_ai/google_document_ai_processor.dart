// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_document_ai_processor`.
const Set<String> _googleDocumentAiProcessorSensitive = <String>{};

/// Factory wrapper for `google_document_ai_processor`.
///
/// The first-class citizen for Document AI. Each processor defines how to
/// extract structural information from a document.
final class GoogleDocumentAiProcessor extends Resource {
  static const String tfType = 'google_document_ai_processor';

  GoogleDocumentAiProcessor({
    required super.localName,
    required TfArg<String> type,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? kmsKeyName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'type': type,
           'display_name': displayName,
           'location': location,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDocumentAiProcessorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
