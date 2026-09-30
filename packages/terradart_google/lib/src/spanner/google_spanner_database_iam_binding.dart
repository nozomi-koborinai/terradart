// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_database_iam_binding`.
const Set<String> _googleSpannerDatabaseIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_spanner_database_iam_binding` (derived from provider schema).
@immutable
final class SpannerDatabaseIamBindingCondition {
  const SpannerDatabaseIamBindingCondition({
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

/// Factory wrapper for `google_spanner_database_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Spanner database.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleSpannerDatabaseIamMember] for additive grants.
final class GoogleSpannerDatabaseIamBinding extends Resource {
  static const String tfType = 'google_spanner_database_iam_binding';

  GoogleSpannerDatabaseIamBinding({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> database,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    SpannerDatabaseIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'database': database,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerDatabaseIamBinding>`.
  RefTo<GoogleSpannerDatabaseIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
