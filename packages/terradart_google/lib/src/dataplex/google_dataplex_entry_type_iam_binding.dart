// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_type.dart'
    show GoogleDataplexEntryType;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_entry_type_iam_binding`.
const Set<String> _googleDataplexEntryTypeIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_entry_type_iam_binding` (derived from provider schema).
@immutable
final class DataplexEntryTypeIamBindingCondition {
  const DataplexEntryTypeIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_entry_type_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex entry type.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexEntryTypeIamMember] for additive grants.
final class GoogleDataplexEntryTypeIamBinding extends Resource {
  static const String tfType = 'google_dataplex_entry_type_iam_binding';

  GoogleDataplexEntryTypeIamBinding(
    super.localName, {
    required RefTo<GoogleDataplexEntryType> entryType,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexEntryTypeIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_type_id': entryType.encodeAs('entry_type_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? entryType.alsoAs('location')),
           'project': ?(project ?? entryType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryTypeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryTypeIamBinding>`.
  RefTo<GoogleDataplexEntryTypeIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_type_id` attribute.
  TfRef<String> get entryTypeId =>
      TfRef.attribute<String>(this, 'entry_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
