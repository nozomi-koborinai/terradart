// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_table.dart' show GoogleBiglakeHiveTable;

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
    TfArg<String>? catalog,
    TfArg<String>? database,
    required RefTo<GoogleBiglakeHiveTable> table,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? table.alsoAs('catalog')),
           'database': ?(database ?? table.alsoAs('database')),
           'name': table.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? table.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveTableIamPolicy>`.
  RefTo<GoogleBiglakeHiveTableIamPolicy> get ref => RefTo.of(this);
}
