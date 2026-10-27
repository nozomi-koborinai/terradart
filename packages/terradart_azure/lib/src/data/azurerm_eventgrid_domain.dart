// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventgrid/azurerm_eventgrid_domain.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_domain`.
const Set<String> _azurermEventgridDomainSensitive = <String>{
  'primary_access_key',
  'secondary_access_key',
};

/// Factory wrapper for `azurerm_eventgrid_domain`.
final class DataAzurermEventgridDomain extends Data {
  static const String tfType = 'azurerm_eventgrid_domain';

  DataAzurermEventgridDomain(
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
  Set<String> get sensitiveFields => _azurermEventgridDomainSensitive;

  /// A reference to the `azurerm_eventgrid_domain` this data source reads, for
  /// arguments typed `RefTo<AzurermEventgridDomain>`.
  RefTo<AzurermEventgridDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `inbound_ip_rule` attribute.
  TfRef<List<Map<String, Object?>>> get inboundIpRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inbound_ip_rule');

  /// Reference to `input_mapping_default_values` attribute.
  TfRef<List<Map<String, Object?>>> get inputMappingDefaultValues =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'input_mapping_default_values',
      );

  /// Reference to `input_mapping_fields` attribute.
  TfRef<List<Map<String, Object?>>> get inputMappingFields =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'input_mapping_fields');

  /// Reference to `input_schema` attribute.
  TfRef<String> get inputSchema =>
      TfRef.attribute<String>(this, 'input_schema');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
