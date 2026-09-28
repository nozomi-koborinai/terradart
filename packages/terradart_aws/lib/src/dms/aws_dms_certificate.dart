// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_certificate`.
const Set<String> _awsDmsCertificateSensitive = <String>{
  'certificate_pem',
  'certificate_wallet',
};

/// Exactly one of `certificate_pem`, `certificate_wallet` on `aws_dms_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificatePemOrCertificateWallet();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `certificate_pem` (one of the [DmsCertificateCertificatePemOrCertificateWallet] choices).
final class DmsCertificateCertificatePemOption
    extends DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificatePemOption({required this.certificatePem});

  final TfArg<String> certificatePem;

  @override
  String get blockKey => 'certificate_pem';

  @override
  Map<String, Object?> encode() => {
    'certificate_pem': certificatePem.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'certificate_pem': certificatePem};
}

/// Sets `certificate_wallet` (one of the [DmsCertificateCertificatePemOrCertificateWallet] choices).
final class DmsCertificateCertificateWalletOption
    extends DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificateWalletOption({
    required this.certificateWallet,
  });

  final TfArg<String> certificateWallet;

  @override
  String get blockKey => 'certificate_wallet';

  @override
  Map<String, Object?> encode() => {
    'certificate_wallet': certificateWallet.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_wallet': certificateWallet,
  };
}

/// Factory wrapper for `aws_dms_certificate`.
final class AwsDmsCertificate extends Resource {
  static const String tfType = 'aws_dms_certificate';

  AwsDmsCertificate({
    required super.localName,
    required TfArg<String> certificateId,
    required DmsCertificateCertificatePemOrCertificateWallet
    certificatePemOrCertificateWallet,
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
           ...certificatePemOrCertificateWallet.argMap,
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
