// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_database_iam_policy`.
const Set<String> _googleSpannerDatabaseIamPolicySensitive = <String>{};

/// Factory wrapper for `google_spanner_database_iam_policy`.
///
/// Authoritative IAM policy for a Spanner database.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleSpannerDatabaseIamMember] for single-principal grants.
final class GoogleSpannerDatabaseIamPolicy extends Resource {
  static const String tfType = 'google_spanner_database_iam_policy';

  GoogleSpannerDatabaseIamPolicy({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> database,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'database': database,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerDatabaseIamPolicy>`.
  RefTo<GoogleSpannerDatabaseIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
