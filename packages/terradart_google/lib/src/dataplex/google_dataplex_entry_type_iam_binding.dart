// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GoogleDataplexEntryTypeIamBinding({
    required super.localName,
    required TfArg<String> entryTypeId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
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
           'entry_type_id': entryTypeId,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
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
}
