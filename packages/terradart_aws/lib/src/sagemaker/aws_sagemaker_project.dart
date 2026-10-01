// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_project`.
const Set<String> _awsSagemakerProjectSensitive = <String>{};

/// Typed helper for the `service_catalog_provisioning_details` block of
/// `aws_sagemaker_project` (derived from provider schema).
@immutable
final class SagemakerProjectServiceCatalogProvisioningDetails {
  const SagemakerProjectServiceCatalogProvisioningDetails({
    this.pathId,
    required this.productId,
    this.provisioningArtifactId,
    this.provisioningParameter,
  });

  final TfArg<String>? pathId;

  final TfArg<String> productId;

  final TfArg<String>? provisioningArtifactId;

  final List<SagemakerProjectProvisioningParameter>? provisioningParameter;

  Map<String, Object?> encode() => {
    'path_id': ?pathId?.toTfJson(),
    'product_id': productId.toTfJson(),
    'provisioning_artifact_id': ?provisioningArtifactId?.toTfJson(),
    if (provisioningParameter != null)
      'provisioning_parameter': [
        for (final e in provisioningParameter!) e.encode(),
      ],
  };
}

/// Typed helper for the `service_catalog_provisioning_details.provisioning_parameter` block of
/// `aws_sagemaker_project` (derived from provider schema).
@immutable
final class SagemakerProjectProvisioningParameter {
  const SagemakerProjectProvisioningParameter({required this.key, this.value});

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_project`.
final class AwsSagemakerProject extends Resource {
  static const String tfType = 'aws_sagemaker_project';

  AwsSagemakerProject({
    required super.localName,
    TfArg<String>? projectDescription,
    required TfArg<String> projectName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required SagemakerProjectServiceCatalogProvisioningDetails
    serviceCatalogProvisioningDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project_description': ?projectDescription,
           'project_name': projectName,
           'region': ?region,
           'tags': ?tags,
           'service_catalog_provisioning_details': TfArg.literal(
             serviceCatalogProvisioningDetails.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerProject>`.
  RefTo<AwsSagemakerProject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `project_description` attribute.
  TfRef<String> get projectDescriptionRef =>
      TfRef.attribute<String>(this, 'project_description');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectNameRef =>
      TfRef.attribute<String>(this, 'project_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
