// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_connectivity_directory_services`.
const Set<String> _cloudflareConnectivityDirectoryServicesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_connectivity_directory_services`.
final class DataCloudflareConnectivityDirectoryServices extends Data {
  static const String tfType = 'cloudflare_connectivity_directory_services';

  DataCloudflareConnectivityDirectoryServices({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? type,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareConnectivityDirectoryServicesSensitive;
}
