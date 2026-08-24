// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_certificate_authorities_hostname_associations`.
const Set<String>
_cloudflareCertificateAuthoritiesHostnameAssociationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_certificate_authorities_hostname_associations`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCertificateAuthoritiesHostnameAssociations
    extends Resource {
  static const String tfType =
      'cloudflare_certificate_authorities_hostname_associations';

  CloudflareCertificateAuthoritiesHostnameAssociations({
    required super.localName,
    TfArg<List<String>>? hostnames,
    TfArg<String>? mtlsCertificateId,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (hostnames != null) 'hostnames': hostnames,
           if (mtlsCertificateId != null)
             'mtls_certificate_id': mtlsCertificateId,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCertificateAuthoritiesHostnameAssociationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
