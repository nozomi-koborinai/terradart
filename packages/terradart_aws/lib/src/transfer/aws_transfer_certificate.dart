// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_certificate`.
const Set<String> _awsTransferCertificateSensitive = <String>{
  'certificate',
  'certificate_chain',
  'private_key',
};

/// Transfer Certificate enum for `usage`.
enum TransferCertificateUsage implements TerraformEnum {
  signing('SIGNING'),
  encryption('ENCRYPTION'),
  tls('TLS');

  const TransferCertificateUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_transfer_certificate`.
final class AwsTransferCertificate extends Resource {
  static const String tfType = 'aws_transfer_certificate';

  AwsTransferCertificate(
    super.localName, {
    required TfArg<String> certificate,
    TfArg<String>? certificateChain,
    TfArg<String>? description,
    TfArg<String>? privateKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<TransferCertificateUsage> usage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           'certificate_chain': ?certificateChain,
           'description': ?description,
           'private_key': ?privateKey,
           'region': ?region,
           'tags': ?tags,
           'usage': usage,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferCertificate>`.
  RefTo<AwsTransferCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_date` attribute.
  TfRef<String> get activeDate => TfRef.attribute<String>(this, 'active_date');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');

  /// Reference to `inactive_date` attribute.
  TfRef<String> get inactiveDate =>
      TfRef.attribute<String>(this, 'inactive_date');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `usage` attribute.
  TfRef<String> get usage => TfRef.attribute<String>(this, 'usage');
}
