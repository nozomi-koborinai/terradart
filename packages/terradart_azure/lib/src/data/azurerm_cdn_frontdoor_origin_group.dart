// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_origin_group.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_origin_group`.
const Set<String> _azurermCdnFrontdoorOriginGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_origin_group`.
final class DataAzurermCdnFrontdoorOriginGroup extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_origin_group';

  DataAzurermCdnFrontdoorOriginGroup(
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
  Set<String> get sensitiveFields => _azurermCdnFrontdoorOriginGroupSensitive;

  /// A reference to the `azurerm_cdn_frontdoor_origin_group` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorOriginGroup>`.
  RefTo<AzurermCdnFrontdoorOriginGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `health_probe` attribute.
  TfRef<List<Map<String, Object?>>> get healthProbe =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_probe');

  /// Reference to `load_balancing` attribute.
  TfRef<List<Map<String, Object?>>> get loadBalancing =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'load_balancing');

  /// Reference to `restore_traffic_time_to_healed_or_new_endpoint_in_minutes` attribute.
  TfRef<num> get restoreTrafficTimeToHealedOrNewEndpointInMinutes =>
      TfRef.attribute<num>(
        this,
        'restore_traffic_time_to_healed_or_new_endpoint_in_minutes',
      );

  /// Reference to `session_affinity_enabled` attribute.
  TfRef<bool> get sessionAffinityEnabled =>
      TfRef.attribute<bool>(this, 'session_affinity_enabled');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
