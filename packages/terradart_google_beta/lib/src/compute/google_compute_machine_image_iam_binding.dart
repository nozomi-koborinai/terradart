// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_machine_image_iam_binding`.
const Set<String> _googleComputeMachineImageIamBindingSensitive = <String>{};

/// Factory wrapper for `google_compute_machine_image_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Machine Image.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeMachineImageIamMember] for additive grants.
final class GoogleComputeMachineImageIamBinding extends Resource {
  static const String tfType = 'google_compute_machine_image_iam_binding';

  GoogleComputeMachineImageIamBinding({
    required super.localName,
    required TfArg<String> machineImage,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'machine_image': machineImage,
           'members': members,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamBindingSensitive;
}
