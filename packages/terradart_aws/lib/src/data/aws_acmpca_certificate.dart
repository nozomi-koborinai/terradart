// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../acmpca/aws_acmpca_certificate.dart';

/// Sensitive field paths for `aws_acmpca_certificate`.
const Set<String> _awsAcmpcaCertificateSensitive = <String>{};

/// Factory wrapper for `aws_acmpca_certificate`.
final class DataAwsAcmpcaCertificate extends Data {
  static const String tfType = 'aws_acmpca_certificate';

  DataAwsAcmpcaCertificate({
    required super.localName,
    required TfArg<String> arn,
    required TfArg<String> certificateAuthorityArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           'certificate_authority_arn': certificateAuthorityArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaCertificateSensitive;

  /// A reference to the `aws_acmpca_certificate` this data source reads, for
  /// arguments typed `RefTo<AwsAcmpcaCertificate>`.
  RefTo<AwsAcmpcaCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');
}
