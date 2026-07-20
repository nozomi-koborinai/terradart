// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_document_ai_schema`.
const Set<String> _googleDocumentAiSchemaSensitive = <String>{};

/// Factory wrapper for `google_document_ai_schema`.
///
/// NextSchema is a collection of SchemaVersions.
///
/// Document AI **schema** — a named collection of schema versions for
/// custom document processors.
///
/// Creating a schema alone does not process documents and has no Document
/// AI page/OCR SKU (billed only when pages are processed by a processor).
///
/// Enable `documentai.googleapis.com` via [GoogleProjectService] before
/// apply. [location] is a multi-region (`us` or `eu`).
///
/// Example:
/// ```dart
/// GoogleDocumentAiSchema(
///   localName: 'fields',
///   location: TfArg.literal('us'),
///   displayName: TfArg.literal('terradart-schema'),
/// );
/// ```
final class GoogleDocumentAiSchema extends Resource {
  static const String tfType = 'google_document_ai_schema';

  GoogleDocumentAiSchema({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDocumentAiSchemaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
