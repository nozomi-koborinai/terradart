// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_certificate`.
const Set<String> _awsDmsCertificateSensitive = <String>{
  'certificate_pem',
  'certificate_wallet',
};

/// Factory wrapper for `aws_dms_certificate`.
final class DataAwsDmsCertificate extends Data {
  static const String tfType = 'aws_dms_certificate';

  DataAwsDmsCertificate({
    required super.localName,
    required TfArg<String> certificateId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_id': certificateId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `certificate_creation_date` attribute.
  TfRef<String> get certificateCreationDate =>
      TfRef.attribute<String>(this, 'certificate_creation_date');

  /// Reference to `certificate_owner` attribute.
  TfRef<String> get certificateOwner =>
      TfRef.attribute<String>(this, 'certificate_owner');

  /// Reference to `certificate_pem` attribute.
  TfRef<String> get certificatePem =>
      TfRef.attribute<String>(this, 'certificate_pem');

  /// Reference to `certificate_wallet` attribute.
  TfRef<String> get certificateWallet =>
      TfRef.attribute<String>(this, 'certificate_wallet');

  /// Reference to `key_length` attribute.
  TfRef<num> get keyLength => TfRef.attribute<num>(this, 'key_length');

  /// Reference to `signing_algorithm` attribute.
  TfRef<String> get signingAlgorithm =>
      TfRef.attribute<String>(this, 'signing_algorithm');

  /// Reference to `valid_from_date` attribute.
  TfRef<String> get validFromDate =>
      TfRef.attribute<String>(this, 'valid_from_date');

  /// Reference to `valid_to_date` attribute.
  TfRef<String> get validToDate =>
      TfRef.attribute<String>(this, 'valid_to_date');
}
