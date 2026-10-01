// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_page_shield_policy`.
const Set<String> _cloudflarePageShieldPolicySensitive = <String>{};

/// Page Shield Policy enum for `action`.
enum PageShieldPolicyAction implements TerraformEnum {
  allow('allow'),
  log('log'),
  addReportingDirectives('add_reporting_directives');

  const PageShieldPolicyAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_page_shield_policy`.
///
/// Accepted Permissions
///
/// - `Domain Page Shield` - `Domain Page Shield Read` - `Page Shield` - `Page
/// Shield Read` - `Zone Settings Read` - `Zone Settings Write`
final class CloudflarePageShieldPolicy extends Resource {
  static const String tfType = 'cloudflare_page_shield_policy';

  CloudflarePageShieldPolicy(
    super.localName, {
    required TfArg<PageShieldPolicyAction> action,
    required TfArg<String> description,
    required TfArg<bool> enabled,
    required TfArg<String> expression,
    required TfArg<String> value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': description,
           'enabled': enabled,
           'expression': expression,
           'value': value,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePageShieldPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePageShieldPolicy>`.
  RefTo<CloudflarePageShieldPolicy> get ref => RefTo.of(this);

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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
