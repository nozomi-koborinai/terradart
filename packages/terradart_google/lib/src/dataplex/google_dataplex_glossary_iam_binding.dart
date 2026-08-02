// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_glossary_iam_binding`.
const Set<String> _googleDataplexGlossaryIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataplex_glossary_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex glossary.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexGlossaryIamMember] for additive grants.
final class GoogleDataplexGlossaryIamBinding extends Resource {
  static const String tfType = 'google_dataplex_glossary_iam_binding';

  GoogleDataplexGlossaryIamBinding({
    required super.localName,
    required TfArg<String> glossaryId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'glossary_id': glossaryId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexGlossaryIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
