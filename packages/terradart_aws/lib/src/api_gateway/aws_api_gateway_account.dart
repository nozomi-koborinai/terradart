// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_account`.
const Set<String> _awsApiGatewayAccountSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_account`.
final class AwsApiGatewayAccount extends Resource {
  static const String tfType = 'aws_api_gateway_account';

  AwsApiGatewayAccount({
    required super.localName,
    TfArg<String>? cloudwatchRoleArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cloudwatchRoleArn != null)
             'cloudwatch_role_arn': cloudwatchRoleArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key_version` attribute.
  TfRef<String> get apiKeyVersion =>
      TfRef.attribute<String>(this, 'api_key_version');

  /// Reference to `features` attribute.
  TfRef<List<String>> get features =>
      TfRef.attribute<List<String>>(this, 'features');

  /// Reference to `throttle_settings` attribute.
  TfRef<List<Map<String, Object?>>> get throttleSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'throttle_settings');
}
