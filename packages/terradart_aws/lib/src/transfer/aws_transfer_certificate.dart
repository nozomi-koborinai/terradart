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

/// Factory wrapper for `aws_transfer_certificate`.
final class AwsTransferCertificate extends Resource {
  static const String tfType = 'aws_transfer_certificate';

  AwsTransferCertificate({
    required super.localName,
    required TfArg<String> certificate,
    TfArg<String>? certificateChain,
    TfArg<String>? description,
    TfArg<String>? privateKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> usage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate': certificate,
           if (certificateChain != null) 'certificate_chain': certificateChain,
           if (description != null) 'description': description,
           if (privateKey != null) 'private_key': privateKey,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'usage': usage,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferCertificateSensitive;

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
}
