// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instant_snapshot.dart'
    show GoogleComputeInstantSnapshot;

/// Sensitive field paths for `google_compute_instant_snapshot_iam_policy`.
const Set<String> _googleComputeInstantSnapshotIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_instant_snapshot_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine instant snapshot.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeInstantSnapshotIamMember] for single-principal grants.
final class GoogleComputeInstantSnapshotIamPolicy extends Resource {
  static const String tfType = 'google_compute_instant_snapshot_iam_policy';

  GoogleComputeInstantSnapshotIamPolicy({
    required super.localName,
    required RefTo<GoogleComputeInstantSnapshot> instantSnapshot,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instantSnapshot.encodeAs('name'),
           'policy_data': policyData,
           'zone': ?(zone ?? instantSnapshot.alsoAs('zone')),
           'project': ?(project ?? instantSnapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstantSnapshotIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstantSnapshotIamPolicy>`.
  RefTo<GoogleComputeInstantSnapshotIamPolicy> get ref => RefTo.of(this);

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

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
