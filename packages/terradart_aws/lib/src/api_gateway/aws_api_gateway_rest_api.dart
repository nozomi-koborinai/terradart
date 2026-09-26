// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api`.
const Set<String> _awsApiGatewayRestApiSensitive = <String>{};

/// Typed helper for the `endpoint_configuration` block of
/// `aws_api_gateway_rest_api` (derived from provider schema).
@immutable
final class ApiGatewayRestApiEndpointConfiguration {
  const ApiGatewayRestApiEndpointConfiguration({
    this.ipAddressType,
    required this.types,
    this.vpcEndpointIds,
  });

  final TfArg<String>? ipAddressType;

  final TfArg<List<Object?>> types;

  final TfArg<List<Object?>>? vpcEndpointIds;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    'types': types.toTfJson(),
    if (vpcEndpointIds != null) 'vpc_endpoint_ids': vpcEndpointIds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_rest_api`.
final class AwsApiGatewayRestApi extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api';

  AwsApiGatewayRestApi({
    required super.localName,
    TfArg<String>? apiKeySource,
    TfArg<List<String>>? binaryMediaTypes,
    TfArg<String>? body,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    TfArg<String>? endpointAccessMode,
    TfArg<bool>? failOnWarnings,
    TfArg<String>? minimumCompressionSize,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? policy,
    TfArg<String>? putRestApiMode,
    TfArg<String>? region,
    TfArg<String>? securityPolicy,
    TfArg<Map<String, String>>? tags,
    ApiGatewayRestApiEndpointConfiguration? endpointConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiKeySource != null) 'api_key_source': apiKeySource,
           if (binaryMediaTypes != null) 'binary_media_types': binaryMediaTypes,
           if (body != null) 'body': body,
           if (description != null) 'description': description,
           if (disableExecuteApiEndpoint != null)
             'disable_execute_api_endpoint': disableExecuteApiEndpoint,
           if (endpointAccessMode != null)
             'endpoint_access_mode': endpointAccessMode,
           if (failOnWarnings != null) 'fail_on_warnings': failOnWarnings,
           if (minimumCompressionSize != null)
             'minimum_compression_size': minimumCompressionSize,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (policy != null) 'policy': policy,
           if (putRestApiMode != null) 'put_rest_api_mode': putRestApiMode,
           if (region != null) 'region': region,
           if (securityPolicy != null) 'security_policy': securityPolicy,
           if (tags != null) 'tags': tags,
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal(
               endpointConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `execution_arn` attribute.
  TfRef<String> get executionArn =>
      TfRef.attribute<String>(this, 'execution_arn');

  /// Reference to `root_resource_id` attribute.
  TfRef<String> get rootResourceId =>
      TfRef.attribute<String>(this, 'root_resource_id');
}
