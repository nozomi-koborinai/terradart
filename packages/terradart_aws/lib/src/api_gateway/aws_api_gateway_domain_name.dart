// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_domain_name`.
const Set<String> _awsApiGatewayDomainNameSensitive = <String>{
  'certificate_private_key',
};

/// Typed helper for the `endpoint_configuration` block of
/// `aws_api_gateway_domain_name` (derived from provider schema).
@immutable
final class ApiGatewayDomainNameEndpointConfiguration {
  const ApiGatewayDomainNameEndpointConfiguration({
    this.ipAddressType,
    required this.types,
  });

  final TfArg<String>? ipAddressType;

  final TfArg<List<Object?>> types;

  Map<String, Object?> encode() => {
    if (ipAddressType != null) 'ip_address_type': ipAddressType!.toTfJson(),
    'types': types.toTfJson(),
  };
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
    if (truststoreVersion != null)
      'truststore_version': truststoreVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_api_gateway_domain_name`.
final class AwsApiGatewayDomainName extends Resource {
  static const String tfType = 'aws_api_gateway_domain_name';

  AwsApiGatewayDomainName({
    required super.localName,
    TfArg<String>? certificateArn,
    TfArg<String>? certificateBody,
    TfArg<String>? certificateChain,
    TfArg<String>? certificateName,
    TfArg<String>? certificatePrivateKey,
    required TfArg<String> domainName,
    TfArg<String>? endpointAccessMode,
    TfArg<String>? ownershipVerificationCertificateArn,
    TfArg<String>? policy,
    TfArg<String>? region,
    TfArg<String>? regionalCertificateArn,
    TfArg<String>? regionalCertificateName,
    TfArg<String>? routingMode,
    TfArg<String>? securityPolicy,
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
           if (certificateArn != null) 'certificate_arn': certificateArn,
           if (certificateBody != null) 'certificate_body': certificateBody,
           if (certificateChain != null) 'certificate_chain': certificateChain,
           if (certificateName != null) 'certificate_name': certificateName,
           if (certificatePrivateKey != null)
             'certificate_private_key': certificatePrivateKey,
           'domain_name': domainName,
           if (endpointAccessMode != null)
             'endpoint_access_mode': endpointAccessMode,
           if (ownershipVerificationCertificateArn != null)
             'ownership_verification_certificate_arn':
                 ownershipVerificationCertificateArn,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           if (regionalCertificateArn != null)
             'regional_certificate_arn': regionalCertificateArn,
           if (regionalCertificateName != null)
             'regional_certificate_name': regionalCertificateName,
           if (routingMode != null) 'routing_mode': routingMode,
           if (securityPolicy != null) 'security_policy': securityPolicy,
           if (tags != null) 'tags': tags,
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
}
