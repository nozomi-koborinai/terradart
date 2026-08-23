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
final class CloudflareZeroTrustDeviceSubnet extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_subnet';

  CloudflareZeroTrustDeviceSubnet({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comment,
    TfArg<bool>? isDefaultNetwork,
    required TfArg<String> name,
    required TfArg<String> network,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comment != null) 'comment': comment,
           if (isDefaultNetwork != null) 'is_default_network': isDefaultNetwork,
           'name': name,
           'network': network,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDeviceSubnetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `subnet_type` attribute.
  TfRef<String> get subnetType => TfRef.attribute<String>(this, 'subnet_type');
}
