// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_connection.dart'
    show GoogleBigqueryConnection;

/// Sensitive field paths for `google_bigquery_connection_iam_policy`.
const Set<String> _googleBigqueryConnectionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_bigquery_connection_iam_policy`.
///
/// Authoritative IAM policy for a BigQuery connection.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleBigqueryConnectionIamMember] for single-principal grants.
final class GoogleBigqueryConnectionIamPolicy extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_policy';

  GoogleBigqueryConnectionIamPolicy({
    required super.localName,
    required RefTo<GoogleBigqueryConnection> connection,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connection.encodeAs('connection_id'),
           'location': ?(location ?? connection.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? connection.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryConnectionIamPolicy>`.
  RefTo<GoogleBigqueryConnectionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
