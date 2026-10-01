// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../spanner/google_spanner_database.dart' show GoogleSpannerDatabase;

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

  GoogleSpannerDatabaseIamPolicy(
    super.localName, {
    TfArg<String>? instance,
    required RefTo<GoogleSpannerDatabase> database,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': ?(instance ?? database.alsoAs('instance')),
           'database': database.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? database.alsoAs('project')),
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
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
