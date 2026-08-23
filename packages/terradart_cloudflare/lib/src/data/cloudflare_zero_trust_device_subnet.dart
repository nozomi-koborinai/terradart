// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_subnet`.
const Set<String> _cloudflareZeroTrustDeviceSubnetSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_subnet`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write`
final class DataCloudflareZeroTrustDeviceSubnet extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_subnet';

  DataCloudflareZeroTrustDeviceSubnet({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> subnetId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDeviceSubnetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `is_default_network` attribute.
  TfRef<bool> get isDefaultNetwork =>
      TfRef.attribute<bool>(this, 'is_default_network');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `subnet_type` attribute.
  TfRef<String> get subnetType => TfRef.attribute<String>(this, 'subnet_type');
}
