// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_sdk`.
const Set<String> _awsApiGatewaySdkSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_sdk`.
final class DataAwsApiGatewaySdk extends Data {
  static const String tfType = 'aws_api_gateway_sdk';

  DataAwsApiGatewaySdk({
    required super.localName,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    required TfArg<String> sdkType,
    required TfArg<String> stageName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           'rest_api_id': restApiId,
           'sdk_type': sdkType,
           'stage_name': stageName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewaySdkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');
}
