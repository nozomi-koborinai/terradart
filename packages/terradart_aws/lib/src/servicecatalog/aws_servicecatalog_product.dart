// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_product`.
const Set<String> _awsServicecatalogProductSensitive = <String>{};

/// Servicecatalog Product Accept enum for `accept_language`.
enum ServicecatalogProductAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogProductAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicecatalog Product enum for `type`.
enum ServicecatalogProductType implements TerraformEnum {
  cloudFormationTemplate('CLOUD_FORMATION_TEMPLATE'),
  marketplace('MARKETPLACE'),
  terraformOpenSource('TERRAFORM_OPEN_SOURCE'),
  terraformCloud('TERRAFORM_CLOUD'),
  external('EXTERNAL');

  const ServicecatalogProductType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `provisioning_artifact_parameters` block of
/// `aws_servicecatalog_product` (derived from provider schema).
@immutable
final class ServicecatalogProductProvisioningArtifactParameters {
  const ServicecatalogProductProvisioningArtifactParameters({
    this.description,
    this.disableTemplateValidation,
    this.name,
    this.templatePhysicalId,
    this.templateUrl,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disableTemplateValidation;

  final TfArg<String>? name;

  final TfArg<String>? templatePhysicalId;

  final TfArg<String>? templateUrl;

  final TfArg<ServicecatalogProductProvisioningArtifactParametersType>? type;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disableTemplateValidation != null)
      'disable_template_validation': disableTemplateValidation!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (templatePhysicalId != null)
      'template_physical_id': templatePhysicalId!.toTfJson(),
    if (templateUrl != null) 'template_url': templateUrl!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ServicecatalogProductProvisioningArtifactParametersType
    implements TerraformEnum {
  cloudFormationTemplate('CLOUD_FORMATION_TEMPLATE'),
  marketplaceAmi('MARKETPLACE_AMI'),
  marketplaceCar('MARKETPLACE_CAR'),
  terraformOpenSource('TERRAFORM_OPEN_SOURCE'),
  terraformCloud('TERRAFORM_CLOUD'),
  external('EXTERNAL');

  const ServicecatalogProductProvisioningArtifactParametersType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicecatalog_product`.
final class AwsServicecatalogProduct extends Resource {
  static const String tfType = 'aws_servicecatalog_product';

  AwsServicecatalogProduct({
    required super.localName,
    TfArg<ServicecatalogProductAcceptLanguage>? acceptLanguage,
    TfArg<String>? description,
    TfArg<String>? distributor,
    required TfArg<String> name,
    required TfArg<String> owner,
    TfArg<String>? region,
    TfArg<String>? supportDescription,
    TfArg<String>? supportEmail,
    TfArg<String>? supportUrl,
    TfArg<Map<String, String>>? tags,
    required TfArg<ServicecatalogProductType> type,
    required ServicecatalogProductProvisioningArtifactParameters
    provisioningArtifactParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           if (description != null) 'description': description,
           if (distributor != null) 'distributor': distributor,
           'name': name,
           'owner': owner,
           if (region != null) 'region': region,
           if (supportDescription != null)
             'support_description': supportDescription,
           if (supportEmail != null) 'support_email': supportEmail,
           if (supportUrl != null) 'support_url': supportUrl,
           if (tags != null) 'tags': tags,
           'type': type,
           'provisioning_artifact_parameters': TfArg.literal(
             provisioningArtifactParameters.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogProductSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `has_default_path` attribute.
  TfRef<bool> get hasDefaultPath =>
      TfRef.attribute<bool>(this, 'has_default_path');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
