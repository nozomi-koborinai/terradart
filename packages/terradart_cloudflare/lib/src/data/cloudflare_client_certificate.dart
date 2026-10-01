// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_client_certificate.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_client_certificate`.
const Set<String> _cloudflareClientCertificateSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_client_certificate` (derived from provider schema).
@immutable
final class DataClientCertificateFilter {
  const DataClientCertificateFilter({this.limit, this.offset, this.status});

  final TfArg<num>? limit;

  final TfArg<num>? offset;

  final TfArg<DataClientCertificateFilterStatus>? status;

  Map<String, Object?> encode() => {
    'limit': ?limit?.toTfJson(),
    'offset': ?offset?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum DataClientCertificateFilterStatus implements TerraformEnum {
  all('all'),
  active('active'),
  pendingReactivation('pending_reactivation'),
  pendingRevocation('pending_revocation'),
  revoked('revoked');

  const DataClientCertificateFilterStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_client_certificate`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareClientCertificate extends Data {
  static const String tfType = 'cloudflare_client_certificate';

  DataCloudflareClientCertificate(
    super.localName, {
    TfArg<String>? clientCertificateId,
    RefTo<CloudflareZone>? zoneId,
    DataClientCertificateFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_certificate_id': ?clientCertificateId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareClientCertificateSensitive;

  /// A reference to the `cloudflare_client_certificate` this data source reads, for
  /// arguments typed `RefTo<CloudflareClientCertificate>`.
  RefTo<CloudflareClientCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `common_name` attribute.
  TfRef<String> get commonName => TfRef.attribute<String>(this, 'common_name');

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

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

  /// Reference to `validity_days` attribute.
  TfRef<num> get validityDays => TfRef.attribute<num>(this, 'validity_days');

  /// Reference to `client_certificate_id` attribute.
  TfRef<String> get clientCertificateId =>
      TfRef.attribute<String>(this, 'client_certificate_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
