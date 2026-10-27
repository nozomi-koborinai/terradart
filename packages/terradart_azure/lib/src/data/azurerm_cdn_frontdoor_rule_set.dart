// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_rule_set.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_rule_set`.
const Set<String> _azurermCdnFrontdoorRuleSetSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_rule_set`.
final class DataAzurermCdnFrontdoorRuleSet extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_rule_set';

  DataAzurermCdnFrontdoorRuleSet(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> profileName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'profile_name': profileName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorRuleSetSensitive;

  /// A reference to the `azurerm_cdn_frontdoor_rule_set` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorRuleSet>`.
  RefTo<AzurermCdnFrontdoorRuleSet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
