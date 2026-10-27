// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_availability_set.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_availability_set`.
const Set<String> _azurermAvailabilitySetSensitive = <String>{};

/// Factory wrapper for `azurerm_availability_set`.
final class DataAzurermAvailabilitySet extends Data {
  static const String tfType = 'azurerm_availability_set';

  DataAzurermAvailabilitySet(
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
  Set<String> get sensitiveFields => _azurermAvailabilitySetSensitive;

  /// A reference to the `azurerm_availability_set` this data source reads, for
  /// arguments typed `RefTo<AzurermAvailabilitySet>`.
  RefTo<AzurermAvailabilitySet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed` attribute.
  TfRef<bool> get managed => TfRef.attribute<bool>(this, 'managed');

  /// Reference to `platform_fault_domain_count` attribute.
  TfRef<num> get platformFaultDomainCount =>
      TfRef.attribute<num>(this, 'platform_fault_domain_count');

  /// Reference to `platform_update_domain_count` attribute.
  TfRef<num> get platformUpdateDomainCount =>
      TfRef.attribute<num>(this, 'platform_update_domain_count');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
