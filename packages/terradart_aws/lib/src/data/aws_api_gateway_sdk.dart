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
           'parameters': ?parameters,
           'region': ?region,
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

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `sdk_type` attribute.
  TfRef<String> get sdkType => TfRef.attribute<String>(this, 'sdk_type');

  /// Reference to `stage_name` attribute.
  TfRef<String> get stageName => TfRef.attribute<String>(this, 'stage_name');
}
