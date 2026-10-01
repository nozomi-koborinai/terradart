// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_product`.
const Set<String> _awsServicecatalogProductSensitive = <String>{};

/// Servicecatalog Product Accept enum for `accept_language`.
extension type const ServicecatalogProductAcceptLanguage._(TfArg<String> _)
    implements TfArg<String> {
  ServicecatalogProductAcceptLanguage.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogProductAcceptLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogProductAcceptLanguage.arg(TfArg<String> arg)
    : this._(arg);

  static const en = ServicecatalogProductAcceptLanguage._(TfArgLiteral('en'));
  static const jp = ServicecatalogProductAcceptLanguage._(TfArgLiteral('jp'));
  static const zh = ServicecatalogProductAcceptLanguage._(TfArgLiteral('zh'));

  static const List<ServicecatalogProductAcceptLanguage> values = [en, jp, zh];
}

/// Servicecatalog Product enum for `type`.
extension type const ServicecatalogProductType._(TfArg<String> _)
    implements TfArg<String> {
  ServicecatalogProductType.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogProductType.expression(String template)
    : this._(TfArg.expression(template));
  const ServicecatalogProductType.arg(TfArg<String> arg) : this._(arg);

  static const cloudFormationTemplate = ServicecatalogProductType._(
    TfArgLiteral('CLOUD_FORMATION_TEMPLATE'),
  );
  static const marketplace = ServicecatalogProductType._(
    TfArgLiteral('MARKETPLACE'),
  );
  static const terraformOpenSource = ServicecatalogProductType._(
    TfArgLiteral('TERRAFORM_OPEN_SOURCE'),
  );
  static const terraformCloud = ServicecatalogProductType._(
    TfArgLiteral('TERRAFORM_CLOUD'),
  );
  static const external = ServicecatalogProductType._(TfArgLiteral('EXTERNAL'));

  static const List<ServicecatalogProductType> values = [
    cloudFormationTemplate,
    marketplace,
    terraformOpenSource,
    terraformCloud,
    external,
  ];
}

/// Typed helper for the `provisioning_artifact_parameters` block of
/// `aws_servicecatalog_product` (derived from provider schema).
@immutable
final class ServicecatalogProductProvisioningArtifactParameters {
  const ServicecatalogProductProvisioningArtifactParameters({
    this.description,
    this.disableTemplateValidation,
    this.name,
    required this.template,
    this.type,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disableTemplateValidation;

  final TfArg<String>? name;

  final ServicecatalogProductTemplate template;

  final ServicecatalogProductProvisioningArtifactParametersType? type;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'disable_template_validation': ?disableTemplateValidation?.toTfJson(),
    'name': ?name?.toTfJson(),
    ...template.encode(),
    'type': ?type?.toTfJson(),
  };
}

/// Exactly one of `template_physical_id`, `template_url` on the `provisioning_artifact_parameters` block of `aws_servicecatalog_product`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.templatePhysicalId(...)`.
sealed class ServicecatalogProductTemplate {
  const ServicecatalogProductTemplate();

  /// Sets `template_physical_id`.
  const factory ServicecatalogProductTemplate.templatePhysicalId(
    TfArg<String> templatePhysicalId,
  ) = ServicecatalogProductTemplatePhysicalId;

  /// Sets `template_url`.
  const factory ServicecatalogProductTemplate.templateUrl(
    TfArg<String> templateUrl,
  ) = ServicecatalogProductTemplateUrl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ServicecatalogProductTemplate.templatePhysicalId] choice: sets `template_physical_id`.
final class ServicecatalogProductTemplatePhysicalId
    extends ServicecatalogProductTemplate {
  const ServicecatalogProductTemplatePhysicalId(this.templatePhysicalId);

  final TfArg<String> templatePhysicalId;

  @override
  String get blockKey => 'template_physical_id';

  @override
  Map<String, Object?> encode() => {
    'template_physical_id': templatePhysicalId.toTfJson(),
  };
}

/// The [ServicecatalogProductTemplate.templateUrl] choice: sets `template_url`.
final class ServicecatalogProductTemplateUrl
    extends ServicecatalogProductTemplate {
  const ServicecatalogProductTemplateUrl(this.templateUrl);

  final TfArg<String> templateUrl;

  @override
  String get blockKey => 'template_url';

  @override
  Map<String, Object?> encode() => {'template_url': templateUrl.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ServicecatalogProductProvisioningArtifactParametersType._(
  TfArg<String> _
) implements TfArg<String> {
  ServicecatalogProductProvisioningArtifactParametersType.variable(String name)
    : this._(TfArg.variable(name));
  ServicecatalogProductProvisioningArtifactParametersType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ServicecatalogProductProvisioningArtifactParametersType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cloudFormationTemplate =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('CLOUD_FORMATION_TEMPLATE'),
      );
  static const marketplaceAmi =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('MARKETPLACE_AMI'),
      );
  static const marketplaceCar =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('MARKETPLACE_CAR'),
      );
  static const terraformOpenSource =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('TERRAFORM_OPEN_SOURCE'),
      );
  static const terraformCloud =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('TERRAFORM_CLOUD'),
      );
  static const external =
      ServicecatalogProductProvisioningArtifactParametersType._(
        TfArgLiteral('EXTERNAL'),
      );

  static const List<ServicecatalogProductProvisioningArtifactParametersType>
  values = [
    cloudFormationTemplate,
    marketplaceAmi,
    marketplaceCar,
    terraformOpenSource,
    terraformCloud,
    external,
  ];
}

/// Factory wrapper for `aws_servicecatalog_product`.
final class AwsServicecatalogProduct extends Resource {
  static const String tfType = 'aws_servicecatalog_product';

  AwsServicecatalogProduct(
    super.localName, {
    ServicecatalogProductAcceptLanguage? acceptLanguage,
    TfArg<String>? description,
    TfArg<String>? distributor,
    required TfArg<String> name,
    required TfArg<String> owner,
    TfArg<String>? region,
    TfArg<String>? supportDescription,
    TfArg<String>? supportEmail,
    TfArg<String>? supportUrl,
    TfArg<Map<String, String>>? tags,
    required ServicecatalogProductType type,
    required ServicecatalogProductProvisioningArtifactParameters
    provisioningArtifactParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_language': ?acceptLanguage,
           'description': ?description,
           'distributor': ?distributor,
           'name': name,
           'owner': owner,
           'region': ?region,
           'support_description': ?supportDescription,
           'support_email': ?supportEmail,
           'support_url': ?supportUrl,
           'tags': ?tags,
           'type': type,
           'provisioning_artifact_parameters': TfArg.literal(
             provisioningArtifactParameters.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicecatalogProductSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicecatalogProduct>`.
  RefTo<AwsServicecatalogProduct> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `accept_language` attribute.
  TfRef<String> get acceptLanguage =>
      TfRef.attribute<String>(this, 'accept_language');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distributor` attribute.
  TfRef<String> get distributor => TfRef.attribute<String>(this, 'distributor');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `support_description` attribute.
  TfRef<String> get supportDescription =>
      TfRef.attribute<String>(this, 'support_description');

  /// Reference to `support_email` attribute.
  TfRef<String> get supportEmail =>
      TfRef.attribute<String>(this, 'support_email');

  /// Reference to `support_url` attribute.
  TfRef<String> get supportUrl => TfRef.attribute<String>(this, 'support_url');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
