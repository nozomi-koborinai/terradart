// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_lists`.
const Set<String> _cloudflareListsSensitive = <String>{};

/// Factory wrapper for `cloudflare_lists`.
///
/// Accepted Permissions
///
/// - `Account Filter Lists Edit` - `Account Filter Lists Read`
final class DataCloudflareLists extends Data {
  static const String tfType = 'cloudflare_lists';

  DataCloudflareLists({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareListsSensitive;
}
