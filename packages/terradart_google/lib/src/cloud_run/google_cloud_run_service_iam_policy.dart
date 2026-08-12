// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_service_iam_policy`.
const Set<String> _googleCloudRunServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_service_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Run (v1) service.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudRunServiceIamMember] for single-principal grants.
/// Prefer [GoogleCloudRunV2ServiceIamMember] for Cloud Run v2 services.
final class GoogleCloudRunServiceIamPolicy extends Resource {
  static const String tfType = 'google_cloud_run_service_iam_policy';

  GoogleCloudRunServiceIamPolicy({
    required super.localName,
    required TfArg<String> service,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
