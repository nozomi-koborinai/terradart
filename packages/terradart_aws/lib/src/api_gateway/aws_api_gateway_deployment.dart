// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_deployment`.
const Set<String> _awsApiGatewayDeploymentSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_deployment`.
final class AwsApiGatewayDeployment extends Resource {
  static const String tfType = 'aws_api_gateway_deployment';

  AwsApiGatewayDeployment({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    TfArg<Map<String, String>>? triggers,
    TfArg<Map<String, String>>? variables,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'region': ?region,
           'rest_api_id': restApiId,
           'triggers': ?triggers,
           'variables': ?variables,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayDeployment>`.
  RefTo<AwsApiGatewayDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');
}
