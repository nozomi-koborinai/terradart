// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_token`.
const Set<String> _cloudflareAccountTokenSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class DataAccountTokenFilter {
  const DataAccountTokenFilter({this.direction, this.includeExpired});

  final TfArg<String>? direction;

  final TfArg<bool>? includeExpired;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (includeExpired != null) 'include_expired': includeExpired!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_account_token`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountToken extends Data {
  static const String tfType = 'cloudflare_account_token';

  DataCloudflareAccountToken({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? tokenId,
    DataAccountTokenFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (tokenId != null) 'token_id': tokenId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountTokenSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issued_on` attribute.
  TfRef<String> get issuedOn => TfRef.attribute<String>(this, 'issued_on');

  /// Reference to `last_used_on` attribute.
  TfRef<String> get lastUsedOn => TfRef.attribute<String>(this, 'last_used_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
