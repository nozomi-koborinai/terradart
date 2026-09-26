// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_certificate`.
const Set<String> _awsIotCertificateSensitive = <String>{
  'ca_pem',
  'certificate_pem',
  'private_key',
  'public_key',
};

/// Factory wrapper for `aws_iot_certificate`.
final class AwsIotCertificate extends Resource {
  static const String tfType = 'aws_iot_certificate';

  AwsIotCertificate({
    required super.localName,
    required TfArg<bool> active,
    TfArg<String>? caPem,
    TfArg<String>? certificatePem,
    TfArg<String>? csr,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'active': active,
           if (caPem != null) 'ca_pem': caPem,
           if (certificatePem != null) 'certificate_pem': certificatePem,
           if (csr != null) 'csr': csr,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ca_certificate_id` attribute.
  TfRef<String> get caCertificateId =>
      TfRef.attribute<String>(this, 'ca_certificate_id');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');
}
