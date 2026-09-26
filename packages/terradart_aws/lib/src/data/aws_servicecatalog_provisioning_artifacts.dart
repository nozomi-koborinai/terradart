// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicecatalog_provisioning_artifacts`.
const Set<String> _awsServicecatalogProvisioningArtifactsSensitive = <String>{};

/// Factory wrapper for `aws_servicecatalog_provisioning_artifacts`.
final class DataAwsServicecatalogProvisioningArtifacts extends Data {
  static const String tfType = 'aws_servicecatalog_provisioning_artifacts';

  DataAwsServicecatalogProvisioningArtifacts({
    required super.localName,
    TfArg<String>? acceptLanguage,
    required TfArg<String> productId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptLanguage != null) 'accept_language': acceptLanguage,
           'product_id': productId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicecatalogProvisioningArtifactsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provisioning_artifact_details` attribute.
  TfRef<List<Map<String, Object?>>> get provisioningArtifactDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'provisioning_artifact_details',
      );
}
