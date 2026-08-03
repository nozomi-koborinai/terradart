// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_cluster_iam_policy`.
const Set<String> _googleDataprocClusterIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataproc_cluster_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc cluster.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataprocClusterIamMember] for single-principal grants.
/// Deferred with the never_apply Dataproc cluster (no apply-smoke
/// quickstart).
final class GoogleDataprocClusterIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_cluster_iam_policy';

  GoogleDataprocClusterIamPolicy({
    required super.localName,
    required TfArg<String> cluster,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
