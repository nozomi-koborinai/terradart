// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_managed_networks.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_managed_networks`.
const Set<String> _cloudflareZeroTrustDeviceManagedNetworksSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_managed_networks`.
final class DataCloudflareZeroTrustDeviceManagedNetworks extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_managed_networks';

  DataCloudflareZeroTrustDeviceManagedNetworks({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> networkId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'network_id': networkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceManagedNetworksSensitive;

  /// A reference to the `cloudflare_zero_trust_device_managed_networks` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDeviceManagedNetworks>`.
  RefTo<CloudflareZeroTrustDeviceManagedNetworks> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
