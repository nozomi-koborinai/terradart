// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account_token.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_token`.
const Set<String> _cloudflareAccountTokenSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account_token` (derived from provider schema).
@immutable
final class DataAccountTokenFilter {
  const DataAccountTokenFilter({this.direction, this.includeExpired});

  final TfArg<DataAccountTokenDirection>? direction;

  final TfArg<bool>? includeExpired;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'include_expired': ?includeExpired?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataAccountTokenDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataAccountTokenDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_account_token`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountToken extends Data {
  static const String tfType = 'cloudflare_account_token';

  DataCloudflareAccountToken(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? tokenId,
    DataAccountTokenFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'token_id': ?tokenId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountTokenSensitive;

  /// A reference to the `cloudflare_account_token` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccountToken>`.
  RefTo<CloudflareAccountToken> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `token_id` attribute.
  TfRef<String> get tokenId => TfRef.attribute<String>(this, 'token_id');
}
