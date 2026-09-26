// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_organization_conformance_pack`.
const Set<String> _awsConfigOrganizationConformancePackSensitive = <String>{};

/// Typed helper for the `input_parameter` block of
/// `aws_config_organization_conformance_pack` (derived from provider schema).
@immutable
final class ConfigOrganizationConformancePackInputParameter {
  const ConfigOrganizationConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_organization_conformance_pack`.
final class AwsConfigOrganizationConformancePack extends Resource {
  static const String tfType = 'aws_config_organization_conformance_pack';

  AwsConfigOrganizationConformancePack({
    required super.localName,
    TfArg<String>? deliveryS3Bucket,
    TfArg<String>? deliveryS3KeyPrefix,
    TfArg<List<String>>? excludedAccounts,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? templateBody,
    TfArg<String>? templateS3Uri,
    List<ConfigOrganizationConformancePackInputParameter>? inputParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deliveryS3Bucket != null) 'delivery_s3_bucket': deliveryS3Bucket,
           if (deliveryS3KeyPrefix != null)
             'delivery_s3_key_prefix': deliveryS3KeyPrefix,
           if (excludedAccounts != null) 'excluded_accounts': excludedAccounts,
           'name': name,
           if (region != null) 'region': region,
           if (templateBody != null) 'template_body': templateBody,
           if (templateS3Uri != null) 'template_s3_uri': templateS3Uri,
           if (inputParameter != null)
             'input_parameter': TfArg.literal([
               for (final e in inputParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConfigOrganizationConformancePackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
