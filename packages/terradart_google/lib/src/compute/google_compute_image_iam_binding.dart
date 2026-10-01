// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_image.dart' show GoogleComputeImage;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_compute_image_iam_binding`.
const Set<String> _googleComputeImageIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_compute_image_iam_binding` (derived from provider schema).
@immutable
final class ComputeImageIamBindingCondition {
  const ComputeImageIamBindingCondition({
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

/// Factory wrapper for `google_compute_image_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Engine image.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeImageIamMember] for additive grants.
final class GoogleComputeImageIamBinding extends Resource {
  static const String tfType = 'google_compute_image_iam_binding';

  GoogleComputeImageIamBinding({
    required super.localName,
    required RefTo<GoogleComputeImage> image,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    ComputeImageIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image': image.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? image.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeImageIamBinding>`.
  RefTo<GoogleComputeImageIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `image` attribute.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
