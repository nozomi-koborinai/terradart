// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api_put`.
const Set<String> _awsApiGatewayRestApiPutSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_rest_api_put`.
final class AwsApiGatewayRestApiPut extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api_put';

  AwsApiGatewayRestApiPut(
    super.localName, {
    required TfArg<String> body,
    TfArg<bool>? failOnWarnings,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'body': body,
           'fail_on_warnings': ?failOnWarnings,
           'parameters': ?parameters,
           'region': ?region,
           'rest_api_id': restApiId,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiPutSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayRestApiPut>`.
  RefTo<AwsApiGatewayRestApiPut> get ref => RefTo.of(this);

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `fail_on_warnings` attribute.
  TfRef<bool> get failOnWarnings =>
      TfRef.attribute<bool>(this, 'fail_on_warnings');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
