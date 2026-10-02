// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_entry_group_iam_member`.
const Set<String> _googleDataplexEntryGroupIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_entry_group_iam_member` (derived from provider schema).
@immutable
final class DataplexEntryGroupIamMemberCondition {
  const DataplexEntryGroupIamMemberCondition({
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

/// Factory wrapper for `google_dataplex_entry_group_iam_member`.
final class GoogleDataplexEntryGroupIamMember extends Resource {
  static const String tfType = 'google_dataplex_entry_group_iam_member';

  GoogleDataplexEntryGroupIamMember(
    super.localName, {
    required RefTo<GoogleDataplexEntryGroup> entryGroup,
    required TfArg<String> role,
    required IamPrincipal member,
    DataplexEntryGroupIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? entryGroup.alsoAs('location')),
           'project': ?(project ?? entryGroup.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryGroupIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryGroupIamMember>`.
  RefTo<GoogleDataplexEntryGroupIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_group_id` attribute.
  TfRef<String> get entryGroupId =>
      TfRef.attribute<String>(this, 'entry_group_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
