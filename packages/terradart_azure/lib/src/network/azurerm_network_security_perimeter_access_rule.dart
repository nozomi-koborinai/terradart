// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_security_perimeter_access_rule`.
const Set<String> _azurermNetworkSecurityPerimeterAccessRuleSensitive =
    <String>{};

/// Network Security Perimeter Access Rule enum for `direction`.
extension type const NetworkSecurityPerimeterAccessRuleDirection._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityPerimeterAccessRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityPerimeterAccessRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityPerimeterAccessRuleDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const inbound = NetworkSecurityPerimeterAccessRuleDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = NetworkSecurityPerimeterAccessRuleDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<NetworkSecurityPerimeterAccessRuleDirection> values = [
    inbound,
    outbound,
  ];
}

/// Exactly one of `address_prefixes`, `fqdns`, `service_tags`, `subscription_ids` on `azurerm_network_security_perimeter_access_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.addressPrefixes(...)`.
sealed class NetworkSecurityPerimeterAccessRuleSource {
  const NetworkSecurityPerimeterAccessRuleSource();

  /// Sets `address_prefixes`.
  const factory NetworkSecurityPerimeterAccessRuleSource.addressPrefixes(
    TfArg<List<String>> addressPrefixes,
  ) = NetworkSecurityPerimeterAccessRuleSourceAddressPrefixes;

  /// Sets `fqdns`.
  const factory NetworkSecurityPerimeterAccessRuleSource.fqdns(
    TfArg<List<String>> fqdns,
  ) = NetworkSecurityPerimeterAccessRuleSourceFqdns;

  /// Sets `service_tags`.
  const factory NetworkSecurityPerimeterAccessRuleSource.serviceTags(
    TfArg<List<String>> serviceTags,
  ) = NetworkSecurityPerimeterAccessRuleSourceServiceTags;

  /// Sets `subscription_ids`.
  const factory NetworkSecurityPerimeterAccessRuleSource.subscriptionIds(
    TfArg<List<String>> subscriptionIds,
  ) = NetworkSecurityPerimeterAccessRuleSourceSubscriptionIds;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkSecurityPerimeterAccessRuleSource.addressPrefixes] choice: sets `address_prefixes`.
final class NetworkSecurityPerimeterAccessRuleSourceAddressPrefixes
    extends NetworkSecurityPerimeterAccessRuleSource {
  const NetworkSecurityPerimeterAccessRuleSourceAddressPrefixes(
    this.addressPrefixes,
  );

  final TfArg<List<String>> addressPrefixes;

  @internal
  @override
  String get blockKey => 'address_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {
    'address_prefixes': addressPrefixes.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'address_prefixes': addressPrefixes,
  };
}

/// The [NetworkSecurityPerimeterAccessRuleSource.fqdns] choice: sets `fqdns`.
final class NetworkSecurityPerimeterAccessRuleSourceFqdns
    extends NetworkSecurityPerimeterAccessRuleSource {
  const NetworkSecurityPerimeterAccessRuleSourceFqdns(this.fqdns);

  final TfArg<List<String>> fqdns;

  @internal
  @override
  String get blockKey => 'fqdns';

  @internal
  @override
  Map<String, Object?> encode() => {'fqdns': fqdns.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'fqdns': fqdns};
}

/// The [NetworkSecurityPerimeterAccessRuleSource.serviceTags] choice: sets `service_tags`.
final class NetworkSecurityPerimeterAccessRuleSourceServiceTags
    extends NetworkSecurityPerimeterAccessRuleSource {
  const NetworkSecurityPerimeterAccessRuleSourceServiceTags(this.serviceTags);

  final TfArg<List<String>> serviceTags;

  @internal
  @override
  String get blockKey => 'service_tags';

  @internal
  @override
  Map<String, Object?> encode() => {'service_tags': serviceTags.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'service_tags': serviceTags};
}

/// The [NetworkSecurityPerimeterAccessRuleSource.subscriptionIds] choice: sets `subscription_ids`.
final class NetworkSecurityPerimeterAccessRuleSourceSubscriptionIds
    extends NetworkSecurityPerimeterAccessRuleSource {
  const NetworkSecurityPerimeterAccessRuleSourceSubscriptionIds(
    this.subscriptionIds,
  );

  final TfArg<List<String>> subscriptionIds;

  @internal
  @override
  String get blockKey => 'subscription_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'subscription_ids': subscriptionIds.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'subscription_ids': subscriptionIds,
  };
}

/// Factory wrapper for `azurerm_network_security_perimeter_access_rule`.
final class AzurermNetworkSecurityPerimeterAccessRule extends Resource {
  static const String tfType = 'azurerm_network_security_perimeter_access_rule';

  AzurermNetworkSecurityPerimeterAccessRule(
    super.localName, {
    required NetworkSecurityPerimeterAccessRuleSource source,
    required NetworkSecurityPerimeterAccessRuleDirection direction,
    required TfArg<String> name,
    required TfArg<String> networkSecurityPerimeterProfileId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...source.argMap,
           'direction': direction,
           'name': name,
           'network_security_perimeter_profile_id':
               networkSecurityPerimeterProfileId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkSecurityPerimeterAccessRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkSecurityPerimeterAccessRule>`.
  RefTo<AzurermNetworkSecurityPerimeterAccessRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `fqdns` attribute.
  TfRef<List<String>> get fqdns => TfRef.attribute<List<String>>(this, 'fqdns');

  /// Reference to `network_security_perimeter_profile_id` attribute.
  TfRef<String> get networkSecurityPerimeterProfileId =>
      TfRef.attribute<String>(this, 'network_security_perimeter_profile_id');

  /// Reference to `service_tags` attribute.
  TfRef<List<String>> get serviceTags =>
      TfRef.attribute<List<String>>(this, 'service_tags');

  /// Reference to `subscription_ids` attribute.
  TfRef<List<String>> get subscriptionIds =>
      TfRef.attribute<List<String>>(this, 'subscription_ids');
}
