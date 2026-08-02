// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_iam_policy`.
const Set<String> _googleComputeInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_instance_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleComputeInstanceIamMember] for single-principal grants.
final class GoogleComputeInstanceIamPolicy extends Resource {
  static const String tfType = 'google_compute_instance_iam_policy';

  GoogleComputeInstanceIamPolicy({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'policy_data': policyData,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
