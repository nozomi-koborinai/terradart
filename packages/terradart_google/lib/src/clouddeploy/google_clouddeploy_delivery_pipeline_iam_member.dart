// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_delivery_pipeline_iam_member`.
const Set<String> _googleClouddeployDeliveryPipelineIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_clouddeploy_delivery_pipeline_iam_member`.
final class GoogleClouddeployDeliveryPipelineIamMember extends Resource {
  static const String tfType =
      'google_clouddeploy_delivery_pipeline_iam_member';

  GoogleClouddeployDeliveryPipelineIamMember({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineIamMemberSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
