// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_origin_ca_certificate.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_origin_ca_certificate`.
const Set<String> _cloudflareOriginCaCertificateSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_origin_ca_certificate` (derived from provider schema).
@immutable
final class DataOriginCaCertificateFilter {
  const DataOriginCaCertificateFilter({
    this.limit,
    this.offset,
    required this.zoneId,
  });

  final TfArg<num>? limit;

  final TfArg<num>? offset;

  final RefTo<CloudflareZone> zoneId;

  Map<String, Object?> encode() => {
    'limit': ?limit?.toTfJson(),
    'offset': ?offset?.toTfJson(),
    'zone_id': zoneId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_origin_ca_certificate`.
final class DataCloudflareOriginCaCertificate extends Data {
  static const String tfType = 'cloudflare_origin_ca_certificate';

  DataCloudflareOriginCaCertificate(
    super.localName, {
    TfArg<String>? certificateId,
    DataOriginCaCertificateFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_id': ?certificateId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificateSensitive;

  /// A reference to the `cloudflare_origin_ca_certificate` this data source reads, for
  /// arguments typed `RefTo<CloudflareOriginCaCertificate>`.
  RefTo<CloudflareOriginCaCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `csr` attribute.
  TfRef<String> get csr => TfRef.attribute<String>(this, 'csr');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `hostnames` attribute.
  TfRef<List<String>> get hostnames =>
      TfRef.attribute<List<String>>(this, 'hostnames');

  /// Reference to `request_type` attribute.
  TfRef<String> get requestType =>
      TfRef.attribute<String>(this, 'request_type');

  /// Reference to `requested_validity` attribute.
  TfRef<num> get requestedValidity =>
      TfRef.attribute<num>(this, 'requested_validity');

  /// Reference to `certificate_id` attribute.
  TfRef<String> get certificateId =>
      TfRef.attribute<String>(this, 'certificate_id');
}
