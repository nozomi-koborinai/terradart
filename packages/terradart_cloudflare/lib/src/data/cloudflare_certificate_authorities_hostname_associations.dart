// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_certificate_authorities_hostname_associations.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mtls_certificate_id': ?mtlsCertificateId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCertificateAuthoritiesHostnameAssociationsSensitive;

  /// A reference to the `cloudflare_certificate_authorities_hostname_associations` this data source reads, for
  /// arguments typed `RefTo<CloudflareCertificateAuthoritiesHostnameAssociations>`.
  RefTo<CloudflareCertificateAuthoritiesHostnameAssociations> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `mtls_certificate_id` attribute.
  TfRef<String> get mtlsCertificateIdRef =>
      TfRef.attribute<String>(this, 'mtls_certificate_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
