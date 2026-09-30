// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_service_iam_policy`.
const Set<String> _googleCloudRunV2ServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_service_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Run v2 service.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleCloudRunV2ServiceIamMember] for single-principal grants.
final class GoogleCloudRunV2ServiceIamPolicy extends Resource {
  static const String tfType = 'google_cloud_run_v2_service_iam_policy';

  GoogleCloudRunV2ServiceIamPolicy({
    required super.localName,
    required TfArg<String> name,
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
           'name': name,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2ServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2ServiceIamPolicy>`.
  RefTo<GoogleCloudRunV2ServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
