// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_network_security_rule`.
const Set<String> _azurermNetworkSecurityRuleSensitive = <String>{};

/// Network Security Rule enum for `access`.
extension type const NetworkSecurityRuleAccess._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecurityRuleAccess.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityRuleAccess.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityRuleAccess.arg(TfArg<String> arg) : this._(arg);

  static const allow = NetworkSecurityRuleAccess._(TfArgLiteral('Allow'));
  static const deny = NetworkSecurityRuleAccess._(TfArgLiteral('Deny'));

  static const List<NetworkSecurityRuleAccess> values = [allow, deny];
}

/// Network Security Rule enum for `direction`.
extension type const NetworkSecurityRuleDirection._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecurityRuleDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityRuleDirection.arg(TfArg<String> arg) : this._(arg);

  static const inbound = NetworkSecurityRuleDirection._(
    TfArgLiteral('Inbound'),
  );
  static const outbound = NetworkSecurityRuleDirection._(
    TfArgLiteral('Outbound'),
  );

  static const List<NetworkSecurityRuleDirection> values = [inbound, outbound];
}

/// Network Security Rule enum for `protocol`.
extension type const NetworkSecurityRuleProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecurityRuleProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityRuleProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityRuleProtocol.arg(TfArg<String> arg) : this._(arg);

  static const ah = NetworkSecurityRuleProtocol._(TfArgLiteral('Ah'));
  static const value = NetworkSecurityRuleProtocol._(TfArgLiteral('*'));
  static const esp = NetworkSecurityRuleProtocol._(TfArgLiteral('Esp'));
  static const icmp = NetworkSecurityRuleProtocol._(TfArgLiteral('Icmp'));
  static const tcp = NetworkSecurityRuleProtocol._(TfArgLiteral('Tcp'));
  static const udp = NetworkSecurityRuleProtocol._(TfArgLiteral('Udp'));

  static const List<NetworkSecurityRuleProtocol> values = [
    ah,
    value,
    esp,
    icmp,
    tcp,
    udp,
  ];
}

/// Exactly one of `destination_address_prefix`, `destination_address_prefixes`, `destination_application_security_group_ids` on `azurerm_network_security_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.destinationAddressPrefix(...)`.
sealed class NetworkSecurityRuleDestination {
  const NetworkSecurityRuleDestination();

  /// Sets `destination_address_prefix`.
  const factory NetworkSecurityRuleDestination.destinationAddressPrefix(
    TfArg<String> destinationAddressPrefix,
  ) = NetworkSecurityRuleDestinationAddressPrefix;

  /// Sets `destination_address_prefixes`.
  const factory NetworkSecurityRuleDestination.destinationAddressPrefixes(
    TfArg<List<String>> destinationAddressPrefixes,
  ) = NetworkSecurityRuleDestinationAddressPrefixes;

  /// Sets `destination_application_security_group_ids`.
  const factory NetworkSecurityRuleDestination.destinationApplicationSecurityGroupIds(
    TfArg<List<String>> destinationApplicationSecurityGroupIds,
  ) = NetworkSecurityRuleDestinationApplicationSecurityGroupIds;

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

/// The [NetworkSecurityRuleDestination.destinationAddressPrefix] choice: sets `destination_address_prefix`.
final class NetworkSecurityRuleDestinationAddressPrefix
    extends NetworkSecurityRuleDestination {
  const NetworkSecurityRuleDestinationAddressPrefix(
    this.destinationAddressPrefix,
  );

  final TfArg<String> destinationAddressPrefix;

  @internal
  @override
  String get blockKey => 'destination_address_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_address_prefix': destinationAddressPrefix.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_address_prefix': destinationAddressPrefix,
  };
}

/// The [NetworkSecurityRuleDestination.destinationAddressPrefixes] choice: sets `destination_address_prefixes`.
final class NetworkSecurityRuleDestinationAddressPrefixes
    extends NetworkSecurityRuleDestination {
  const NetworkSecurityRuleDestinationAddressPrefixes(
    this.destinationAddressPrefixes,
  );

  final TfArg<List<String>> destinationAddressPrefixes;

  @internal
  @override
  String get blockKey => 'destination_address_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_address_prefixes': destinationAddressPrefixes.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_address_prefixes': destinationAddressPrefixes,
  };
}

/// The [NetworkSecurityRuleDestination.destinationApplicationSecurityGroupIds] choice: sets `destination_application_security_group_ids`.
final class NetworkSecurityRuleDestinationApplicationSecurityGroupIds
    extends NetworkSecurityRuleDestination {
  const NetworkSecurityRuleDestinationApplicationSecurityGroupIds(
    this.destinationApplicationSecurityGroupIds,
  );

  final TfArg<List<String>> destinationApplicationSecurityGroupIds;

  @internal
  @override
  String get blockKey => 'destination_application_security_group_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_application_security_group_ids':
        destinationApplicationSecurityGroupIds.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_application_security_group_ids':
        destinationApplicationSecurityGroupIds,
  };
}

