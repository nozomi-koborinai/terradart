// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_machine_image_iam_member`.
const Set<String> _googleComputeMachineImageIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_machine_image_iam_member` (derived from provider schema).
@immutable
final class ComputeMachineImageIamMemberCondition {
  const ComputeMachineImageIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_machine_image_iam_member`.
final class GoogleComputeMachineImageIamMember extends Resource {
  static const String tfType = 'google_compute_machine_image_iam_member';

  GoogleComputeMachineImageIamMember({
    required super.localName,
    required TfArg<String> machineImage,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    ComputeMachineImageIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'machine_image': machineImage,
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
