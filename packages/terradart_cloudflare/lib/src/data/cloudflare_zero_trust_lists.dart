// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_lists`.
const Set<String> _cloudflareZeroTrustListsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_lists`.
final class DataCloudflareZeroTrustLists extends Data {
  static const String tfType = 'cloudflare_zero_trust_lists';

  DataCloudflareZeroTrustLists({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    TfArg<String>? orderBy,
    TfArg<String>? search,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'search': ?search,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustListsSensitive;
}
