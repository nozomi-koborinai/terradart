// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_ip_profile`.
const Set<String> _cloudflareZeroTrustDeviceIpProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_ip_profile`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustDeviceIpProfile extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_ip_profile';

  CloudflareZeroTrustDeviceIpProfile({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> match,
    required TfArg<String> name,
    required TfArg<num> precedence,
    required TfArg<String> subnetId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           'match': match,
           'name': name,
           'precedence': precedence,
           'subnet_id': subnetId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceIpProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
