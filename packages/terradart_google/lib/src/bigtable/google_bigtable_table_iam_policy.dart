// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_table.dart' show GoogleBigtableTable;

/// Sensitive field paths for `google_bigtable_table_iam_policy`.
const Set<String> _googleBigtableTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigtable_table_iam_policy`.
///
/// Authoritative IAM policy for a Bigtable table.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigtableTableIamMember] for single-principal grants.
final class GoogleBigtableTableIamPolicy extends Resource {
  static const String tfType = 'google_bigtable_table_iam_policy';

  GoogleBigtableTableIamPolicy({
    required super.localName,
    TfArg<String>? instanceName,
    required RefTo<GoogleBigtableTable> table,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': ?(instanceName ?? table.alsoAs('instance_name')),
           'table': table.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? table.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableTableIamPolicy>`.
  RefTo<GoogleBigtableTableIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceNameRef =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `table` attribute.
  TfRef<String> get tableRef => TfRef.attribute<String>(this, 'table');
}
