// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstantSnapshotIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
