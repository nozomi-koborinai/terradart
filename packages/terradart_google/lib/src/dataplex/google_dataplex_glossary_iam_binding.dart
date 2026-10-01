// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_glossary.dart' show GoogleDataplexGlossary;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_glossary_iam_binding`.
const Set<String> _googleDataplexGlossaryIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_glossary_iam_binding` (derived from provider schema).
@immutable
final class DataplexGlossaryIamBindingCondition {
  const DataplexGlossaryIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
    required RefTo<GoogleDataplexGlossary> glossary,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexGlossaryIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'glossary_id': glossary.encodeAs('glossary_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? glossary.alsoAs('location')),
           'project': ?(project ?? glossary.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexGlossaryIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexGlossaryIamBinding>`.
  RefTo<GoogleDataplexGlossaryIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `glossary_id` attribute.
  TfRef<String> get glossaryIdRef =>
      TfRef.attribute<String>(this, 'glossary_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
