// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_flagship_flags`.
const Set<String> _cloudflareFlagshipFlagsSensitive = <String>{};

/// Factory wrapper for `cloudflare_flagship_flags`.
///
/// Accepted Permissions
///
/// - `Flagship Read`
final class DataCloudflareFlagshipFlags extends Data {
  static const String tfType = 'cloudflare_flagship_flags';

  DataCloudflareFlagshipFlags({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> appId,
    TfArg<String>? limit,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'app_id': appId,
           'limit': ?limit,
           'max_items': ?maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFlagshipFlagsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `limit` attribute.
  TfRef<String> get limit => TfRef.attribute<String>(this, 'limit');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
