// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show IamPrincipal;
import '../compute/google_compute_machine_image.dart'
    show GoogleComputeMachineImage;

/// Sensitive field paths for `google_compute_machine_image_iam_binding`.
const Set<String> _googleComputeMachineImageIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_machine_image_iam_binding` (derived from provider schema).
@immutable
final class ComputeMachineImageIamBindingCondition {
  const ComputeMachineImageIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_machine_image_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Machine Image.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeMachineImageIamMember] for additive grants.
final class GoogleComputeMachineImageIamBinding extends Resource {
  static const String tfType = 'google_compute_machine_image_iam_binding';

  GoogleComputeMachineImageIamBinding(
    super.localName, {
    required RefTo<GoogleComputeMachineImage> machineImage,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    required TfArg<String> role,
    ComputeMachineImageIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'machine_image': machineImage.encodeAs('name'),
           'members': members,
           'project': ?(project ?? machineImage.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeMachineImageIamBindingSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeMachineImageIamBinding>`.
  RefTo<GoogleComputeMachineImageIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `machine_image` attribute.
  TfRef<String> get machineImage =>
      TfRef.attribute<String>(this, 'machine_image');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
