// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_resolver_dns_forwarding_ruleset.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_resolver_dns_forwarding_ruleset`.
const Set<String> _azurermPrivateDnsResolverDnsForwardingRulesetSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_dns_forwarding_ruleset`.
final class DataAzurermPrivateDnsResolverDnsForwardingRuleset extends Data {
  static const String tfType =
      'azurerm_private_dns_resolver_dns_forwarding_ruleset';

  DataAzurermPrivateDnsResolverDnsForwardingRuleset(
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
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverDnsForwardingRulesetSensitive;

  /// A reference to the `azurerm_private_dns_resolver_dns_forwarding_ruleset` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsResolverDnsForwardingRuleset>`.
  RefTo<AzurermPrivateDnsResolverDnsForwardingRuleset> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
