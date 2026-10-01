// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_snapshot.dart' show GoogleComputeSnapshot;

/// Sensitive field paths for `google_compute_snapshot_iam_policy`.
const Set<String> _googleComputeSnapshotIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_snapshot_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine snapshot.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeSnapshotIamMember] for single-principal grants.
final class GoogleComputeSnapshotIamPolicy extends Resource {
  static const String tfType = 'google_compute_snapshot_iam_policy';

  GoogleComputeSnapshotIamPolicy({
    required super.localName,
    required RefTo<GoogleComputeSnapshot> snapshot,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': snapshot.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? snapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSnapshotIamPolicy>`.
  RefTo<GoogleComputeSnapshotIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
