// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_hsm_client_certificate`.
const Set<String> _awsRedshiftHsmClientCertificateSensitive = <String>{};

/// Factory wrapper for `aws_redshift_hsm_client_certificate`.
final class AwsRedshiftHsmClientCertificate extends Resource {
  static const String tfType = 'aws_redshift_hsm_client_certificate';

  AwsRedshiftHsmClientCertificate({
    required super.localName,
    required TfArg<String> hsmClientCertificateIdentifier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hsm_client_certificate_identifier': hsmClientCertificateIdentifier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftHsmClientCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hsm_client_certificate_public_key` attribute.
  TfRef<String> get hsmClientCertificatePublicKey =>
      TfRef.attribute<String>(this, 'hsm_client_certificate_public_key');
}
