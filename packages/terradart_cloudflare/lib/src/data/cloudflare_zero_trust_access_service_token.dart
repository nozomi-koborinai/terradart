// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_service_token`.
const Set<String> _cloudflareZeroTrustAccessServiceTokenSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_service_token` (derived from provider schema).
@immutable
final class DataZeroTrustAccessServiceTokenFilter {
  const DataZeroTrustAccessServiceTokenFilter({this.name, this.search});

  final TfArg<String>? name;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_service_token`.
///
/// Accepted Permissions
///
/// - `Access: Service Tokens Read` - `Access: Service Tokens Write`
final class DataCloudflareZeroTrustAccessServiceToken extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_service_token';

  DataCloudflareZeroTrustAccessServiceToken({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? serviceTokenId,
    TfArg<String>? zoneId,
    DataZeroTrustAccessServiceTokenFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (serviceTokenId != null) 'service_token_id': serviceTokenId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');
}
