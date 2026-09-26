// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_domain_name`.
const Set<String> _awsApiGatewayDomainNameSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_domain_name`.
final class DataAwsApiGatewayDomainName extends Data {
  static const String tfType = 'aws_api_gateway_domain_name';

  DataAwsApiGatewayDomainName({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? domainNameId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (domainNameId != null) 'domain_name_id': domainNameId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayDomainNameSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `certificate_name` attribute.
  TfRef<String> get certificateName =>
      TfRef.attribute<String>(this, 'certificate_name');

  /// Reference to `certificate_upload_date` attribute.
  TfRef<String> get certificateUploadDate =>
      TfRef.attribute<String>(this, 'certificate_upload_date');

  /// Reference to `cloudfront_domain_name` attribute.
  TfRef<String> get cloudfrontDomainName =>
      TfRef.attribute<String>(this, 'cloudfront_domain_name');

  /// Reference to `cloudfront_zone_id` attribute.
  TfRef<String> get cloudfrontZoneId =>
      TfRef.attribute<String>(this, 'cloudfront_zone_id');

  /// Reference to `endpoint_access_mode` attribute.
  TfRef<String> get endpointAccessMode =>
      TfRef.attribute<String>(this, 'endpoint_access_mode');

  /// Reference to `endpoint_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get endpointConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'endpoint_configuration',
      );

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `regional_certificate_arn` attribute.
  TfRef<String> get regionalCertificateArn =>
      TfRef.attribute<String>(this, 'regional_certificate_arn');

  /// Reference to `regional_certificate_name` attribute.
  TfRef<String> get regionalCertificateName =>
      TfRef.attribute<String>(this, 'regional_certificate_name');

  /// Reference to `regional_domain_name` attribute.
  TfRef<String> get regionalDomainName =>
      TfRef.attribute<String>(this, 'regional_domain_name');

  /// Reference to `regional_zone_id` attribute.
  TfRef<String> get regionalZoneId =>
      TfRef.attribute<String>(this, 'regional_zone_id');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicy =>
      TfRef.attribute<String>(this, 'security_policy');
}
