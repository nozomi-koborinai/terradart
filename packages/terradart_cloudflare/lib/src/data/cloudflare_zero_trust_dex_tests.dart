// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    TfArg<String>? kind,
    TfArg<num>? maxItems,
    TfArg<String>? testName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (kind != null) 'kind': kind,
           if (maxItems != null) 'max_items': maxItems,
           if (testName != null) 'test_name': testName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDexTestsSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');
}
