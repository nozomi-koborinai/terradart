// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_rule_set`.
const Set<String> _azurermCdnFrontdoorRuleSetSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_rule_set`.
final class AzurermCdnFrontdoorRuleSet extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_rule_set';

  AzurermCdnFrontdoorRuleSet(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorRuleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorRuleSet>`.
  RefTo<AzurermCdnFrontdoorRuleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');
}
