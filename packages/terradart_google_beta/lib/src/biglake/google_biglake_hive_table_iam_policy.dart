// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_table_iam_policy`.
const Set<String> _googleBiglakeHiveTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_table_iam_policy`.
///
/// Authoritative IAM policy for a Biglake Hive Table.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleBiglakeHiveTableIamMember] for additive grants.
final class GoogleBiglakeHiveTableIamPolicy extends Resource {
  static const String tfType = 'google_biglake_hive_table_iam_policy';

  GoogleBiglakeHiveTableIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> database,
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
           'database': database,
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableIamPolicySensitive;
}
