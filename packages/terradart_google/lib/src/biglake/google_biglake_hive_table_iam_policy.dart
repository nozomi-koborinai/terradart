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

  GoogleBiglakeHiveTableIamPolicy(
    super.localName, {
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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
