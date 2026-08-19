// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_database_iam_binding`.
const Set<String> _googleBiglakeHiveDatabaseIamBindingSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_database_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Biglake Hive Database.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBiglakeHiveDatabaseIamMember] for additive grants.
final class GoogleBiglakeHiveDatabaseIamBinding extends Resource {
  static const String tfType = 'google_biglake_hive_database_iam_binding';

  GoogleBiglakeHiveDatabaseIamBinding({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<List<String>> members,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'catalog': catalog,
           'members': members,
           'name': name,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamBindingSensitive;
}
