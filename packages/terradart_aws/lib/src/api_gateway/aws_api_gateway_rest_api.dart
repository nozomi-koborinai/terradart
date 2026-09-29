// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api`.
const Set<String> _awsApiGatewayRestApiSensitive = <String>{};

/// Api Gateway Rest Api Api Key enum for `api_key_source`.
enum ApiGatewayRestApiApiKeySource implements TerraformEnum {
  header('HEADER'),
  authorizer('AUTHORIZER');

  const ApiGatewayRestApiApiKeySource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Rest Api Endpoint Access enum for `endpoint_access_mode`.
enum ApiGatewayRestApiEndpointAccessMode implements TerraformEnum {
  basic('BASIC'),
  strict('STRICT');

  const ApiGatewayRestApiEndpointAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Rest Api Put Rest Api enum for `put_rest_api_mode`.
enum ApiGatewayRestApiPutRestApiMode implements TerraformEnum {
  merge('merge'),
  overwrite('overwrite');

  const ApiGatewayRestApiPutRestApiMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Rest Api Security enum for `security_policy`.
enum ApiGatewayRestApiSecurityPolicy implements TerraformEnum {
  tls10('TLS_1_0'),
  tls12('TLS_1_2'),
  securitypolicyTls1313202509('SecurityPolicy_TLS13_1_3_2025_09'),
  securitypolicyTls1313Fips202509('SecurityPolicy_TLS13_1_3_FIPS_2025_09'),
  securitypolicyTls1312PfsPq202509('SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09'),
  securitypolicyTls1312FipsPq202509('SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09'),
  securitypolicyTls1312FipsPfsPq202509(
    'SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09',
  ),
  securitypolicyTls1312Pq202509('SecurityPolicy_TLS13_1_2_PQ_2025_09'),
  securitypolicyTls1312202106('SecurityPolicy_TLS13_1_2_2021_06'),
  securitypolicyTls132025Edge('SecurityPolicy_TLS13_2025_EDGE'),
  securitypolicyTls12Pfs2025Edge('SecurityPolicy_TLS12_PFS_2025_EDGE'),
  securitypolicyTls122018Edge('SecurityPolicy_TLS12_2018_EDGE');

  const ApiGatewayRestApiSecurityPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_configuration` block of
/// `aws_api_gateway_rest_api` (derived from provider schema).
@immutable
final class ApiGatewayRestApiEndpointConfiguration {
  const ApiGatewayRestApiEndpointConfiguration({
    this.ipAddressType,
    required this.types,
    this.vpcEndpointIds,
  });

  final TfArg<ApiGatewayRestApiEndpointConfigurationIpAddressType>?
  ipAddressType;

  final List<TfArg<ApiGatewayRestApiEndpointConfigurationTypes>> types;

  final TfArg<List<Object?>>? vpcEndpointIds;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'types': [for (final e in types) e.toTfJson()],
    'vpc_endpoint_ids': ?vpcEndpointIds?.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum ApiGatewayRestApiEndpointConfigurationIpAddressType
    implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack');

  const ApiGatewayRestApiEndpointConfigurationIpAddressType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum ApiGatewayRestApiEndpointConfigurationTypes implements TerraformEnum {
  regional('REGIONAL'),
  edge('EDGE'),
  private('PRIVATE');

  const ApiGatewayRestApiEndpointConfigurationTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_api_gateway_rest_api`.
final class AwsApiGatewayRestApi extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api';

  AwsApiGatewayRestApi({
    required super.localName,
    TfArg<ApiGatewayRestApiApiKeySource>? apiKeySource,
    TfArg<List<String>>? binaryMediaTypes,
    TfArg<String>? body,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    TfArg<ApiGatewayRestApiEndpointAccessMode>? endpointAccessMode,
    TfArg<bool>? failOnWarnings,
    TfArg<String>? minimumCompressionSize,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? policy,
    TfArg<ApiGatewayRestApiPutRestApiMode>? putRestApiMode,
    TfArg<String>? region,
    TfArg<ApiGatewayRestApiSecurityPolicy>? securityPolicy,
    TfArg<Map<String, String>>? tags,
    ApiGatewayRestApiEndpointConfiguration? endpointConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key_source': ?apiKeySource,
           'binary_media_types': ?binaryMediaTypes,
           'body': ?body,
           'description': ?description,
           'disable_execute_api_endpoint': ?disableExecuteApiEndpoint,
           'endpoint_access_mode': ?endpointAccessMode,
           'fail_on_warnings': ?failOnWarnings,
           'minimum_compression_size': ?minimumCompressionSize,
           'name': name,
           'parameters': ?parameters,
           'policy': ?policy,
           'put_rest_api_mode': ?putRestApiMode,
           'region': ?region,
           'security_policy': ?securityPolicy,
           'tags': ?tags,
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal(
               endpointConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayRestApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayRestApi>`.
  RefTo<AwsApiGatewayRestApi> get ref => RefTo.of(this);

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
