// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_custom_profile`.
const Set<String> _cloudflareZeroTrustDeviceCustomProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_custom_profile`.
final class DataCloudflareZeroTrustDeviceCustomProfile extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_custom_profile';

  DataCloudflareZeroTrustDeviceCustomProfile({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> policyId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'policy_id': policyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceCustomProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_mode_switch` attribute.
  TfRef<bool> get allowModeSwitch =>
      TfRef.attribute<bool>(this, 'allow_mode_switch');

  /// Reference to `allow_updates` attribute.
  TfRef<bool> get allowUpdates => TfRef.attribute<bool>(this, 'allow_updates');

  /// Reference to `allowed_to_leave` attribute.
  TfRef<bool> get allowedToLeave =>
      TfRef.attribute<bool>(this, 'allowed_to_leave');

  /// Reference to `auto_connect` attribute.
  TfRef<num> get autoConnect => TfRef.attribute<num>(this, 'auto_connect');

  /// Reference to `captive_portal` attribute.
  TfRef<num> get captivePortal => TfRef.attribute<num>(this, 'captive_portal');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultCase => TfRef.attribute<bool>(this, 'default');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_auto_fallback` attribute.
  TfRef<bool> get disableAutoFallback =>
      TfRef.attribute<bool>(this, 'disable_auto_fallback');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `exclude_office_ips` attribute.
  TfRef<bool> get excludeOfficeIps =>
      TfRef.attribute<bool>(this, 'exclude_office_ips');

  /// Reference to `gateway_unique_id` attribute.
  TfRef<String> get gatewayUniqueId =>
      TfRef.attribute<String>(this, 'gateway_unique_id');

  /// Reference to `lan_allow_minutes` attribute.
  TfRef<num> get lanAllowMinutes =>
      TfRef.attribute<num>(this, 'lan_allow_minutes');

  /// Reference to `lan_allow_subnet_size` attribute.
  TfRef<num> get lanAllowSubnetSize =>
      TfRef.attribute<num>(this, 'lan_allow_subnet_size');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `register_interface_ip_with_dns` attribute.
  TfRef<bool> get registerInterfaceIpWithDns =>
      TfRef.attribute<bool>(this, 'register_interface_ip_with_dns');

  /// Reference to `sccm_vpn_boundary_support` attribute.
  TfRef<bool> get sccmVpnBoundarySupport =>
      TfRef.attribute<bool>(this, 'sccm_vpn_boundary_support');

  /// Reference to `support_url` attribute.
  TfRef<String> get supportUrl => TfRef.attribute<String>(this, 'support_url');

  /// Reference to `switch_locked` attribute.
  TfRef<bool> get switchLocked => TfRef.attribute<bool>(this, 'switch_locked');

  /// Reference to `tunnel_protocol` attribute.
  TfRef<String> get tunnelProtocol =>
      TfRef.attribute<String>(this, 'tunnel_protocol');
}
