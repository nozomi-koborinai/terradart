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
///
/// Pick one with a dot shorthand: `.certificatePem(...)`.
sealed class DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificatePemOrCertificateWallet();

  /// Sets `certificate_pem`.
  const factory DmsCertificateCertificatePemOrCertificateWallet.certificatePem(
    TfArg<String> certificatePem,
  ) = DmsCertificateCertificatePemOrCertificateWalletCertificatePem;

  /// Sets `certificate_wallet`.
  const factory DmsCertificateCertificatePemOrCertificateWallet.certificateWallet(
    TfArg<String> certificateWallet,
  ) = DmsCertificateCertificatePemOrCertificateWalletCertificateWallet;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DmsCertificateCertificatePemOrCertificateWallet.certificatePem] choice: sets `certificate_pem`.
final class DmsCertificateCertificatePemOrCertificateWalletCertificatePem
    extends DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificatePemOrCertificateWalletCertificatePem(
    this.certificatePem,
  );

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

/// The [DmsCertificateCertificatePemOrCertificateWallet.certificateWallet] choice: sets `certificate_wallet`.
final class DmsCertificateCertificatePemOrCertificateWalletCertificateWallet
    extends DmsCertificateCertificatePemOrCertificateWallet {
  const DmsCertificateCertificatePemOrCertificateWalletCertificateWallet(
    this.certificateWallet,
  );

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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDmsCertificate>`.
  RefTo<AwsDmsCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');
}
