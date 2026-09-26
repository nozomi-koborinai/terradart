// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_identity_center_configuration`.
const Set<String> _awsLakeformationIdentityCenterConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_lakeformation_identity_center_configuration`.
final class AwsLakeformationIdentityCenterConfiguration extends Resource {
  static const String tfType =
      'aws_lakeformation_identity_center_configuration';

  AwsLakeformationIdentityCenterConfiguration({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> instanceArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           'instance_arn': instanceArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsLakeformationIdentityCenterConfigurationSensitive;

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `resource_share` attribute.
  TfRef<String> get resourceShare =>
      TfRef.attribute<String>(this, 'resource_share');
}
