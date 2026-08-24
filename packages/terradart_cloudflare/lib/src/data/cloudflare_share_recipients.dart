// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share_recipients`.
const Set<String> _cloudflareShareRecipientsSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_recipients`.
final class DataCloudflareShareRecipients extends Data {
  static const String tfType = 'cloudflare_share_recipients';

  DataCloudflareShareRecipients({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? includeResources,
    TfArg<num>? maxItems,
    required TfArg<String> shareId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (includeResources != null) 'include_resources': includeResources,
           if (maxItems != null) 'max_items': maxItems,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareRecipientsSensitive;
}
