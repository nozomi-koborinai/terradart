// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apigatewayv2_domain_name`.
const Set<String> _awsApigatewayv2DomainNameSensitive = <String>{};

/// Typed helper for the `domain_name_configuration` block of
/// `aws_apigatewayv2_domain_name` (derived from provider schema).
@immutable
final class Apigatewayv2DomainNameDomainNameConfiguration {
  const Apigatewayv2DomainNameDomainNameConfiguration({
    required this.certificateArn,
    required this.endpointType,
    this.ipAddressType,
    this.ownershipVerificationCertificateArn,
    required this.securityPolicy,
  });

  final TfArg<String> certificateArn;

  final TfArg<String> endpointType;

  final TfArg<String>? ipAddressType;

  final TfArg<String>? ownershipVerificationCertificateArn;

  final TfArg<String> securityPolicy;

  Map<String, Object?> encode() => {
    'certificate_arn': certificateArn.toTfJson(),
    'endpoint_type': endpointType.toTfJson(),
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    if (ownershipVerificationCertificateArn != null)
      'ownership_verification_certificate_arn':
          ownershipVerificationCertificateArn!.toTfJson(),
    'security_policy': securityPolicy.toTfJson(),
  };
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

  Map<String, Object?> encode() => {
    'truststore_uri': truststoreUri.toTfJson(),
    if (truststoreVersion != null)
      'truststore_version': truststoreVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_apigatewayv2_domain_name`.
final class AwsApigatewayv2DomainName extends Resource {
  static const String tfType = 'aws_apigatewayv2_domain_name';

  AwsApigatewayv2DomainName({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? region,
    TfArg<String>? routingMode,
    TfArg<Map<String, String>>? tags,
    required Apigatewayv2DomainNameDomainNameConfiguration
    domainNameConfiguration,
    Apigatewayv2DomainNameMutualTlsAuthentication? mutualTlsAuthentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (region != null) 'region': region,
           if (routingMode != null) 'routing_mode': routingMode,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_mapping_selection_expression` attribute.
  TfRef<String> get apiMappingSelectionExpression =>
      TfRef.attribute<String>(this, 'api_mapping_selection_expression');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
