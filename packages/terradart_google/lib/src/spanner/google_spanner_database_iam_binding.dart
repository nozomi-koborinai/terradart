// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../spanner/google_spanner_database.dart' show GoogleSpannerDatabase;

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

  GoogleSpannerDatabaseIamBinding(
    super.localName, {
    TfArg<String>? instance,
    required RefTo<GoogleSpannerDatabase> database,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    SpannerDatabaseIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': ?(instance ?? database.alsoAs('instance')),
           'database': database.encodeAs('name'),
           'role': role,
           'members': members,
           'project': ?(project ?? database.alsoAs('project')),
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
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
