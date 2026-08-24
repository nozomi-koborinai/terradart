// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_managed_networks_list`.
const Set<String> _cloudflareZeroTrustDeviceManagedNetworksListSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_managed_networks_list`.
final class DataCloudflareZeroTrustDeviceManagedNetworksList extends Data {
  static const String tfType =
      'cloudflare_zero_trust_device_managed_networks_list';

  DataCloudflareZeroTrustDeviceManagedNetworksList({
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
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceManagedNetworksListSensitive;
}
