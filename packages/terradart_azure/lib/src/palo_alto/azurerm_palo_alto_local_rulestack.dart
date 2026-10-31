// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_palo_alto_local_rulestack`.
const Set<String> _azurermPaloAltoLocalRulestackSensitive = <String>{};

/// Palo Alto Local Rulestack Anti Spyware enum for `anti_spyware_profile`.
extension type const PaloAltoLocalRulestackAntiSpywareProfile._(TfArg<String> _)
    implements TfArg<String> {
  PaloAltoLocalRulestackAntiSpywareProfile.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackAntiSpywareProfile.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackAntiSpywareProfile.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackAntiSpywareProfile._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackAntiSpywareProfile._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackAntiSpywareProfile> values = [
    custom,
    bestpractice,
  ];
}

/// Palo Alto Local Rulestack Anti Virus enum for `anti_virus_profile`.
extension type const PaloAltoLocalRulestackAntiVirusProfile._(TfArg<String> _)
    implements TfArg<String> {
  PaloAltoLocalRulestackAntiVirusProfile.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackAntiVirusProfile.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackAntiVirusProfile.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackAntiVirusProfile._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackAntiVirusProfile._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackAntiVirusProfile> values = [
    custom,
    bestpractice,
  ];
}

/// Palo Alto Local Rulestack Dns enum for `dns_subscription`.
extension type const PaloAltoLocalRulestackDnsSubscription._(TfArg<String> _)
    implements TfArg<String> {
  PaloAltoLocalRulestackDnsSubscription.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackDnsSubscription.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackDnsSubscription.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackDnsSubscription._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackDnsSubscription._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackDnsSubscription> values = [
    custom,
    bestpractice,
  ];
}

/// Palo Alto Local Rulestack File Blocking enum for `file_blocking_profile`.
extension type const PaloAltoLocalRulestackFileBlockingProfile._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoLocalRulestackFileBlockingProfile.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackFileBlockingProfile.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackFileBlockingProfile.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackFileBlockingProfile._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackFileBlockingProfile._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackFileBlockingProfile> values = [
    custom,
    bestpractice,
  ];
}

/// Palo Alto Local Rulestack Url Filtering enum for `url_filtering_profile`.
extension type const PaloAltoLocalRulestackUrlFilteringProfile._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoLocalRulestackUrlFilteringProfile.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackUrlFilteringProfile.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackUrlFilteringProfile.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackUrlFilteringProfile._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackUrlFilteringProfile._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackUrlFilteringProfile> values = [
    custom,
    bestpractice,
  ];
}

/// Palo Alto Local Rulestack Vulnerability enum for `vulnerability_profile`.
extension type const PaloAltoLocalRulestackVulnerabilityProfile._(
  TfArg<String> _
) implements TfArg<String> {
  PaloAltoLocalRulestackVulnerabilityProfile.variable(String name)
    : this._(TfArg.variable(name));
  PaloAltoLocalRulestackVulnerabilityProfile.expression(String template)
    : this._(TfArg.expression(template));
  const PaloAltoLocalRulestackVulnerabilityProfile.arg(TfArg<String> arg)
    : this._(arg);

  static const custom = PaloAltoLocalRulestackVulnerabilityProfile._(
    TfArgLiteral('Custom'),
  );
  static const bestpractice = PaloAltoLocalRulestackVulnerabilityProfile._(
    TfArgLiteral('BestPractice'),
  );

  static const List<PaloAltoLocalRulestackVulnerabilityProfile> values = [
    custom,
    bestpractice,
  ];
}

/// Factory wrapper for `azurerm_palo_alto_local_rulestack`.
final class AzurermPaloAltoLocalRulestack extends Resource {
  static const String tfType = 'azurerm_palo_alto_local_rulestack';

  AzurermPaloAltoLocalRulestack(
    super.localName, {
    PaloAltoLocalRulestackAntiSpywareProfile? antiSpywareProfile,
    PaloAltoLocalRulestackAntiVirusProfile? antiVirusProfile,
    TfArg<String>? description,
    PaloAltoLocalRulestackDnsSubscription? dnsSubscription,
    PaloAltoLocalRulestackFileBlockingProfile? fileBlockingProfile,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    PaloAltoLocalRulestackUrlFilteringProfile? urlFilteringProfile,
    PaloAltoLocalRulestackVulnerabilityProfile? vulnerabilityProfile,
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
