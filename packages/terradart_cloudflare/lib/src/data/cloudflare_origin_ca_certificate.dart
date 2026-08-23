// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> zoneId;

  Map<String, Object?> encode() => {
    if (limit != null) 'limit': limit!.toTfJson(),
    if (offset != null) 'offset': offset!.toTfJson(),
    'zone_id': zoneId.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_origin_ca_certificate`.
final class DataCloudflareOriginCaCertificate extends Data {
  static const String tfType = 'cloudflare_origin_ca_certificate';

  DataCloudflareOriginCaCertificate({
    required super.localName,
    TfArg<String>? certificateId,
    DataOriginCaCertificateFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificateId != null) 'certificate_id': certificateId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOriginCaCertificateSensitive;

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
}
