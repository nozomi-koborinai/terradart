// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../eventgrid/azurerm_eventgrid_partner_namespace.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_eventgrid_partner_namespace`.
const Set<String> _azurermEventgridPartnerNamespaceSensitive = <String>{};

/// Factory wrapper for `azurerm_eventgrid_partner_namespace`.
final class DataAzurermEventgridPartnerNamespace extends Data {
  static const String tfType = 'azurerm_eventgrid_partner_namespace';

  DataAzurermEventgridPartnerNamespace(
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
  Set<String> get sensitiveFields => _azurermEventgridPartnerNamespaceSensitive;

  /// A reference to the `azurerm_eventgrid_partner_namespace` this data source reads, for
  /// arguments typed `RefTo<AzurermEventgridPartnerNamespace>`.
  RefTo<AzurermEventgridPartnerNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `inbound_ip_rule` attribute.
  TfRef<List<Map<String, Object?>>> get inboundIpRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'inbound_ip_rule');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `partner_registration_id` attribute.
  TfRef<String> get partnerRegistrationId =>
      TfRef.attribute<String>(this, 'partner_registration_id');

  /// Reference to `partner_topic_routing_mode` attribute.
  TfRef<String> get partnerTopicRoutingMode =>
      TfRef.attribute<String>(this, 'partner_topic_routing_mode');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
