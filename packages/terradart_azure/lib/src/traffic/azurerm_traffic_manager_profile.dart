// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_traffic_manager_profile`.
const Set<String> _azurermTrafficManagerProfileSensitive = <String>{};

/// Traffic Manager Profile enum for `profile_status`.
extension type const TrafficManagerProfileStatus._(TfArg<String> _)
    implements TfArg<String> {
  TrafficManagerProfileStatus.variable(String name)
    : this._(TfArg.variable(name));
  TrafficManagerProfileStatus.expression(String template)
    : this._(TfArg.expression(template));
  const TrafficManagerProfileStatus.arg(TfArg<String> arg) : this._(arg);

  static const disabled = TrafficManagerProfileStatus._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = TrafficManagerProfileStatus._(TfArgLiteral('Enabled'));

  static const List<TrafficManagerProfileStatus> values = [disabled, enabled];
}

/// Traffic Manager Profile Traffic Routing enum for `traffic_routing_method`.
extension type const TrafficManagerProfileTrafficRoutingMethod._(
  TfArg<String> _
) implements TfArg<String> {
  TrafficManagerProfileTrafficRoutingMethod.variable(String name)
    : this._(TfArg.variable(name));
  TrafficManagerProfileTrafficRoutingMethod.expression(String template)
    : this._(TfArg.expression(template));
  const TrafficManagerProfileTrafficRoutingMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const geographic = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('Geographic'),
  );
  static const multivalue = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('MultiValue'),
  );
  static const performance = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('Performance'),
  );
  static const priority = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('Priority'),
  );
  static const subnet = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('Subnet'),
  );
  static const weighted = TrafficManagerProfileTrafficRoutingMethod._(
    TfArgLiteral('Weighted'),
  );

  static const List<TrafficManagerProfileTrafficRoutingMethod> values = [
    geographic,
    multivalue,
    performance,
    priority,
    subnet,
    weighted,
  ];
}

/// Typed helper for the `dns_config` block of
/// `azurerm_traffic_manager_profile` (derived from provider schema).
@immutable
final class TrafficManagerProfileDnsConfig {
  const TrafficManagerProfileDnsConfig({
    required this.relativeName,
    required this.ttl,
  });

  final TfArg<String> relativeName;

  final TfArg<num> ttl;

  @internal
  Map<String, Object?> encode() => {
    'relative_name': relativeName.toTfJson(),
    'ttl': ttl.toTfJson(),
  };
}

/// Typed helper for the `monitor_config` block of
/// `azurerm_traffic_manager_profile` (derived from provider schema).
@immutable
final class TrafficManagerProfileMonitorConfig {
  const TrafficManagerProfileMonitorConfig({
    this.expectedStatusCodeRanges,
    this.intervalInSeconds,
    this.path,
    required this.port,
    required this.protocol,
    this.timeoutInSeconds,
    this.toleratedNumberOfFailures,
    this.customHeader,
  });

  final TfArg<List<String>>? expectedStatusCodeRanges;

  final TfArg<num>? intervalInSeconds;

  final TfArg<String>? path;

  final TfArg<num> port;

  final TrafficManagerProfileProtocol protocol;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<num>? toleratedNumberOfFailures;

  final List<TrafficManagerProfileCustomHeader>? customHeader;

  @internal
  Map<String, Object?> encode() => {
    'expected_status_code_ranges': ?expectedStatusCodeRanges?.toTfJson(),
    'interval_in_seconds': ?intervalInSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'tolerated_number_of_failures': ?toleratedNumberOfFailures?.toTfJson(),
    if (customHeader != null)
      'custom_header': [for (final e in customHeader!) e.encode()],
  };
}

/// `protocol` — derived from the provider schema description.
extension type const TrafficManagerProfileProtocol._(TfArg<String> _)
    implements TfArg<String> {
  TrafficManagerProfileProtocol.variable(String name)
    : this._(TfArg.variable(name));
  TrafficManagerProfileProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const TrafficManagerProfileProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = TrafficManagerProfileProtocol._(TfArgLiteral('HTTP'));
  static const https = TrafficManagerProfileProtocol._(TfArgLiteral('HTTPS'));
  static const tcp = TrafficManagerProfileProtocol._(TfArgLiteral('TCP'));

  static const List<TrafficManagerProfileProtocol> values = [http, https, tcp];
}

/// Typed helper for the `monitor_config.custom_header` block of
/// `azurerm_traffic_manager_profile` (derived from provider schema).
@immutable
final class TrafficManagerProfileCustomHeader {
  const TrafficManagerProfileCustomHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_traffic_manager_profile`.
final class AzurermTrafficManagerProfile extends Resource {
  static const String tfType = 'azurerm_traffic_manager_profile';

  AzurermTrafficManagerProfile(
    super.localName, {
    TfArg<num>? maxReturn,
    required TfArg<String> name,
    TrafficManagerProfileStatus? profileStatus,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TrafficManagerProfileTrafficRoutingMethod trafficRoutingMethod,
    TfArg<bool>? trafficViewEnabled,
    required TrafficManagerProfileDnsConfig dnsConfig,
    required TrafficManagerProfileMonitorConfig monitorConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_return': ?maxReturn,
           'name': name,
           'profile_status': ?profileStatus,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'traffic_routing_method': trafficRoutingMethod,
           'traffic_view_enabled': ?trafficViewEnabled,
           'dns_config': TfArg.literal(dnsConfig.encode()),
           'monitor_config': TfArg.literal(monitorConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermTrafficManagerProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermTrafficManagerProfile>`.
  RefTo<AzurermTrafficManagerProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `max_return` attribute.
  TfRef<num> get maxReturn => TfRef.attribute<num>(this, 'max_return');

  /// Reference to `profile_status` attribute.
  TfRef<String> get profileStatus =>
      TfRef.attribute<String>(this, 'profile_status');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_routing_method` attribute.
  TfRef<String> get trafficRoutingMethod =>
      TfRef.attribute<String>(this, 'traffic_routing_method');

  /// Reference to `traffic_view_enabled` attribute.
  TfRef<bool> get trafficViewEnabled =>
      TfRef.attribute<bool>(this, 'traffic_view_enabled');
}
