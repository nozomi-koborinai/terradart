// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_image_iam_policy`.
const Set<String> _googleComputeImageIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_image_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine image.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeImageIamMember] for single-principal grants.
final class GoogleComputeImageIamPolicy extends Resource {
  static const String tfType = 'google_compute_image_iam_policy';

  GoogleComputeImageIamPolicy({
    required super.localName,
    required TfArg<String> image,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image': image,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
