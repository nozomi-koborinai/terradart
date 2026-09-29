// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_gateway_settings.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_gateway_settings`.
const Set<String> _cloudflareZeroTrustGatewaySettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_settings`.
final class DataCloudflareZeroTrustGatewaySettings extends Data {
  static const String tfType = 'cloudflare_zero_trust_gateway_settings';

  DataCloudflareZeroTrustGatewaySettings({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewaySettingsSensitive;

  /// A reference to the `cloudflare_zero_trust_gateway_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustGatewaySettings>`.
  RefTo<CloudflareZeroTrustGatewaySettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
