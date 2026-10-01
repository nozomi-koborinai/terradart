// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambda/aws_lambda_code_signing_config.dart';

/// Sensitive field paths for `aws_lambda_code_signing_config`.
const Set<String> _awsLambdaCodeSigningConfigSensitive = <String>{};

/// Factory wrapper for `aws_lambda_code_signing_config`.
final class DataAwsLambdaCodeSigningConfig extends Data {
  static const String tfType = 'aws_lambda_code_signing_config';

  DataAwsLambdaCodeSigningConfig(
    super.localName, {
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsLambdaCodeSigningConfigSensitive;

  /// A reference to the `aws_lambda_code_signing_config` this data source reads, for
  /// arguments typed `RefTo<AwsLambdaCodeSigningConfig>`.
  RefTo<AwsLambdaCodeSigningConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
