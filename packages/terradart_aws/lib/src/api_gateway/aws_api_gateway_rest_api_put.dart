// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api_put`.
const Set<String> _awsApiGatewayRestApiPutSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_rest_api_put`.
final class AwsApiGatewayRestApiPut extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api_put';

  AwsApiGatewayRestApiPut({
    required super.localName,
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
}
