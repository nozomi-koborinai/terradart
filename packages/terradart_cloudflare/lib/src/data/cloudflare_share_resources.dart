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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'max_items': ?maxItems,
           'resource_type': ?resourceType,
           'share_id': shareId,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourcesSensitive;
}
