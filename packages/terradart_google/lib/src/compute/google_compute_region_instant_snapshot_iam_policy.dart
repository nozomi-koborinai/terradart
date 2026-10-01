// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_instant_snapshot.dart'
    show GoogleComputeRegionInstantSnapshot;

/// Sensitive field paths for `google_compute_region_instant_snapshot_iam_policy`.
const Set<String> _googleComputeRegionInstantSnapshotIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_instant_snapshot_iam_policy`.
///
/// Authoritative IAM policy for a regional instant snapshot.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleComputeRegionInstantSnapshotIamMember] for single-principal grants.
final class GoogleComputeRegionInstantSnapshotIamPolicy extends Resource {
  static const String tfType =
      'google_compute_region_instant_snapshot_iam_policy';

  GoogleComputeRegionInstantSnapshotIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeRegionInstantSnapshot> instantSnapshot,
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
           'name': instantSnapshot.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? instantSnapshot.alsoAs('region')),
           'project': ?(project ?? instantSnapshot.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstantSnapshotIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstantSnapshotIamPolicy>`.
  RefTo<GoogleComputeRegionInstantSnapshotIamPolicy> get ref => RefTo.of(this);

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
