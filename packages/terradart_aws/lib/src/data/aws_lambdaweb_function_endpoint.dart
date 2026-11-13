// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../lambdaweb/aws_lambdaweb_function_endpoint.dart';
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_lambdaweb_function_endpoint`.
const Set<String> _awsLambdawebFunctionEndpointSensitive = <String>{};

/// Factory wrapper for `aws_lambdaweb_function_endpoint`.
final class DataAwsLambdawebFunctionEndpoint extends Data {
  static const String tfType = 'aws_lambdaweb_function_endpoint';

  DataAwsLambdawebFunctionEndpoint(
    super.localName, {
    required TfArg<String> endpointName,
    required RefTo<AwsLambdaFunction> functionName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_name': endpointName,
           'function_name': functionName.encodeAs('function_name'),
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdawebFunctionEndpointSensitive;

  /// A reference to the `aws_lambdaweb_function_endpoint` this data source reads, for
  /// arguments typed `RefTo<AwsLambdawebFunctionEndpoint>`.
  RefTo<AwsLambdawebFunctionEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `auto_deployment_mode` attribute.
  TfRef<String> get autoDeploymentMode =>
      TfRef.attribute<String>(this, 'auto_deployment_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `regional_domain_names` attribute.
  TfRef<Map<String, String>> get regionalDomainNames =>
      TfRef.attribute<Map<String, String>>(this, 'regional_domain_names');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `revision_weights` attribute.
  TfRef<List<Map<String, Object?>>> get revisionWeights =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'revision_weights');

  /// Reference to `scaling_config` attribute.
  TfRef<List<Map<String, Object?>>> get scalingConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scaling_config');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');

  /// Reference to `throttle_config` attribute.
  TfRef<List<Map<String, Object?>>> get throttleConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'throttle_config');

  /// Reference to `endpoint_name` attribute.
  TfRef<String> get endpointName =>
      TfRef.attribute<String>(this, 'endpoint_name');

  /// Reference to `function_name` attribute.
  TfRef<String> get functionName =>
      TfRef.attribute<String>(this, 'function_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
