// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_share_recipients`.
const Set<String> _cloudflareShareRecipientsSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipients`.
final class DataCloudflareShareRecipients extends Data {
  static const String tfType = 'cloudflare_share_recipients';

  DataCloudflareShareRecipients({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeResources,
    TfArg<num>? maxItems,
    required TfArg<String> shareId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_resources': ?includeResources,
           'max_items': ?maxItems,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientsSensitive;
}
