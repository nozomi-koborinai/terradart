// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_database.dart'
    show GoogleBiglakeHiveDatabase;

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

  GoogleBiglakeHiveDatabaseIamPolicy(
    super.localName, {
    TfArg<String>? catalog,
    required RefTo<GoogleBiglakeHiveDatabase> database,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? database.alsoAs('catalog')),
           'name': database.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? database.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveDatabaseIamPolicy>`.
  RefTo<GoogleBiglakeHiveDatabaseIamPolicy> get ref => RefTo.of(this);
}
