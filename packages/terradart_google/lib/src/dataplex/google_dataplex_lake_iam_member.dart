// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_lake_iam_member`.
const Set<String> _googleDataplexLakeIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_dataplex_lake_iam_member` (derived from provider schema).
@immutable
final class DataplexLakeIamMemberCondition {
  const DataplexLakeIamMemberCondition({
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

/// Factory wrapper for `google_dataplex_lake_iam_member`.
final class GoogleDataplexLakeIamMember extends Resource {
  static const String tfType = 'google_dataplex_lake_iam_member';

  GoogleDataplexLakeIamMember({
    required super.localName,
    required TfArg<String> lake,
    required TfArg<String> role,
    required TfArg<String> member,
    DataplexLakeIamMemberCondition? condition,
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
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexLakeIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexLakeIamMember>`.
  RefTo<GoogleDataplexLakeIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
