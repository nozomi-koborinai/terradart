// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_mtls_certificate.dart';

/// Sensitive field paths for `cloudflare_mtls_certificate`.
const Set<String> _cloudflareMtlsCertificateSensitive = <String>{};

/// Factory wrapper for `cloudflare_mtls_certificate`.
final class DataCloudflareMtlsCertificate extends Data {
  static const String tfType = 'cloudflare_mtls_certificate';

  DataCloudflareMtlsCertificate({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> mtlsCertificateId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'mtls_certificate_id': mtlsCertificateId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMtlsCertificateSensitive;

  /// A reference to the `cloudflare_mtls_certificate` this data source reads, for
  /// arguments typed `RefTo<CloudflareMtlsCertificate>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareMtlsCertificate> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ca` attribute.
  TfRef<bool> get ca => TfRef.attribute<bool>(this, 'ca');

  /// Reference to `certificates` attribute.
  TfRef<String> get certificates =>
      TfRef.attribute<String>(this, 'certificates');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
