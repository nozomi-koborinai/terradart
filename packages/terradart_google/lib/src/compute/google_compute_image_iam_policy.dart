// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_image.dart' show GoogleComputeImage;

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
    required RefTo<GoogleComputeImage> image,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'image': image.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? image.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeImageIamPolicy>`.
  RefTo<GoogleComputeImageIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `image` attribute.
  TfRef<String> get imageRef => TfRef.attribute<String>(this, 'image');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
