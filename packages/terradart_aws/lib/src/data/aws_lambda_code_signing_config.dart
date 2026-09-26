// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lambda_code_signing_config`.
const Set<String> _awsLambdaCodeSigningConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_code_signing_config`.
final class DataAwsLambdaCodeSigningConfig extends Data {
  static const String tfType = 'aws_lambda_code_signing_config';

  DataAwsLambdaCodeSigningConfig({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsLambdaCodeSigningConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_publishers` attribute.
  TfRef<List<Map<String, Object?>>> get allowedPublishers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'allowed_publishers');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `policies` attribute.
  TfRef<List<Map<String, Object?>>> get policies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'policies');
}
