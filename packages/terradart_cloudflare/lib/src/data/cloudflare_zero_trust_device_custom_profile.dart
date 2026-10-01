// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_custom_profile.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_custom_profile`.
const Set<String> _cloudflareZeroTrustDeviceCustomProfileSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_device_custom_profile` (derived from provider schema).
@immutable
final class DataZeroTrustDeviceCustomProfileFilter {
  const DataZeroTrustDeviceCustomProfileFilter({this.profileType});

  final DataZeroTrustDeviceCustomProfileFilterProfileType? profileType;

  Map<String, Object?> encode() => {'profile_type': ?profileType?.toTfJson()};
}

/// `profile_type` — derived from the provider schema description.
extension type const DataZeroTrustDeviceCustomProfileFilterProfileType._(
  TfArg<String> _
) implements TfArg<String> {
  DataZeroTrustDeviceCustomProfileFilterProfileType.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustDeviceCustomProfileFilterProfileType.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustDeviceCustomProfileFilterProfileType.arg(TfArg<String> arg)
    : this._(arg);

  static const warp = DataZeroTrustDeviceCustomProfileFilterProfileType._(
    TfArgLiteral('warp'),
  );
  static const browserExtension =
      DataZeroTrustDeviceCustomProfileFilterProfileType._(
        TfArgLiteral('browser_extension'),
      );

  static const List<DataZeroTrustDeviceCustomProfileFilterProfileType> values =
      [warp, browserExtension];
}

/// Factory wrapper for `cloudflare_zero_trust_device_custom_profile`.
final class DataCloudflareZeroTrustDeviceCustomProfile extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_custom_profile';

  DataCloudflareZeroTrustDeviceCustomProfile(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? policyId,
    DataZeroTrustDeviceCustomProfileFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'policy_id': ?policyId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceCustomProfileSensitive;

  /// A reference to the `cloudflare_zero_trust_device_custom_profile` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDeviceCustomProfile>`.
  RefTo<CloudflareZeroTrustDeviceCustomProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<bool> get defaultAttr => TfRef.attribute<bool>(this, 'default');

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

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileType =>
      TfRef.attribute<String>(this, 'profile_type');

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

  /// Reference to `uninstall_protection` attribute.
  TfRef<bool> get uninstallProtection =>
      TfRef.attribute<bool>(this, 'uninstall_protection');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
