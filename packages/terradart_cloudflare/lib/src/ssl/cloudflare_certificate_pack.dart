// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_certificate_pack`.
const Set<String> _cloudflareCertificatePackSensitive = <String>{};

/// Certificate Pack Certificate enum for `certificate_authority`.
enum CertificatePackCertificateAuthority implements TerraformEnum {
  google('google'),
  letsEncrypt('lets_encrypt'),
  sslCom('ssl_com');

  const CertificatePackCertificateAuthority(this.terraformValue);
  @override
  final String terraformValue;
}

/// Certificate Pack enum for `type`.
enum CertificatePackType implements TerraformEnum {
  advanced('advanced');

  const CertificatePackType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Certificate Pack Validation enum for `validation_method`.
enum CertificatePackValidationMethod implements TerraformEnum {
  txt('txt'),
  http('http'),
  email('email');

  const CertificatePackValidationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_certificate_pack`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCertificatePack extends Resource {
  static const String tfType = 'cloudflare_certificate_pack';

  CloudflareCertificatePack({
    required super.localName,
    required TfArg<CertificatePackCertificateAuthority> certificateAuthority,
    TfArg<bool>? cloudflareBranding,
    TfArg<List<String>>? hosts,
    required TfArg<CertificatePackType> type,
    required TfArg<CertificatePackValidationMethod> validationMethod,
    required TfArg<num> validityDays,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority': certificateAuthority,
           if (cloudflareBranding != null)
             'cloudflare_branding': cloudflareBranding,
           if (hosts != null) 'hosts': hosts,
           'type': type,
           'validation_method': validationMethod,
           'validity_days': validityDays,
           'zone_id': zoneId,
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
}
