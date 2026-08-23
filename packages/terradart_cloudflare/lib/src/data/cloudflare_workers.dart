// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers`.
const Set<String> _cloudflareWorkersSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkers extends Data {
  static const String tfType = 'cloudflare_workers';

  DataCloudflareWorkers({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? orderBy,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (orderBy != null) 'order_by': orderBy,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersSensitive;
}
