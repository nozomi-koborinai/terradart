// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_tokens`.
const Set<String> _cloudflareAccountTokensSensitive = <String>{};

/// Factory wrapper for `cloudflare_account_tokens`.
///
/// Accepted Permissions
///
/// - `Account API Tokens Read` - `Account API Tokens Write`
final class DataCloudflareAccountTokens extends Data {
  static const String tfType = 'cloudflare_account_tokens';

  DataCloudflareAccountTokens({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? direction,
    TfArg<bool>? includeExpired,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'include_expired': ?includeExpired,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountTokensSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get directionRef => TfRef.attribute<String>(this, 'direction');

  /// Reference to `include_expired` attribute.
  TfRef<bool> get includeExpiredRef =>
      TfRef.attribute<bool>(this, 'include_expired');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
