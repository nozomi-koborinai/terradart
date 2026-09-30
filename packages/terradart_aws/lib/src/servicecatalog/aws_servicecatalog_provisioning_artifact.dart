// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_provisioning_artifact`.
const Set<String> _awsServicecatalogProvisioningArtifactSensitive = <String>{};

/// Servicecatalog Provisioning Artifact Accept enum for `accept_language`.
enum ServicecatalogProvisioningArtifactAcceptLanguage implements TerraformEnum {
  en('en'),
  jp('jp'),
  zh('zh');

  const ServicecatalogProvisioningArtifactAcceptLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicecatalog Provisioning Artifact enum for `guidance`.
enum ServicecatalogProvisioningArtifactGuidance implements TerraformEnum {
  defaultCase('DEFAULT'),
  deprecated('DEPRECATED');

  const ServicecatalogProvisioningArtifactGuidance(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicecatalog Provisioning Artifact enum for `type`.
enum ServicecatalogProvisioningArtifactType implements TerraformEnum {
  cloudFormationTemplate('CLOUD_FORMATION_TEMPLATE'),
  marketplaceAmi('MARKETPLACE_AMI'),
  marketplaceCar('MARKETPLACE_CAR'),
  terraformOpenSource('TERRAFORM_OPEN_SOURCE'),
  terraformCloud('TERRAFORM_CLOUD'),
  external('EXTERNAL');

  const ServicecatalogProvisioningArtifactType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `template_physical_id`, `template_url` on `aws_servicecatalog_provisioning_artifact`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.templatePhysicalId(...)`.
sealed class ServicecatalogProvisioningArtifactTemplate {
  const ServicecatalogProvisioningArtifactTemplate();

  /// Sets `template_physical_id`.
  const factory ServicecatalogProvisioningArtifactTemplate.templatePhysicalId(
    TfArg<String> templatePhysicalId,
  ) = ServicecatalogProvisioningArtifactTemplatePhysicalId;

  /// Sets `template_url`.
  const factory ServicecatalogProvisioningArtifactTemplate.templateUrl(
    TfArg<String> templateUrl,
  ) = ServicecatalogProvisioningArtifactTemplateUrl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ServicecatalogProvisioningArtifactTemplate.templatePhysicalId] choice: sets `template_physical_id`.
final class ServicecatalogProvisioningArtifactTemplatePhysicalId
    extends ServicecatalogProvisioningArtifactTemplate {
  const ServicecatalogProvisioningArtifactTemplatePhysicalId(
    this.templatePhysicalId,
  );

  final TfArg<String> templatePhysicalId;

  @override
  String get blockKey => 'template_physical_id';

  @override
  Map<String, Object?> encode() => {
    'template_physical_id': templatePhysicalId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'template_physical_id': templatePhysicalId,
  };
}

/// The [ServicecatalogProvisioningArtifactTemplate.templateUrl] choice: sets `template_url`.
final class ServicecatalogProvisioningArtifactTemplateUrl
    extends ServicecatalogProvisioningArtifactTemplate {
  const ServicecatalogProvisioningArtifactTemplateUrl(this.templateUrl);

  final TfArg<String> templateUrl;

  @override
  String get blockKey => 'template_url';

  @override
  Map<String, Object?> encode() => {'template_url': templateUrl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_url': templateUrl};
}

/// Factory wrapper for `aws_servicecatalog_provisioning_artifact`.
final class AwsServicecatalogProvisioningArtifact extends Resource {
  static const String tfType = 'aws_servicecatalog_provisioning_artifact';

  AwsServicecatalogProvisioningArtifact({
    required super.localName,
    TfArg<ServicecatalogProvisioningArtifactAcceptLanguage>? acceptLanguage,
    TfArg<bool>? active,
    TfArg<String>? description,
    TfArg<bool>? disableTemplateValidation,
    TfArg<ServicecatalogProvisioningArtifactGuidance>? guidance,
    TfArg<String>? name,
    required TfArg<String> productId,
    TfArg<String>? region,
    required ServicecatalogProvisioningArtifactTemplate template,
    TfArg<ServicecatalogProvisioningArtifactType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'active': ?active,
           'description': ?description,
           'disable_template_validation': ?disableTemplateValidation,
           'guidance': ?guidance,
           'name': ?name,
           'product_id': productId,
           'region': ?region,
           ...template.argMap,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogProvisioningArtifactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogProvisioningArtifact>`.
  RefTo<AwsServicecatalogProvisioningArtifact> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `provisioning_artifact_id` attribute.
  TfRef<String> get provisioningArtifactId =>
      TfRef.attribute<String>(this, 'provisioning_artifact_id');

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguageRef =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `active` attribute.
  TfRef<bool> get activeRef => TfRef.attribute<bool>(this, 'active');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_template_validation` attribute.
  TfRef<bool> get disableTemplateValidationRef =>
      TfRef.attribute<bool>(this, 'disable_template_validation');

  /// Reference to `guidance` attribute.
  TfRef<String> get guidanceRef => TfRef.attribute<String>(this, 'guidance');

  /// Reference to `product_id` attribute.
  TfRef<String> get productIdRef => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `template_physical_id` attribute.
  TfRef<String> get templatePhysicalIdRef =>
      TfRef.attribute<String>(this, 'template_physical_id');

  /// Reference to `template_url` attribute.
  TfRef<String> get templateUrlRef =>
      TfRef.attribute<String>(this, 'template_url');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
