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
           'ca_pem': ?caPem,
           'certificate_pem': ?certificatePem,
           'csr': ?csr,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotCertificate>`.
  RefTo<AwsIotCertificate> get ref => RefTo.of(this);

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

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `ca_pem` attribute.
  TfRef<String> get caPem => TfRef.attribute<String>(this, 'ca_pem');

  /// Reference to `certificate_pem` attribute.
  TfRef<String> get certificatePem =>
      TfRef.attribute<String>(this, 'certificate_pem');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
