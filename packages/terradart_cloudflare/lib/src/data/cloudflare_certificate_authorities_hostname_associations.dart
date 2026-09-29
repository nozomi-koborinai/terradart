// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_certificate_authorities_hostname_associations.dart';

/// Sensitive field paths for `cloudflare_certificate_authorities_hostname_associations`.
const Set<String>
_cloudflareCertificateAuthoritiesHostnameAssociationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_certificate_authorities_hostname_associations`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCertificateAuthoritiesHostnameAssociations
    extends Data {
  static const String tfType =
      'cloudflare_certificate_authorities_hostname_associations';

  DataCloudflareCertificateAuthoritiesHostnameAssociations({
    required super.localName,
    TfArg<String>? mtlsCertificateId,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (mtlsCertificateId != null)
             'mtls_certificate_id': mtlsCertificateId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCertificateAuthoritiesHostnameAssociationsSensitive;

  /// A reference to the `cloudflare_certificate_authorities_hostname_associations` this data source reads, for
  /// arguments typed `RefTo<CloudflareCertificateAuthoritiesHostnameAssociations>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareCertificateAuthoritiesHostnameAssociations> get ref =>
      RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');
}
