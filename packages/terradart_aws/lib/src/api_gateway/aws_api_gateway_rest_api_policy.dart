// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api_policy`.
const Set<String> _awsApiGatewayRestApiPolicySensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_rest_api_policy`.
final class AwsApiGatewayRestApiPolicy extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api_policy';

  AwsApiGatewayRestApiPolicy(
    super.localName, {
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> restApiId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'region': ?region,
           'rest_api_id': restApiId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayRestApiPolicy>`.
  RefTo<AwsApiGatewayRestApiPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rest_api_id` attribute.
  TfRef<String> get restApiId => TfRef.attribute<String>(this, 'rest_api_id');
}