/// Exactly one of `source_address_prefix`, `source_address_prefixes`, `source_application_security_group_ids` on `azurerm_network_security_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceAddressPrefix(...)`.
sealed class NetworkSecurityRuleSource {
  const NetworkSecurityRuleSource();

  /// Sets `source_address_prefix`.
  const factory NetworkSecurityRuleSource.sourceAddressPrefix(
    TfArg<String> sourceAddressPrefix,
  ) = NetworkSecurityRuleSourceAddressPrefix;

  /// Sets `source_address_prefixes`.
  const factory NetworkSecurityRuleSource.sourceAddressPrefixes(
    TfArg<List<String>> sourceAddressPrefixes,
  ) = NetworkSecurityRuleSourceAddressPrefixes;

  /// Sets `source_application_security_group_ids`.
  const factory NetworkSecurityRuleSource.sourceApplicationSecurityGroupIds(
    TfArg<List<String>> sourceApplicationSecurityGroupIds,
  ) = NetworkSecurityRuleSourceApplicationSecurityGroupIds;

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

/// The [NetworkSecurityRuleSource.sourceAddressPrefix] choice: sets `source_address_prefix`.
final class NetworkSecurityRuleSourceAddressPrefix
    extends NetworkSecurityRuleSource {
  const NetworkSecurityRuleSourceAddressPrefix(this.sourceAddressPrefix);

  final TfArg<String> sourceAddressPrefix;

  @internal
  @override
  String get blockKey => 'source_address_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_address_prefix': sourceAddressPrefix.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_address_prefix': sourceAddressPrefix,
  };
}

/// The [NetworkSecurityRuleSource.sourceAddressPrefixes] choice: sets `source_address_prefixes`.
final class NetworkSecurityRuleSourceAddressPrefixes
    extends NetworkSecurityRuleSource {
  const NetworkSecurityRuleSourceAddressPrefixes(this.sourceAddressPrefixes);

  final TfArg<List<String>> sourceAddressPrefixes;

  @internal
  @override
  String get blockKey => 'source_address_prefixes';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_address_prefixes': sourceAddressPrefixes.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_address_prefixes': sourceAddressPrefixes,
  };
}

/// The [NetworkSecurityRuleSource.sourceApplicationSecurityGroupIds] choice: sets `source_application_security_group_ids`.
final class NetworkSecurityRuleSourceApplicationSecurityGroupIds
    extends NetworkSecurityRuleSource {
  const NetworkSecurityRuleSourceApplicationSecurityGroupIds(
    this.sourceApplicationSecurityGroupIds,
  );

  final TfArg<List<String>> sourceApplicationSecurityGroupIds;

  @internal
  @override
  String get blockKey => 'source_application_security_group_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_application_security_group_ids': sourceApplicationSecurityGroupIds
        .toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_application_security_group_ids': sourceApplicationSecurityGroupIds,
  };
}

/// At most one of `destination_port_range`, `destination_port_ranges` on `azurerm_network_security_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.destinationPortRange(...)`.
sealed class NetworkSecurityRuleDestinationPortRange {
  const NetworkSecurityRuleDestinationPortRange();

  /// Sets `destination_port_range`.
  const factory NetworkSecurityRuleDestinationPortRange.destinationPortRange(
    TfArg<String> destinationPortRange,
  ) = NetworkSecurityRuleDestinationPortRangeChoice;

  /// Sets `destination_port_ranges`.
  const factory NetworkSecurityRuleDestinationPortRange.destinationPortRanges(
    TfArg<List<String>> destinationPortRanges,
  ) = NetworkSecurityRuleDestinationPortRangeDestinationPortRanges;

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

/// The [NetworkSecurityRuleDestinationPortRange.destinationPortRange] choice: sets `destination_port_range`.
final class NetworkSecurityRuleDestinationPortRangeChoice
    extends NetworkSecurityRuleDestinationPortRange {
  const NetworkSecurityRuleDestinationPortRangeChoice(
    this.destinationPortRange,
  );

  final TfArg<String> destinationPortRange;

  @internal
  @override
  String get blockKey => 'destination_port_range';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_port_range': destinationPortRange.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_port_range': destinationPortRange,
  };
}

/// The [NetworkSecurityRuleDestinationPortRange.destinationPortRanges] choice: sets `destination_port_ranges`.
final class NetworkSecurityRuleDestinationPortRangeDestinationPortRanges
    extends NetworkSecurityRuleDestinationPortRange {
  const NetworkSecurityRuleDestinationPortRangeDestinationPortRanges(
    this.destinationPortRanges,
  );

  final TfArg<List<String>> destinationPortRanges;

  @internal
  @override
  String get blockKey => 'destination_port_ranges';

  @internal
  @override
  Map<String, Object?> encode() => {
    'destination_port_ranges': destinationPortRanges.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'destination_port_ranges': destinationPortRanges,
  };
}

/// At most one of `source_port_range`, `source_port_ranges` on `azurerm_network_security_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.sourcePortRange(...)`.
sealed class NetworkSecurityRuleSourcePortRange {
  const NetworkSecurityRuleSourcePortRange();

