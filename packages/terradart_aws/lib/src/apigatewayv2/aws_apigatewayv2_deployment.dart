// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_deployment`.
const Set<String> _awsApigatewayv2DeploymentSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_deployment`.
final class AwsApigatewayv2Deployment extends Resource {
  static const String tfType = 'aws_apigatewayv2_deployment';

  AwsApigatewayv2Deployment({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (triggers != null) 'triggers': triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2DeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_deployed` attribute.
  TfRef<bool> get autoDeployed => TfRef.attribute<bool>(this, 'auto_deployed');
}
