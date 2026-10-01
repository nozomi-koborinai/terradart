// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_api_gateway_client_certificate`.
const Set<String> _awsApiGatewayClientCertificateSensitive = <String>{};

/// Factory wrapper for `aws_api_gateway_client_certificate`.
final class AwsApiGatewayClientCertificate extends Resource {
  static const String tfType = 'aws_api_gateway_client_certificate';

  AwsApiGatewayClientCertificate(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsApiGatewayClientCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApiGatewayClientCertificate>`.
  RefTo<AwsApiGatewayClientCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `pem_encoded_certificate` attribute.
  TfRef<String> get pemEncodedCertificate =>
      TfRef.attribute<String>(this, 'pem_encoded_certificate');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
