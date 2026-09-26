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
final class AwsDmsCertificate extends Resource {
  static const String tfType = 'aws_dms_certificate';

  AwsDmsCertificate({
    required super.localName,
    required TfArg<String> certificateId,
    TfArg<String>? certificatePem,
    TfArg<String>? certificateWallet,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_id': certificateId,
           if (certificatePem != null) 'certificate_pem': certificatePem,
           if (certificateWallet != null)
             'certificate_wallet': certificateWallet,
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
}
