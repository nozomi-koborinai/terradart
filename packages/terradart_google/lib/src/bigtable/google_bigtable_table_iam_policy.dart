// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> instanceName,
    required TfArg<String> table,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'table': table,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableTableIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
