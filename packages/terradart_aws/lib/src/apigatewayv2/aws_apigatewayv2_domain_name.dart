// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_domain_name`.
const Set<String> _awsApigatewayv2DomainNameSensitive = <String>{};

/// Apigatewayv2 Domain Name Routing enum for `routing_mode`.
extension type const Apigatewayv2DomainNameRoutingMode._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2DomainNameRoutingMode.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2DomainNameRoutingMode.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2DomainNameRoutingMode.arg(TfArg<String> arg) : this._(arg);

  static const apiMappingOnly = Apigatewayv2DomainNameRoutingMode._(
    TfArgLiteral('API_MAPPING_ONLY'),
  );
  static const routingRuleOnly = Apigatewayv2DomainNameRoutingMode._(
    TfArgLiteral('ROUTING_RULE_ONLY'),
  );
  static const routingRuleThenApiMapping = Apigatewayv2DomainNameRoutingMode._(
    TfArgLiteral('ROUTING_RULE_THEN_API_MAPPING'),
  );

  static const List<Apigatewayv2DomainNameRoutingMode> values = [
    apiMappingOnly,
    routingRuleOnly,
    routingRuleThenApiMapping,
  ];
}

/// Typed helper for the `domain_name_configuration` block of
/// `aws_apigatewayv2_domain_name` (derived from provider schema).
@immutable
final class Apigatewayv2DomainNameConfiguration {
  const Apigatewayv2DomainNameConfiguration({
    required this.certificateArn,
    required this.endpointType,
    this.ipAddressType,
    this.ownershipVerificationCertificateArn,
    required this.securityPolicy,
  });

  final TfArg<String> certificateArn;

  final Apigatewayv2DomainNameEndpointType endpointType;

  final Apigatewayv2DomainNameIpAddressType? ipAddressType;

  final TfArg<String>? ownershipVerificationCertificateArn;

  final Apigatewayv2DomainNameSecurityPolicy securityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
    'endpoint_type': endpointType.toTfJson(),
    'ip_address_type': ?ipAddressType?.toTfJson(),
    'ownership_verification_certificate_arn':
        ?ownershipVerificationCertificateArn?.toTfJson(),
    'security_policy': securityPolicy.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const Apigatewayv2DomainNameEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2DomainNameEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2DomainNameEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2DomainNameEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const regional = Apigatewayv2DomainNameEndpointType._(
    TfArgLiteral('REGIONAL'),
  );

  static const List<Apigatewayv2DomainNameEndpointType> values = [regional];
}

/// `ip_address_type` — derived from the provider schema description.
extension type const Apigatewayv2DomainNameIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2DomainNameIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2DomainNameIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2DomainNameIpAddressType.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = Apigatewayv2DomainNameIpAddressType._(
    TfArgLiteral('ipv4'),
  );
  static const dualstack = Apigatewayv2DomainNameIpAddressType._(
    TfArgLiteral('dualstack'),
  );

  static const List<Apigatewayv2DomainNameIpAddressType> values = [
    ipv4,
    dualstack,
  ];
}

/// `security_policy` — derived from the provider schema description.
extension type const Apigatewayv2DomainNameSecurityPolicy._(TfArg<String> _)
    implements TfArg<String> {
  Apigatewayv2DomainNameSecurityPolicy.variable(String name)
    : this._(TfArg.variable(name));
  Apigatewayv2DomainNameSecurityPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const Apigatewayv2DomainNameSecurityPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const tls12 = Apigatewayv2DomainNameSecurityPolicy._(
    TfArgLiteral('TLS_1_2'),
  );

  static const List<Apigatewayv2DomainNameSecurityPolicy> values = [tls12];
}

/// Typed helper for the `mutual_tls_authentication` block of
/// `aws_apigatewayv2_domain_name` (derived from provider schema).
@immutable
final class Apigatewayv2DomainNameMutualTlsAuthentication {
  const Apigatewayv2DomainNameMutualTlsAuthentication({
    required this.truststoreUri,
    this.truststoreVersion,
  });

  final TfArg<String> truststoreUri;

  final TfArg<String>? truststoreVersion;

  @internal
  Map<String, Object?> encode() => {
    'truststore_uri': truststoreUri.toTfJson(),
    'truststore_version': ?truststoreVersion?.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_domain_name`.
final class AwsApigatewayv2DomainName extends Resource {
  static const String tfType = 'aws_apigatewayv2_domain_name';

  AwsApigatewayv2DomainName(
    super.localName, {
    required TfArg<String> domainName,
    TfArg<String>? region,
    Apigatewayv2DomainNameRoutingMode? routingMode,
    TfArg<Map<String, String>>? tags,
    required Apigatewayv2DomainNameConfiguration domainNameConfiguration,
    Apigatewayv2DomainNameMutualTlsAuthentication? mutualTlsAuthentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'region': ?region,
           'routing_mode': ?routingMode,
           'tags': ?tags,
           'domain_name_configuration': TfArg.literal(
             domainNameConfiguration.encode(),
           ),
           if (mutualTlsAuthentication != null)
             'mutual_tls_authentication': TfArg.literal(
               mutualTlsAuthentication.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApigatewayv2DomainNameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApigatewayv2DomainName>`.
  RefTo<AwsApigatewayv2DomainName> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_mapping_selection_expression` attribute.
  TfRef<String> get apiMappingSelectionExpression =>
      TfRef.attribute<String>(this, 'api_mapping_selection_expression');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_mode` attribute.
  TfRef<String> get routingMode =>
      TfRef.attribute<String>(this, 'routing_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
