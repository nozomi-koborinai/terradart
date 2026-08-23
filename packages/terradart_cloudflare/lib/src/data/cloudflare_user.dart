// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user`.
const Set<String> _cloudflareUserSensitive = <String>{};

/// Factory wrapper for `cloudflare_user`.
///
/// Accepted Permissions
///
/// - `User Details Read` - `User Details Write`
final class DataCloudflareUser extends Data {
  static const String tfType = 'cloudflare_user';

  DataCloudflareUser({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _cloudflareUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `betas` attribute.
  TfRef<List<String>> get betas => TfRef.attribute<List<String>>(this, 'betas');

  /// Reference to `country` attribute.
  TfRef<String> get country => TfRef.attribute<String>(this, 'country');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstName => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `has_business_zones` attribute.
  TfRef<bool> get hasBusinessZones =>
      TfRef.attribute<bool>(this, 'has_business_zones');

  /// Reference to `has_enterprise_zones` attribute.
  TfRef<bool> get hasEnterpriseZones =>
      TfRef.attribute<bool>(this, 'has_enterprise_zones');

  /// Reference to `has_pro_zones` attribute.
  TfRef<bool> get hasProZones => TfRef.attribute<bool>(this, 'has_pro_zones');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastName => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');

  /// Reference to `telephone` attribute.
  TfRef<String> get telephone => TfRef.attribute<String>(this, 'telephone');

  /// Reference to `two_factor_authentication_enabled` attribute.
  TfRef<bool> get twoFactorAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'two_factor_authentication_enabled');

  /// Reference to `two_factor_authentication_locked` attribute.
  TfRef<bool> get twoFactorAuthenticationLocked =>
      TfRef.attribute<bool>(this, 'two_factor_authentication_locked');

  /// Reference to `zipcode` attribute.
  TfRef<String> get zipcode => TfRef.attribute<String>(this, 'zipcode');
}
