// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (limit != null) 'limit': limit!.toTfJson(),
    if (offset != null) 'offset': offset!.toTfJson(),
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
    TfArg<String>? zoneId,
    DataCustomOriginTrustStoreFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customOriginTrustStoreId != null)
             'custom_origin_trust_store_id': customOriginTrustStoreId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomOriginTrustStoreSensitive;

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
}
