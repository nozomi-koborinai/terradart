// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_entry_group_iam_binding`.
const Set<String> _googleDataplexEntryGroupIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_entry_group_iam_binding` (derived from provider schema).
@immutable
final class DataplexEntryGroupIamBindingCondition {
  const DataplexEntryGroupIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_entry_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex entry group.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexEntryGroupIamMember] for additive grants.
final class GoogleDataplexEntryGroupIamBinding extends Resource {
  static const String tfType = 'google_dataplex_entry_group_iam_binding';

  GoogleDataplexEntryGroupIamBinding(
    super.localName, {
    required RefTo<GoogleDataplexEntryGroup> entryGroup,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataplexEntryGroupIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': entryGroup.encodeAs('entry_group_id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? entryGroup.alsoAs('location')),
           'project': ?(project ?? entryGroup.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryGroupIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryGroupIamBinding>`.
  RefTo<GoogleDataplexEntryGroupIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_group_id` attribute.
  TfRef<String> get entryGroupId =>
      TfRef.attribute<String>(this, 'entry_group_id');

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
