// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_client_certificate`.
const Set<String> _cloudflareClientCertificateSensitive = <String>{};

/// Factory wrapper for `cloudflare_client_certificate`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareClientCertificate extends Resource {
  static const String tfType = 'cloudflare_client_certificate';

  CloudflareClientCertificate(
    super.localName, {
    required TfArg<String> csr,
    TfArg<bool>? reactivate,
    required TfArg<num> validityDays,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'csr': csr,
           'reactivate': ?reactivate,
           'validity_days': validityDays,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareClientCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareClientCertificate>`.
  RefTo<CloudflareClientCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `common_name` attribute.
  TfRef<String> get commonName => TfRef.attribute<String>(this, 'common_name');

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `fingerprint_sha256` attribute.
  TfRef<String> get fingerprintSha256 =>
      TfRef.attribute<String>(this, 'fingerprint_sha256');

  /// Reference to `issued_on` attribute.
  TfRef<String> get issuedOn => TfRef.attribute<String>(this, 'issued_on');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `organizational_unit` attribute.
  TfRef<String> get organizationalUnit =>
      TfRef.attribute<String>(this, 'organizational_unit');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `ski` attribute.
  TfRef<String> get ski => TfRef.attribute<String>(this, 'ski');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `reactivate` attribute.
  TfRef<bool> get reactivate => TfRef.attribute<bool>(this, 'reactivate');

  /// Reference to `validity_days` attribute.
  TfRef<num> get validityDays => TfRef.attribute<num>(this, 'validity_days');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
