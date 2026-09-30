// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_certificate_authority_certificate`.
const Set<String> _awsAcmpcaCertificateAuthorityCertificateSensitive =
    <String>{};

/// Factory wrapper for `aws_acmpca_certificate_authority_certificate`.
final class AwsAcmpcaCertificateAuthorityCertificate extends Resource {
  static const String tfType = 'aws_acmpca_certificate_authority_certificate';

  AwsAcmpcaCertificateAuthorityCertificate({
    required super.localName,
    required TfArg<String> certificate,
    required TfArg<String> certificateAuthorityArn,
    TfArg<String>? certificateChain,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           'certificate_authority_arn': certificateAuthorityArn,
           'certificate_chain': ?certificateChain,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAcmpcaCertificateAuthorityCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAcmpcaCertificateAuthorityCertificate>`.
  RefTo<AwsAcmpcaCertificateAuthorityCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificateRef =>
      TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_authority_arn` attribute.
  TfRef<String> get certificateAuthorityArnRef =>
      TfRef.attribute<String>(this, 'certificate_authority_arn');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChainRef =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
