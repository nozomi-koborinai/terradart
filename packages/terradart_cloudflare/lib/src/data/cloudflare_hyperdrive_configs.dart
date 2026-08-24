// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_hyperdrive_configs`.
const Set<String> _cloudflareHyperdriveConfigsSensitive = <String>{
  'result.origin.access_client_secret',
  'result.origin.password',
};

/// Factory wrapper for `cloudflare_hyperdrive_configs`.
///
/// Accepted Permissions
///
/// - `Hyperdrive Read` - `Hyperdrive Write`
final class DataCloudflareHyperdriveConfigs extends Data {
  static const String tfType = 'cloudflare_hyperdrive_configs';

  DataCloudflareHyperdriveConfigs({
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
  Set<String> get sensitiveFields => _cloudflareHyperdriveConfigsSensitive;
}
