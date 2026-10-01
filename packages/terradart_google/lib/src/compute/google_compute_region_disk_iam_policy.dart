// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_disk.dart'
    show GoogleComputeRegionDisk;

/// Sensitive field paths for `google_compute_region_disk_iam_policy`.
const Set<String> _googleComputeRegionDiskIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_region_disk_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine regional disk.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeRegionDiskIamMember] for single-principal grants.
final class GoogleComputeRegionDiskIamPolicy extends Resource {
  static const String tfType = 'google_compute_region_disk_iam_policy';

  GoogleComputeRegionDiskIamPolicy({
    required super.localName,
    required RefTo<GoogleComputeRegionDisk> disk,
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
           'name': disk.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? disk.alsoAs('region')),
           'project': ?(project ?? disk.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionDiskIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionDiskIamPolicy>`.
  RefTo<GoogleComputeRegionDiskIamPolicy> get ref => RefTo.of(this);

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
