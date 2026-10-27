// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_profile.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_profile`.
const Set<String> _azurermCdnFrontdoorProfileSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_profile`.
final class DataAzurermCdnFrontdoorProfile extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_profile';

  DataAzurermCdnFrontdoorProfile(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorProfileSensitive;

  /// A reference to the `azurerm_cdn_frontdoor_profile` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorProfile>`.
  RefTo<AzurermCdnFrontdoorProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `log_scrubbing_rule` attribute.
  TfRef<List<Map<String, Object?>>> get logScrubbingRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'log_scrubbing_rule');

  /// Reference to `resource_guid` attribute.
  TfRef<String> get resourceGuid =>
      TfRef.attribute<String>(this, 'resource_guid');

  /// Reference to `response_timeout_seconds` attribute.
  TfRef<num> get responseTimeoutSeconds =>
      TfRef.attribute<num>(this, 'response_timeout_seconds');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
