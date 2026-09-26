// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_provisioning_artifact`.
const Set<String> _awsServicecatalogProvisioningArtifactSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_provisioning_artifact`.
final class AwsServicecatalogProvisioningArtifact extends Resource {
  static const String tfType = 'aws_servicecatalog_provisioning_artifact';

  AwsServicecatalogProvisioningArtifact({
    required super.localName,
    TfArg<String>? acceptLanguage,
    TfArg<bool>? active,
    TfArg<String>? description,
    TfArg<bool>? disableTemplateValidation,
    TfArg<String>? guidance,
    TfArg<String>? name,
    required TfArg<String> productId,
    TfArg<String>? region,
    TfArg<String>? templatePhysicalId,
    TfArg<String>? templateUrl,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           if (active != null) 'active': active,
           if (description != null) 'description': description,
           if (disableTemplateValidation != null)
             'disable_template_validation': disableTemplateValidation,
           if (guidance != null) 'guidance': guidance,
           if (name != null) 'name': name,
           'product_id': productId,
           if (region != null) 'region': region,
           if (templatePhysicalId != null)
             'template_physical_id': templatePhysicalId,
           if (templateUrl != null) 'template_url': templateUrl,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogProvisioningArtifactSensitive;

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
}
