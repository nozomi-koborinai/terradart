// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_page_shield_policy`.
const Set<String> _cloudflarePageShieldPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_page_shield_policy`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflarePageShieldPolicy extends Data {
  static const String tfType = 'cloudflare_page_shield_policy';

  DataCloudflarePageShieldPolicy({
    required super.localName,
    required TfArg<String> policyId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_id': policyId, if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
