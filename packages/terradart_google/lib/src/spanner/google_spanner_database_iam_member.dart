// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../spanner/google_spanner_database.dart' show GoogleSpannerDatabase;

/// Sensitive field paths for `google_spanner_database_iam_member`.
const Set<String> _googleSpannerDatabaseIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_spanner_database_iam_member` (derived from provider schema).
@immutable
final class SpannerDatabaseIamMemberCondition {
  const SpannerDatabaseIamMemberCondition({
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

/// Factory wrapper for `google_spanner_database_iam_member`.
final class GoogleSpannerDatabaseIamMember extends Resource {
  static const String tfType = 'google_spanner_database_iam_member';

  GoogleSpannerDatabaseIamMember({
    required super.localName,
    TfArg<String>? instance,
    required RefTo<GoogleSpannerDatabase> database,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    SpannerDatabaseIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? database.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerDatabaseIamMember>`.
  RefTo<GoogleSpannerDatabaseIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
