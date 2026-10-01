// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_machine_image.dart'
    show GoogleComputeMachineImage;

/// Sensitive field paths for `google_compute_machine_image_iam_policy`.
const Set<String> _googleComputeMachineImageIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_machine_image_iam_policy`.
///
/// Authoritative IAM policy for a Compute Machine Image.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeMachineImageIamMember] for additive grants.
final class GoogleComputeMachineImageIamPolicy extends Resource {
  static const String tfType = 'google_compute_machine_image_iam_policy';

  GoogleComputeMachineImageIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeMachineImage> machineImage,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'machine_image': machineImage.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? machineImage.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamPolicySensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeMachineImageIamPolicy>`.
  RefTo<GoogleComputeMachineImageIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `machine_image` attribute.
  TfRef<String> get machineImage =>
      TfRef.attribute<String>(this, 'machine_image');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
