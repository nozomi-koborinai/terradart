// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_service_token.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    'name': ?name?.toTfJson(),
    'search': ?search?.toTfJson(),
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? serviceTokenId,
    RefTo<CloudflareZone>? zoneId,
    DataZeroTrustAccessServiceTokenFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'service_token_id': ?serviceTokenId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokenSensitive;

  /// A reference to the `cloudflare_zero_trust_access_service_token` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessServiceToken>`.
  RefTo<CloudflareZeroTrustAccessServiceToken> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `service_token_id` attribute.
  TfRef<String> get serviceTokenIdRef =>
      TfRef.attribute<String>(this, 'service_token_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
