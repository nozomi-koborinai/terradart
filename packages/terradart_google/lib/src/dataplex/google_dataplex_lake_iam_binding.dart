// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_lake_iam_binding`.
const Set<String> _googleDataplexLakeIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_lake_iam_binding` (derived from provider schema).
@immutable
final class DataplexLakeIamBindingCondition {
  const DataplexLakeIamBindingCondition({
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

/// Factory wrapper for `google_dataplex_lake_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex lake.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexLakeIamMember] for additive grants.
final class GoogleDataplexLakeIamBinding extends Resource {
  static const String tfType = 'google_dataplex_lake_iam_binding';

  GoogleDataplexLakeIamBinding({
    required super.localName,
    required TfArg<String> lake,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    DataplexLakeIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lake': lake,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexLakeIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexLakeIamBinding>`.
  RefTo<GoogleDataplexLakeIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
