// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataproc/google_dataproc_cluster.dart' show GoogleDataprocCluster;

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

  GoogleDataprocClusterIamPolicy(
    super.localName, {
    required RefTo<GoogleDataprocCluster> cluster,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? cluster.alsoAs('region')),
           'project': ?(project ?? cluster.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocClusterIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocClusterIamPolicy>`.
  RefTo<GoogleDataprocClusterIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
