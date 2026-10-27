// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_enrichment`.
const Set<String> _azurermIothubEnrichmentSensitive = <String>{};

/// Factory wrapper for `azurerm_iothub_enrichment`.
final class AzurermIothubEnrichment extends Resource {
  static const String tfType = 'azurerm_iothub_enrichment';

  AzurermIothubEnrichment(
    super.localName, {
    required TfArg<List<String>> endpointNames,
    required TfArg<String> iothubName,
    required TfArg<String> key,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_names': endpointNames,
           'iothub_name': iothubName,
           'key': key,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubEnrichmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubEnrichment>`.
  RefTo<AzurermIothubEnrichment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint_names` attribute.
  TfRef<List<String>> get endpointNames =>
      TfRef.attribute<List<String>>(this, 'endpoint_names');

  /// Reference to `iothub_name` attribute.
  TfRef<String> get iothubName => TfRef.attribute<String>(this, 'iothub_name');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
