// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_certificate_pack`.
const Set<String> _cloudflareCertificatePackSensitive = <String>{};

/// Certificate Pack Certificate enum for `certificate_authority`.
extension type const CertificatePackCertificateAuthority._(TfArg<String> _)
    implements TfArg<String> {
  CertificatePackCertificateAuthority.variable(String name)
    : this._(TfArg.variable(name));
  CertificatePackCertificateAuthority.expression(String template)
    : this._(TfArg.expression(template));
  const CertificatePackCertificateAuthority.arg(TfArg<String> arg)
    : this._(arg);

  static const google = CertificatePackCertificateAuthority._(
    TfArgLiteral('google'),
  );
  static const letsEncrypt = CertificatePackCertificateAuthority._(
    TfArgLiteral('lets_encrypt'),
  );
  static const sslCom = CertificatePackCertificateAuthority._(
    TfArgLiteral('ssl_com'),
  );

  static const List<CertificatePackCertificateAuthority> values = [
    google,
    letsEncrypt,
    sslCom,
  ];
}

/// Certificate Pack enum for `type`.
extension type const CertificatePackType._(TfArg<String> _)
    implements TfArg<String> {
  CertificatePackType.variable(String name) : this._(TfArg.variable(name));
  CertificatePackType.expression(String template)
    : this._(TfArg.expression(template));
  const CertificatePackType.arg(TfArg<String> arg) : this._(arg);

  static const advanced = CertificatePackType._(TfArgLiteral('advanced'));

  static const List<CertificatePackType> values = [advanced];
}

/// Certificate Pack Validation enum for `validation_method`.
extension type const CertificatePackValidationMethod._(TfArg<String> _)
    implements TfArg<String> {
  CertificatePackValidationMethod.variable(String name)
    : this._(TfArg.variable(name));
  CertificatePackValidationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CertificatePackValidationMethod.arg(TfArg<String> arg) : this._(arg);

  static const txt = CertificatePackValidationMethod._(TfArgLiteral('txt'));
  static const http = CertificatePackValidationMethod._(TfArgLiteral('http'));
  static const email = CertificatePackValidationMethod._(TfArgLiteral('email'));

  static const List<CertificatePackValidationMethod> values = [
    txt,
    http,
    email,
  ];
}

/// Factory wrapper for `cloudflare_certificate_pack`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCertificatePack extends Resource {
  static const String tfType = 'cloudflare_certificate_pack';

  CloudflareCertificatePack(
    super.localName, {
    required CertificatePackCertificateAuthority certificateAuthority,
    TfArg<bool>? cloudflareBranding,
    TfArg<List<String>>? hosts,
    required CertificatePackType type,
    required CertificatePackValidationMethod validationMethod,
    required TfArg<num> validityDays,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority': certificateAuthority,
           'cloudflare_branding': ?cloudflareBranding,
           'hosts': ?hosts,
           'type': type,
           'validation_method': validationMethod,
           'validity_days': validityDays,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCertificatePackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCertificatePack>`.
  RefTo<CloudflareCertificatePack> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_certificate` attribute.
  TfRef<String> get primaryCertificate =>
      TfRef.attribute<String>(this, 'primary_certificate');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `cloudflare_branding` attribute.
  TfRef<bool> get cloudflareBranding =>
      TfRef.attribute<bool>(this, 'cloudflare_branding');

  /// Reference to `hosts` attribute.
  TfRef<List<String>> get hosts => TfRef.attribute<List<String>>(this, 'hosts');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validation_method` attribute.
  TfRef<String> get validationMethod =>
      TfRef.attribute<String>(this, 'validation_method');

  /// Reference to `validity_days` attribute.
  TfRef<num> get validityDays => TfRef.attribute<num>(this, 'validity_days');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
