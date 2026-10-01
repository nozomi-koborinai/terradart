// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../clouddeploy/google_clouddeploy_delivery_pipeline.dart'
    show GoogleClouddeployDeliveryPipeline;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_clouddeploy_delivery_pipeline_iam_member`.
const Set<String> _googleClouddeployDeliveryPipelineIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_clouddeploy_delivery_pipeline_iam_member` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineIamMemberCondition {
  const ClouddeployDeliveryPipelineIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_clouddeploy_delivery_pipeline_iam_member`.
final class GoogleClouddeployDeliveryPipelineIamMember extends Resource {
  static const String tfType =
      'google_clouddeploy_delivery_pipeline_iam_member';

  GoogleClouddeployDeliveryPipelineIamMember({
    required super.localName,
    required RefTo<GoogleClouddeployDeliveryPipeline> deliveryPipeline,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    ClouddeployDeliveryPipelineIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': deliveryPipeline.encodeAs('name'),
           'role': role,
           'member': member,
           'location': ?(location ?? deliveryPipeline.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? deliveryPipeline.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeliveryPipelineIamMember>`.
  RefTo<GoogleClouddeployDeliveryPipelineIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
