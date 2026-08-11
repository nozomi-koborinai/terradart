// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_image_iam_binding`.
const Set<String> _googleComputeImageIamBindingSensitive = <String>{};

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
    required TfArg<String> image,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image': image,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
