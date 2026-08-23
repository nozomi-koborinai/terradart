// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_web3_hostnames`.
const Set<String> _cloudflareWeb3HostnamesSensitive = <String>{};

/// Factory wrapper for `cloudflare_web3_hostnames`.
///
/// Accepted Permissions
///
/// - `Web3 Hostnames Read` - `Web3 Hostnames Write`
final class DataCloudflareWeb3Hostnames extends Data {
  static const String tfType = 'cloudflare_web3_hostnames';

  DataCloudflareWeb3Hostnames({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWeb3HostnamesSensitive;
}
