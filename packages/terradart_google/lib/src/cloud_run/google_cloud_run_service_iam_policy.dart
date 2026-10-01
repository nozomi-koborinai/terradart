// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_service.dart' show GoogleCloudRunService;

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
    required RefTo<GoogleCloudRunService> service,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? service.alsoAs('location')),
           'project': ?(project ?? service.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunServiceIamPolicy>`.
  RefTo<GoogleCloudRunServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');
}
