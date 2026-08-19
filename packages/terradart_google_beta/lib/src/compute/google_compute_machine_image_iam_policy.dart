// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeMachineImageIamPolicy({
    required super.localName,
    required TfArg<String> machineImage,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'machine_image': machineImage,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamPolicySensitive;
}
