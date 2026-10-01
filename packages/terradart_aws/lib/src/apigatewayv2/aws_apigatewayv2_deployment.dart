// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_deployment`.
const Set<String> _awsApigatewayv2DeploymentSensitive = <String>{};

/// Factory wrapper for `aws_apigatewayv2_deployment`.
final class AwsApigatewayv2Deployment extends Resource {
  static const String tfType = 'aws_apigatewayv2_deployment';

  AwsApigatewayv2Deployment(
    super.localName, {
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
           'description': ?description,
           'region': ?region,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2DeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2Deployment>`.
  RefTo<AwsApigatewayv2Deployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_deployed` attribute.
  TfRef<bool> get autoDeployed => TfRef.attribute<bool>(this, 'auto_deployed');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
