// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../clouddeploy/google_clouddeploy_delivery_pipeline.dart'
    show GoogleClouddeployDeliveryPipeline;

/// Sensitive field paths for `google_clouddeploy_delivery_pipeline_iam_policy`.
const Set<String> _googleClouddeployDeliveryPipelineIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_clouddeploy_delivery_pipeline_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Deploy delivery pipeline.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleClouddeployDeliveryPipelineIamMember] for single-principal grants.
final class GoogleClouddeployDeliveryPipelineIamPolicy extends Resource {
  static const String tfType =
      'google_clouddeploy_delivery_pipeline_iam_policy';

  GoogleClouddeployDeliveryPipelineIamPolicy({
    required super.localName,
    required RefTo<GoogleClouddeployDeliveryPipeline> deliveryPipeline,
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
           'name': deliveryPipeline.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? deliveryPipeline.alsoAs('location')),
           'project': ?(project ?? deliveryPipeline.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeliveryPipelineIamPolicy>`.
  RefTo<GoogleClouddeployDeliveryPipelineIamPolicy> get ref => RefTo.of(this);

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
