// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_resolver_dns_forwarding_ruleset`.
const Set<String> _azurermPrivateDnsResolverDnsForwardingRulesetSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_dns_forwarding_ruleset`.
final class AzurermPrivateDnsResolverDnsForwardingRuleset extends Resource {
  static const String tfType =
      'azurerm_private_dns_resolver_dns_forwarding_ruleset';

  AzurermPrivateDnsResolverDnsForwardingRuleset(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<List<String>> privateDnsResolverOutboundEndpointIds,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'private_dns_resolver_outbound_endpoint_ids':
               privateDnsResolverOutboundEndpointIds,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverDnsForwardingRulesetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsResolverDnsForwardingRuleset>`.
  RefTo<AzurermPrivateDnsResolverDnsForwardingRuleset> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_dns_resolver_outbound_endpoint_ids` attribute.
  TfRef<List<String>> get privateDnsResolverOutboundEndpointIds =>
      TfRef.attribute<List<String>>(
        this,
        'private_dns_resolver_outbound_endpoint_ids',
      );

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
