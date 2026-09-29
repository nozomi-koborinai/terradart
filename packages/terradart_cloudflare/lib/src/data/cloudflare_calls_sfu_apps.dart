// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_calls_sfu_apps`.
const Set<String> _cloudflareCallsSfuAppsSensitive = <String>{};

/// Factory wrapper for `cloudflare_calls_sfu_apps`.
///
/// Accepted Permissions
///
/// - `Calls Read` - `Calls Write`
final class DataCloudflareCallsSfuApps extends Data {
  static const String tfType = 'cloudflare_calls_sfu_apps';

  DataCloudflareCallsSfuApps({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId, 'max_items': ?maxItems},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCallsSfuAppsSensitive;
}
