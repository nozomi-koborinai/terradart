// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_machine_image_iam_member`.
const Set<String> _googleComputeMachineImageIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_machine_image_iam_member`.
final class GoogleComputeMachineImageIamMember extends Resource {
  static const String tfType = 'google_compute_machine_image_iam_member';

  GoogleComputeMachineImageIamMember({
    required super.localName,
    required TfArg<String> machineImage,
    required TfArg<String> member,
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
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamMemberSensitive;
}
