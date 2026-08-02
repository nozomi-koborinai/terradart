// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_delivery_pipeline_iam_binding`.
const Set<String> _googleClouddeployDeliveryPipelineIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_clouddeploy_delivery_pipeline_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Deploy delivery
/// pipeline.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleClouddeployDeliveryPipelineIamMember] for additive grants.
final class GoogleClouddeployDeliveryPipelineIamBinding extends Resource {
  static const String tfType =
      'google_clouddeploy_delivery_pipeline_iam_binding';

  GoogleClouddeployDeliveryPipelineIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
