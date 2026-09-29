// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pages_domains`.
const Set<String> _cloudflarePagesDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_pages_domains`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class DataCloudflarePagesDomains extends Data {
  static const String tfType = 'cloudflare_pages_domains';

  DataCloudflarePagesDomains({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    required TfArg<String> projectName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'project_name': projectName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesDomainsSensitive;
}
