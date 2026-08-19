// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_database_iam_policy`.
const Set<String> _googleBiglakeHiveDatabaseIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_database_iam_policy`.
///
/// Authoritative IAM policy for a Biglake Hive Database.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleBiglakeHiveDatabaseIamMember] for additive grants.
final class GoogleBiglakeHiveDatabaseIamPolicy extends Resource {
  static const String tfType = 'google_biglake_hive_database_iam_policy';

  GoogleBiglakeHiveDatabaseIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'catalog': catalog,
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamPolicySensitive;
}
