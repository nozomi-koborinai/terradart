// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_type_compute_iam_binding`.
const Set<String> _googleIapWebTypeComputeIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_web_type_compute_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP Compute Engine
/// backends at **project scope** (`iap.web.type.compute`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebTypeComputeIamMember] for additive grants.
final class GoogleIapWebTypeComputeIamBinding extends Resource {
  static const String tfType = 'google_iap_web_type_compute_iam_binding';

  GoogleIapWebTypeComputeIamBinding({
    required super.localName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebTypeComputeIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
