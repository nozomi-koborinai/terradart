// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack`.
const Set<String> _azurermPaloAltoLocalRulestackSensitive = <String>{};

/// Factory wrapper for `azurerm_palo_alto_local_rulestack`.
final class AzurermPaloAltoLocalRulestack extends Resource {
  static const String tfType = 'azurerm_palo_alto_local_rulestack';

  AzurermPaloAltoLocalRulestack(
    super.localName, {
    TfArg<String>? antiSpywareProfile,
    TfArg<String>? antiVirusProfile,
    TfArg<String>? description,
    TfArg<String>? dnsSubscription,
    TfArg<String>? fileBlockingProfile,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? urlFilteringProfile,
    TfArg<String>? vulnerabilityProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'anti_spyware_profile': ?antiSpywareProfile,
           'anti_virus_profile': ?antiVirusProfile,
           'description': ?description,
           'dns_subscription': ?dnsSubscription,
           'file_blocking_profile': ?fileBlockingProfile,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'url_filtering_profile': ?urlFilteringProfile,
           'vulnerability_profile': ?vulnerabilityProfile,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPaloAltoLocalRulestackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoLocalRulestack>`.
  RefTo<AzurermPaloAltoLocalRulestack> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anti_spyware_profile` attribute.
  TfRef<String> get antiSpywareProfile =>
      TfRef.attribute<String>(this, 'anti_spyware_profile');

  /// Reference to `anti_virus_profile` attribute.
  TfRef<String> get antiVirusProfile =>
      TfRef.attribute<String>(this, 'anti_virus_profile');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_subscription` attribute.
  TfRef<String> get dnsSubscription =>
      TfRef.attribute<String>(this, 'dns_subscription');

  /// Reference to `file_blocking_profile` attribute.
  TfRef<String> get fileBlockingProfile =>
      TfRef.attribute<String>(this, 'file_blocking_profile');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `url_filtering_profile` attribute.
  TfRef<String> get urlFilteringProfile =>
      TfRef.attribute<String>(this, 'url_filtering_profile');

  /// Reference to `vulnerability_profile` attribute.
  TfRef<String> get vulnerabilityProfile =>
      TfRef.attribute<String>(this, 'vulnerability_profile');
}
