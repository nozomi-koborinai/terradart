// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dex_tests`.
const Set<String> _cloudflareZeroTrustDexTestsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dex_tests`.
///
/// Accepted Permissions
///
/// - `Cloudflare DEX Read` - `Cloudflare DEX Write` - `Zero Trust Read` - `Zero
/// Trust Report`
final class DataCloudflareZeroTrustDexTests extends Data {
  static const String tfType = 'cloudflare_zero_trust_dex_tests';

  DataCloudflareZeroTrustDexTests({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? kind,
    TfArg<num>? maxItems,
    TfArg<String>? testName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'kind': ?kind,
           'max_items': ?maxItems,
           'test_name': ?testName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexTestsSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `test_name` attribute.
  TfRef<String> get testName => TfRef.attribute<String>(this, 'test_name');
}
