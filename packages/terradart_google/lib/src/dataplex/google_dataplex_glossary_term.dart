// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_glossary_term`.
const Set<String> _googleDataplexGlossaryTermSensitive = <String>{};

/// Factory wrapper for `google_dataplex_glossary_term`.
///
/// Represents a collection of terms within a Glossary that are related to each
/// other.
final class GoogleDataplexGlossaryTerm extends Resource {
  static const String tfType = 'google_dataplex_glossary_term';

  GoogleDataplexGlossaryTerm({
    required super.localName,
    TfArg<String>? termId,
    TfArg<String>? glossaryId,
    required TfArg<String> parent,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (termId != null) 'term_id': termId,
           if (glossaryId != null) 'glossary_id': glossaryId,
           'parent': parent,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexGlossaryTermSensitive;

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

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
