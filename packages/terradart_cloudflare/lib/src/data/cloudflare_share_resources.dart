// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share_resources`.
const Set<String> _cloudflareShareResourcesSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_resources`.
final class DataCloudflareShareResources extends Data {
  static const String tfType = 'cloudflare_share_resources';

  DataCloudflareShareResources({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    TfArg<String>? resourceType,
    required TfArg<String> shareId,
    TfArg<String>? status,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (resourceType != null) 'resource_type': resourceType,
           'share_id': shareId,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourcesSensitive;
}
