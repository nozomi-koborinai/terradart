// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_rest_api`.
const Set<String> _awsApiGatewayRestApiSensitive = <String>{};

/// Api Gateway Rest Api Key enum for `api_key_source`.
extension type const ApiGatewayRestApiKeySource._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiKeySource.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayRestApiKeySource.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiKeySource.arg(TfArg<String> arg) : this._(arg);

  static const header = ApiGatewayRestApiKeySource._(TfArgLiteral('HEADER'));
  static const authorizer = ApiGatewayRestApiKeySource._(
    TfArgLiteral('AUTHORIZER'),
  );

  static const List<ApiGatewayRestApiKeySource> values = [header, authorizer];
}

/// Api Gateway Rest Api Endpoint Access enum for `endpoint_access_mode`.
extension type const ApiGatewayRestApiEndpointAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiEndpointAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayRestApiEndpointAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiEndpointAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = ApiGatewayRestApiEndpointAccessMode._(
    TfArgLiteral('BASIC'),
  );
  static const strict = ApiGatewayRestApiEndpointAccessMode._(
    TfArgLiteral('STRICT'),
  );

  static const List<ApiGatewayRestApiEndpointAccessMode> values = [
    basic,
    strict,
  ];
}

/// Api Gateway Rest Api Put Rest Api enum for `put_rest_api_mode`.
extension type const ApiGatewayRestApiPutRestApiMode._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiPutRestApiMode.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayRestApiPutRestApiMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiPutRestApiMode.arg(TfArg<String> arg) : this._(arg);

  static const merge = ApiGatewayRestApiPutRestApiMode._(TfArgLiteral('merge'));
  static const overwrite = ApiGatewayRestApiPutRestApiMode._(
    TfArgLiteral('overwrite'),
  );

  static const List<ApiGatewayRestApiPutRestApiMode> values = [
    merge,
    overwrite,
  ];
}

/// Api Gateway Rest Api Security enum for `security_policy`.
extension type const ApiGatewayRestApiSecurityPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiSecurityPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayRestApiSecurityPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiSecurityPolicy.arg(TfArg<String> arg) : this._(arg);

  static const tls10 = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('TLS_1_0'),
  );
  static const tls12 = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('TLS_1_2'),
  );
  static const securitypolicyTls1313202509 = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('SecurityPolicy_TLS13_1_3_2025_09'),
  );
  static const securitypolicyTls1313Fips202509 =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS13_1_3_FIPS_2025_09'),
      );
  static const securitypolicyTls1312PfsPq202509 =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09'),
      );
  static const securitypolicyTls1312FipsPq202509 =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09'),
      );
  static const securitypolicyTls1312FipsPfsPq202509 =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09'),
      );
  static const securitypolicyTls1312Pq202509 =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS13_1_2_PQ_2025_09'),
      );
  static const securitypolicyTls1312202106 = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('SecurityPolicy_TLS13_1_2_2021_06'),
  );
  static const securitypolicyTls132025Edge = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('SecurityPolicy_TLS13_2025_EDGE'),
  );
  static const securitypolicyTls12Pfs2025Edge =
      ApiGatewayRestApiSecurityPolicy._(
        TfArgLiteral('SecurityPolicy_TLS12_PFS_2025_EDGE'),
      );
  static const securitypolicyTls122018Edge = ApiGatewayRestApiSecurityPolicy._(
    TfArgLiteral('SecurityPolicy_TLS12_2018_EDGE'),
  );

  static const List<ApiGatewayRestApiSecurityPolicy> values = [
    tls10,
    tls12,
    securitypolicyTls1313202509,
    securitypolicyTls1313Fips202509,
    securitypolicyTls1312PfsPq202509,
    securitypolicyTls1312FipsPq202509,
    securitypolicyTls1312FipsPfsPq202509,
    securitypolicyTls1312Pq202509,
    securitypolicyTls1312202106,
    securitypolicyTls132025Edge,
    securitypolicyTls12Pfs2025Edge,
    securitypolicyTls122018Edge,
  ];
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

  final ApiGatewayRestApiIpAddressType? ipAddressType;

  final List<ApiGatewayRestApiTypes> types;

  final TfArg<List<String>>? vpcEndpointIds;

  @internal
  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'types': [for (final e in types) e.toTfJson()],
    'vpc_endpoint_ids': ?vpcEndpointIds?.toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const ApiGatewayRestApiIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  ApiGatewayRestApiIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = ApiGatewayRestApiIpAddressType._(TfArgLiteral('ipv4'));
  static const dualstack = ApiGatewayRestApiIpAddressType._(
    TfArgLiteral('dualstack'),
  );

  static const List<ApiGatewayRestApiIpAddressType> values = [ipv4, dualstack];
}

/// `types` — derived from the provider schema description.
extension type const ApiGatewayRestApiTypes._(TfArg<String> _)
    implements TfArg<String> {
  ApiGatewayRestApiTypes.variable(String name) : this._(TfArg.variable(name));
  ApiGatewayRestApiTypes.expression(String template)
    : this._(TfArg.expression(template));
  const ApiGatewayRestApiTypes.arg(TfArg<String> arg) : this._(arg);

  static const regional = ApiGatewayRestApiTypes._(TfArgLiteral('REGIONAL'));
  static const edge = ApiGatewayRestApiTypes._(TfArgLiteral('EDGE'));
  static const private = ApiGatewayRestApiTypes._(TfArgLiteral('PRIVATE'));

  static const List<ApiGatewayRestApiTypes> values = [regional, edge, private];
}

/// Factory wrapper for `aws_api_gateway_rest_api`.
final class AwsApiGatewayRestApi extends Resource {
  static const String tfType = 'aws_api_gateway_rest_api';

  AwsApiGatewayRestApi(
    super.localName, {
    ApiGatewayRestApiKeySource? apiKeySource,
    TfArg<List<String>>? binaryMediaTypes,
    TfArg<String>? body,
    TfArg<String>? description,
    TfArg<bool>? disableExecuteApiEndpoint,
    ApiGatewayRestApiEndpointAccessMode? endpointAccessMode,
    TfArg<bool>? failOnWarnings,
    TfArg<String>? minimumCompressionSize,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? policy,
    ApiGatewayRestApiPutRestApiMode? putRestApiMode,
    TfArg<String>? region,
    ApiGatewayRestApiSecurityPolicy? securityPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `api_key_source` attribute.
  TfRef<String> get apiKeySource =>
      TfRef.attribute<String>(this, 'api_key_source');

  /// Reference to `binary_media_types` attribute.
  TfRef<List<String>> get binaryMediaTypes =>
      TfRef.attribute<List<String>>(this, 'binary_media_types');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_execute_api_endpoint` attribute.
  TfRef<bool> get disableExecuteApiEndpoint =>
      TfRef.attribute<bool>(this, 'disable_execute_api_endpoint');

  /// Reference to `endpoint_access_mode` attribute.
  TfRef<String> get endpointAccessMode =>
      TfRef.attribute<String>(this, 'endpoint_access_mode');

  /// Reference to `fail_on_warnings` attribute.
  TfRef<bool> get failOnWarnings =>
      TfRef.attribute<bool>(this, 'fail_on_warnings');

  /// Reference to `minimum_compression_size` attribute.
  TfRef<String> get minimumCompressionSize =>
      TfRef.attribute<String>(this, 'minimum_compression_size');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `put_rest_api_mode` attribute.
  TfRef<String> get putRestApiMode =>
      TfRef.attribute<String>(this, 'put_rest_api_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
