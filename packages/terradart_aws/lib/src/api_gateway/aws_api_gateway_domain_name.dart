// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_domain_name`.
const Set<String> _awsApiGatewayDomainNameSensitive = <String>{
  'certificate_private_key',
};

/// Api Gateway Domain Name Endpoint Access enum for `endpoint_access_mode`.
enum ApiGatewayDomainNameEndpointAccessMode implements TerraformEnum {
  basic('BASIC'),
  strict('STRICT');

  const ApiGatewayDomainNameEndpointAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Domain Name Routing enum for `routing_mode`.
enum ApiGatewayDomainNameRoutingMode implements TerraformEnum {
  basePathMappingOnly('BASE_PATH_MAPPING_ONLY'),
  routingRuleOnly('ROUTING_RULE_ONLY'),
  routingRuleThenBasePathMapping('ROUTING_RULE_THEN_BASE_PATH_MAPPING');

  const ApiGatewayDomainNameRoutingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Gateway Domain Name Security enum for `security_policy`.
enum ApiGatewayDomainNameSecurityPolicy implements TerraformEnum {
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

  const ApiGatewayDomainNameSecurityPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_configuration` block of
/// `aws_api_gateway_domain_name` (derived from provider schema).
@immutable
final class ApiGatewayDomainNameEndpointConfiguration {
  const ApiGatewayDomainNameEndpointConfiguration({
    this.ipAddressType,
    required this.types,
  });

  final TfArg<ApiGatewayDomainNameIpAddressType>? ipAddressType;

  final List<TfArg<ApiGatewayDomainNameTypes>> types;

  Map<String, Object?> encode() => {
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'types': [for (final e in types) e.toTfJson()],
  };
}

/// `ip_address_type` — derived from the provider schema description.
enum ApiGatewayDomainNameIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack');

  const ApiGatewayDomainNameIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum ApiGatewayDomainNameTypes implements TerraformEnum {
  regional('REGIONAL'),
  edge('EDGE'),
  private('PRIVATE');

  const ApiGatewayDomainNameTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mutual_tls_authentication` block of
/// `aws_api_gateway_domain_name` (derived from provider schema).
@immutable
final class ApiGatewayDomainNameMutualTlsAuthentication {
  const ApiGatewayDomainNameMutualTlsAuthentication({
    required this.truststoreUri,
    this.truststoreVersion,
  });

  final TfArg<String> truststoreUri;

  final TfArg<String>? truststoreVersion;

  Map<String, Object?> encode() => {
    'truststore_uri': truststoreUri.toTfJson(),
    'truststore_version': ?truststoreVersion?.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_domain_name`.
final class AwsApiGatewayDomainName extends Resource {
  static const String tfType = 'aws_api_gateway_domain_name';

  AwsApiGatewayDomainName(
    super.localName, {
    TfArg<String>? certificateArn,
    TfArg<String>? certificateBody,
    TfArg<String>? certificateChain,
    TfArg<String>? certificateName,
    TfArg<String>? certificatePrivateKey,
    required TfArg<String> domainName,
    TfArg<ApiGatewayDomainNameEndpointAccessMode>? endpointAccessMode,
    TfArg<String>? ownershipVerificationCertificateArn,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<String>? regionalCertificateArn,
    TfArg<String>? regionalCertificateName,
    TfArg<ApiGatewayDomainNameRoutingMode>? routingMode,
    TfArg<ApiGatewayDomainNameSecurityPolicy>? securityPolicy,
    TfArg<Map<String, String>>? tags,
    ApiGatewayDomainNameEndpointConfiguration? endpointConfiguration,
    ApiGatewayDomainNameMutualTlsAuthentication? mutualTlsAuthentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_arn': ?certificateArn,
           'certificate_body': ?certificateBody,
           'certificate_chain': ?certificateChain,
           'certificate_name': ?certificateName,
           'certificate_private_key': ?certificatePrivateKey,
           'domain_name': domainName,
           'endpoint_access_mode': ?endpointAccessMode,
           'ownership_verification_certificate_arn':
               ?ownershipVerificationCertificateArn,
           'policy': ?policy,
           'region': ?region,
           'regional_certificate_arn': ?regionalCertificateArn,
           'regional_certificate_name': ?regionalCertificateName,
           'routing_mode': ?routingMode,
           'security_policy': ?securityPolicy,
           'tags': ?tags,
           if (endpointConfiguration != null)
             'endpoint_configuration': TfArg.literal(
               endpointConfiguration.encode(),
             ),
           if (mutualTlsAuthentication != null)
             'mutual_tls_authentication': TfArg.literal(
               mutualTlsAuthentication.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayDomainNameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayDomainName>`.
  RefTo<AwsApiGatewayDomainName> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_upload_date` attribute.
  TfRef<String> get certificateUploadDate =>
      TfRef.attribute<String>(this, 'certificate_upload_date');

  /// Reference to `cloudfront_domain_name` attribute.
  TfRef<String> get cloudfrontDomainName =>
      TfRef.attribute<String>(this, 'cloudfront_domain_name');

  /// Reference to `cloudfront_zone_id` attribute.
  TfRef<String> get cloudfrontZoneId =>
      TfRef.attribute<String>(this, 'cloudfront_zone_id');

  /// Reference to `domain_name_id` attribute.
  TfRef<String> get domainNameId =>
      TfRef.attribute<String>(this, 'domain_name_id');

  /// Reference to `regional_domain_name` attribute.
  TfRef<String> get regionalDomainName =>
      TfRef.attribute<String>(this, 'regional_domain_name');

  /// Reference to `regional_zone_id` attribute.
  TfRef<String> get regionalZoneId =>
      TfRef.attribute<String>(this, 'regional_zone_id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `certificate_body` attribute.
  TfRef<String> get certificateBody =>
      TfRef.attribute<String>(this, 'certificate_body');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `certificate_name` attribute.
  TfRef<String> get certificateName =>
      TfRef.attribute<String>(this, 'certificate_name');

  /// Reference to `certificate_private_key` attribute.
  TfRef<String> get certificatePrivateKey =>
      TfRef.attribute<String>(this, 'certificate_private_key');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `endpoint_access_mode` attribute.
  TfRef<String> get endpointAccessMode =>
      TfRef.attribute<String>(this, 'endpoint_access_mode');

  /// Reference to `ownership_verification_certificate_arn` attribute.
  TfRef<String> get ownershipVerificationCertificateArn =>
      TfRef.attribute<String>(this, 'ownership_verification_certificate_arn');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regional_certificate_arn` attribute.
  TfRef<String> get regionalCertificateArn =>
      TfRef.attribute<String>(this, 'regional_certificate_arn');

  /// Reference to `regional_certificate_name` attribute.
  TfRef<String> get regionalCertificateName =>
      TfRef.attribute<String>(this, 'regional_certificate_name');

  /// Reference to `routing_mode` attribute.
  TfRef<String> get routingMode =>
      TfRef.attribute<String>(this, 'routing_mode');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
