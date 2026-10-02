// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_type.dart'
    show GoogleDataplexEntryType;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_dataplex_entry_type_iam_member`.
const Set<String> _googleDataplexEntryTypeIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_entry_type_iam_member` (derived from provider schema).
@immutable
final class DataplexEntryTypeIamMemberCondition {
  const DataplexEntryTypeIamMemberCondition({
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

/// Factory wrapper for `google_dataplex_entry_type_iam_member`.
final class GoogleDataplexEntryTypeIamMember extends Resource {
  static const String tfType = 'google_dataplex_entry_type_iam_member';

  GoogleDataplexEntryTypeIamMember(
    super.localName, {
    required RefTo<GoogleDataplexEntryType> entryType,
    required TfArg<String> role,
    required IamPrincipal member,
    DataplexEntryTypeIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?(location ?? entryType.alsoAs('location')),
           'project': ?(project ?? entryType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryTypeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryTypeIamMember>`.
  RefTo<GoogleDataplexEntryTypeIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_type_id` attribute.
  TfRef<String> get entryTypeId =>
      TfRef.attribute<String>(this, 'entry_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
