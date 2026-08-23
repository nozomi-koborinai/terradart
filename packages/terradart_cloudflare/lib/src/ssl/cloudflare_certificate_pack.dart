// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_certificate_pack`.
const Set<String> _cloudflareCertificatePackSensitive = <String>{};

/// Factory wrapper for `cloudflare_certificate_pack`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCertificatePack extends Resource {
  static const String tfType = 'cloudflare_certificate_pack';

  CloudflareCertificatePack({
    required super.localName,
    required TfArg<String> certificateAuthority,
    TfArg<bool>? cloudflareBranding,
    TfArg<List<String>>? hosts,
    required TfArg<String> type,
    required TfArg<String> validationMethod,
    required TfArg<num> validityDays,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_certificate` attribute.
  TfRef<String> get primaryCertificate =>
      TfRef.attribute<String>(this, 'primary_certificate');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
