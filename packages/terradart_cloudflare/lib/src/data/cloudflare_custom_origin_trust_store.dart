// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_custom_origin_trust_store.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_origin_trust_store`.
const Set<String> _cloudflareCustomOriginTrustStoreSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_custom_origin_trust_store` (derived from provider schema).
@immutable
final class DataCustomOriginTrustStoreFilter {
  const DataCustomOriginTrustStoreFilter({this.limit, this.offset});

  final TfArg<num>? limit;

  final TfArg<num>? offset;

  Map<String, Object?> encode() => {
    'limit': ?limit?.toTfJson(),
    'offset': ?offset?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_origin_trust_store`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomOriginTrustStore extends Data {
  static const String tfType = 'cloudflare_custom_origin_trust_store';

  DataCloudflareCustomOriginTrustStore({
    required super.localName,
    TfArg<String>? customOriginTrustStoreId,
    RefTo<CloudflareZone>? zoneId,
    DataCustomOriginTrustStoreFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_origin_trust_store_id': ?customOriginTrustStoreId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomOriginTrustStoreSensitive;

  /// A reference to the `cloudflare_custom_origin_trust_store` this data source reads, for
  /// arguments typed `RefTo<CloudflareCustomOriginTrustStore>`.
  RefTo<CloudflareCustomOriginTrustStore> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');

  /// Reference to `custom_origin_trust_store_id` attribute.
  TfRef<String> get customOriginTrustStoreId =>
      TfRef.attribute<String>(this, 'custom_origin_trust_store_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
