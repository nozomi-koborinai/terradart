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
final class CloudflarePageShieldPolicy extends Resource {
  static const String tfType = 'cloudflare_page_shield_policy';

  CloudflarePageShieldPolicy({
    required super.localName,
    required TfArg<String> action,
    required TfArg<String> description,
    required TfArg<bool> enabled,
    required TfArg<String> expression,
    required TfArg<String> value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': description,
           'enabled': enabled,
           'expression': expression,
           'value': value,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
