// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../biglake/google_biglake_hive_database_iam_policy.dart';

/// Sensitive field paths for `google_biglake_hive_database_iam_policy`.
const Set<String> _googleBiglakeHiveDatabaseIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_database_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBiglakeHiveDatabaseIamPolicy extends Data {
  static const String tfType = 'google_biglake_hive_database_iam_policy';

  DataGoogleBiglakeHiveDatabaseIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveDatabaseIamPolicySensitive;

  /// A reference to the `google_biglake_hive_database_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleBiglakeHiveDatabaseIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleBiglakeHiveDatabaseIamPolicy> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
