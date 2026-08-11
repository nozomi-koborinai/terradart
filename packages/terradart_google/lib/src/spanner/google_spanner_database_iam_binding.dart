// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_database_iam_binding`.
const Set<String> _googleSpannerDatabaseIamBindingSensitive = <String>{};

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
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'database': database,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
