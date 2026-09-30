// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'name': name,
           'role': role,
           'member': member,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeliveryPipelineIamMember>`.
  RefTo<GoogleClouddeployDeliveryPipelineIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