  /// Sets `source_port_range`.
  const factory NetworkSecurityRuleSourcePortRange.sourcePortRange(
    TfArg<String> sourcePortRange,
  ) = NetworkSecurityRuleSourcePortRangeChoice;

  /// Sets `source_port_ranges`.
  const factory NetworkSecurityRuleSourcePortRange.sourcePortRanges(
    TfArg<List<String>> sourcePortRanges,
  ) = NetworkSecurityRuleSourcePortRangeSourcePortRanges;

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

/// The [NetworkSecurityRuleSourcePortRange.sourcePortRange] choice: sets `source_port_range`.
final class NetworkSecurityRuleSourcePortRangeChoice
    extends NetworkSecurityRuleSourcePortRange {
  const NetworkSecurityRuleSourcePortRangeChoice(this.sourcePortRange);

  final TfArg<String> sourcePortRange;

  @internal
  @override
  String get blockKey => 'source_port_range';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_port_range': sourcePortRange.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_port_range': sourcePortRange,
  };
}

/// The [NetworkSecurityRuleSourcePortRange.sourcePortRanges] choice: sets `source_port_ranges`.
final class NetworkSecurityRuleSourcePortRangeSourcePortRanges
    extends NetworkSecurityRuleSourcePortRange {
  const NetworkSecurityRuleSourcePortRangeSourcePortRanges(
    this.sourcePortRanges,
  );

  final TfArg<List<String>> sourcePortRanges;

  @internal
  @override
  String get blockKey => 'source_port_ranges';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_port_ranges': sourcePortRanges.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_port_ranges': sourcePortRanges,
  };
}

/// Factory wrapper for `azurerm_network_security_rule`.
final class AzurermNetworkSecurityRule extends Resource {
  static const String tfType = 'azurerm_network_security_rule';

  AzurermNetworkSecurityRule(
    super.localName, {
    required NetworkSecurityRuleAccess access,
    TfArg<String>? description,
    required NetworkSecurityRuleDestination destination,
    NetworkSecurityRuleDestinationPortRange? destinationPortRange,
    required NetworkSecurityRuleDirection direction,
    required TfArg<String> name,
    required TfArg<String> networkSecurityGroupName,
    required TfArg<num> priority,
    required NetworkSecurityRuleProtocol protocol,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required NetworkSecurityRuleSource source,
    NetworkSecurityRuleSourcePortRange? sourcePortRange,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access': access,
           'description': ?description,
           ...destination.argMap,
           ...?destinationPortRange?.argMap,
           'direction': direction,
           'name': name,
           'network_security_group_name': networkSecurityGroupName,
           'priority': priority,
           'protocol': protocol,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           ...source.argMap,
           ...?sourcePortRange?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkSecurityRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkSecurityRule>`.
  RefTo<AzurermNetworkSecurityRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access` attribute.
  TfRef<String> get access => TfRef.attribute<String>(this, 'access');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_address_prefix` attribute.
  TfRef<String> get destinationAddressPrefix =>
      TfRef.attribute<String>(this, 'destination_address_prefix');

  /// Reference to `destination_address_prefixes` attribute.
  TfRef<List<String>> get destinationAddressPrefixes =>
      TfRef.attribute<List<String>>(this, 'destination_address_prefixes');

  /// Reference to `destination_application_security_group_ids` attribute.
  TfRef<List<String>> get destinationApplicationSecurityGroupIds =>
      TfRef.attribute<List<String>>(
        this,
        'destination_application_security_group_ids',
      );

  /// Reference to `destination_port_range` attribute.
  TfRef<String> get destinationPortRange =>
      TfRef.attribute<String>(this, 'destination_port_range');

  /// Reference to `destination_port_ranges` attribute.
  TfRef<List<String>> get destinationPortRanges =>
      TfRef.attribute<List<String>>(this, 'destination_port_ranges');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `network_security_group_name` attribute.
  TfRef<String> get networkSecurityGroupName =>
      TfRef.attribute<String>(this, 'network_security_group_name');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `source_address_prefix` attribute.
  TfRef<String> get sourceAddressPrefix =>
      TfRef.attribute<String>(this, 'source_address_prefix');

  /// Reference to `source_address_prefixes` attribute.
  TfRef<List<String>> get sourceAddressPrefixes =>
      TfRef.attribute<List<String>>(this, 'source_address_prefixes');

  /// Reference to `source_application_security_group_ids` attribute.
  TfRef<List<String>> get sourceApplicationSecurityGroupIds =>
      TfRef.attribute<List<String>>(
        this,
        'source_application_security_group_ids',
      );

  /// Reference to `source_port_range` attribute.
  TfRef<String> get sourcePortRange =>
      TfRef.attribute<String>(this, 'source_port_range');

  /// Reference to `source_port_ranges` attribute.
  TfRef<List<String>> get sourcePortRanges =>
      TfRef.attribute<List<String>>(this, 'source_port_ranges');
}
