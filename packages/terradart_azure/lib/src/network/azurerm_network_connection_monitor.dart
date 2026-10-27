// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_connection_monitor`.
const Set<String> _azurermNetworkConnectionMonitorSensitive = <String>{};

/// Typed helper for the `endpoint` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorEndpoint {
  const NetworkConnectionMonitorEndpoint({
    this.address,
    this.coverageLevel,
    this.excludedIpAddresses,
    this.includedIpAddresses,
    required this.name,
    this.targetResourceId,
    this.targetResourceType,
    this.filter,
  });

  final TfArg<String>? address;

  final NetworkConnectionMonitorCoverageLevel? coverageLevel;

  final TfArg<List<String>>? excludedIpAddresses;

  final TfArg<List<String>>? includedIpAddresses;

  final TfArg<String> name;

  final TfArg<String>? targetResourceId;

  final TfArg<String>? targetResourceType;

  final NetworkConnectionMonitorFilter? filter;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'coverage_level': ?coverageLevel?.toTfJson(),
    'excluded_ip_addresses': ?excludedIpAddresses?.toTfJson(),
    'included_ip_addresses': ?includedIpAddresses?.toTfJson(),
    'name': name.toTfJson(),
    'target_resource_id': ?targetResourceId?.toTfJson(),
    'target_resource_type': ?targetResourceType?.toTfJson(),
    'filter': ?filter?.encode(),
  };
}

/// `coverage_level` — derived from the provider schema description.
extension type const NetworkConnectionMonitorCoverageLevel._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectionMonitorCoverageLevel.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectionMonitorCoverageLevel.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectionMonitorCoverageLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const aboveaverage = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('AboveAverage'),
  );
  static const average = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('Average'),
  );
  static const belowaverage = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('BelowAverage'),
  );
  static const defaultCase = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('Default'),
  );
  static const full = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('Full'),
  );
  static const low = NetworkConnectionMonitorCoverageLevel._(
    TfArgLiteral('Low'),
  );

  static const List<NetworkConnectionMonitorCoverageLevel> values = [
    aboveaverage,
    average,
    belowaverage,
    defaultCase,
    full,
    low,
  ];
}

/// Typed helper for the `endpoint.filter` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorFilter {
  const NetworkConnectionMonitorFilter({this.type, this.item});

  final TfArg<String>? type;

  final List<NetworkConnectionMonitorItem>? item;

  @internal
  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    if (item != null) 'item': [for (final e in item!) e.encode()],
  };
}

/// Typed helper for the `endpoint.filter.item` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorItem {
  const NetworkConnectionMonitorItem({this.address, this.type});

  final TfArg<String>? address;

  final TfArg<String>? type;

  @internal
  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `test_configuration` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorTestConfiguration {
  const NetworkConnectionMonitorTestConfiguration({
    required this.name,
    this.preferredIpVersion,
    required this.protocol,
    this.testFrequencyInSeconds,
    this.httpConfiguration,
    this.icmpConfiguration,
    this.successThreshold,
    this.tcpConfiguration,
  });

  final TfArg<String> name;

  final NetworkConnectionMonitorPreferredIpVersion? preferredIpVersion;

  final NetworkConnectionMonitorProtocol protocol;

  final TfArg<num>? testFrequencyInSeconds;

  final NetworkConnectionMonitorHttpConfiguration? httpConfiguration;

  final NetworkConnectionMonitorIcmpConfiguration? icmpConfiguration;

  final NetworkConnectionMonitorSuccessThreshold? successThreshold;

  final NetworkConnectionMonitorTcpConfiguration? tcpConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'preferred_ip_version': ?preferredIpVersion?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'test_frequency_in_seconds': ?testFrequencyInSeconds?.toTfJson(),
    'http_configuration': ?httpConfiguration?.encode(),
    'icmp_configuration': ?icmpConfiguration?.encode(),
    'success_threshold': ?successThreshold?.encode(),
    'tcp_configuration': ?tcpConfiguration?.encode(),
  };
}

/// `preferred_ip_version` — derived from the provider schema description.
extension type const NetworkConnectionMonitorPreferredIpVersion._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkConnectionMonitorPreferredIpVersion.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectionMonitorPreferredIpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectionMonitorPreferredIpVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = NetworkConnectionMonitorPreferredIpVersion._(
    TfArgLiteral('IPv4'),
  );
  static const ipv6 = NetworkConnectionMonitorPreferredIpVersion._(
    TfArgLiteral('IPv6'),
  );

  static const List<NetworkConnectionMonitorPreferredIpVersion> values = [
    ipv4,
    ipv6,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const NetworkConnectionMonitorProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectionMonitorProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectionMonitorProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectionMonitorProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = NetworkConnectionMonitorProtocol._(TfArgLiteral('Http'));
  static const icmp = NetworkConnectionMonitorProtocol._(TfArgLiteral('Icmp'));
  static const tcp = NetworkConnectionMonitorProtocol._(TfArgLiteral('Tcp'));

  static const List<NetworkConnectionMonitorProtocol> values = [
    http,
    icmp,
    tcp,
  ];
}

/// Typed helper for the `test_configuration.http_configuration` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorHttpConfiguration {
  const NetworkConnectionMonitorHttpConfiguration({
    this.method,
    this.path,
    this.port,
    this.preferHttps,
    this.validStatusCodeRanges,
    this.requestHeader,
  });

  final NetworkConnectionMonitorMethod? method;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<bool>? preferHttps;

  final TfArg<List<String>>? validStatusCodeRanges;

  final List<NetworkConnectionMonitorRequestHeader>? requestHeader;

  @internal
  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'prefer_https': ?preferHttps?.toTfJson(),
    'valid_status_code_ranges': ?validStatusCodeRanges?.toTfJson(),
    if (requestHeader != null)
      'request_header': [for (final e in requestHeader!) e.encode()],
  };
}

/// `method` — derived from the provider schema description.
extension type const NetworkConnectionMonitorMethod._(TfArg<String> _)
    implements TfArg<String> {
  NetworkConnectionMonitorMethod.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectionMonitorMethod.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectionMonitorMethod.arg(TfArg<String> arg) : this._(arg);

  static const get = NetworkConnectionMonitorMethod._(TfArgLiteral('Get'));
  static const post = NetworkConnectionMonitorMethod._(TfArgLiteral('Post'));

  static const List<NetworkConnectionMonitorMethod> values = [get, post];
}

/// Typed helper for the `test_configuration.http_configuration.request_header` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorRequestHeader {
  const NetworkConnectionMonitorRequestHeader({
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

/// Typed helper for the `test_configuration.icmp_configuration` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorIcmpConfiguration {
  const NetworkConnectionMonitorIcmpConfiguration({this.traceRouteEnabled});

  final TfArg<bool>? traceRouteEnabled;

  @internal
  Map<String, Object?> encode() => {
    'trace_route_enabled': ?traceRouteEnabled?.toTfJson(),
  };
}

/// Typed helper for the `test_configuration.success_threshold` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorSuccessThreshold {
  const NetworkConnectionMonitorSuccessThreshold({
    this.checksFailedPercent,
    this.roundTripTimeMs,
  });

  final TfArg<num>? checksFailedPercent;

  final TfArg<num>? roundTripTimeMs;

  @internal
  Map<String, Object?> encode() => {
    'checks_failed_percent': ?checksFailedPercent?.toTfJson(),
    'round_trip_time_ms': ?roundTripTimeMs?.toTfJson(),
  };
}

/// Typed helper for the `test_configuration.tcp_configuration` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorTcpConfiguration {
  const NetworkConnectionMonitorTcpConfiguration({
    this.destinationPortBehavior,
    required this.port,
    this.traceRouteEnabled,
  });

  final NetworkConnectionMonitorDestinationPortBehavior?
  destinationPortBehavior;

  final TfArg<num> port;

  final TfArg<bool>? traceRouteEnabled;

  @internal
  Map<String, Object?> encode() => {
    'destination_port_behavior': ?destinationPortBehavior?.toTfJson(),
    'port': port.toTfJson(),
    'trace_route_enabled': ?traceRouteEnabled?.toTfJson(),
  };
}

/// `destination_port_behavior` — derived from the provider schema description.
extension type const NetworkConnectionMonitorDestinationPortBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkConnectionMonitorDestinationPortBehavior.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectionMonitorDestinationPortBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectionMonitorDestinationPortBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const listenifavailable =
      NetworkConnectionMonitorDestinationPortBehavior._(
        TfArgLiteral('ListenIfAvailable'),
      );
  static const none = NetworkConnectionMonitorDestinationPortBehavior._(
    TfArgLiteral('None'),
  );

  static const List<NetworkConnectionMonitorDestinationPortBehavior> values = [
    listenifavailable,
    none,
  ];
}

/// Typed helper for the `test_group` block of
/// `azurerm_network_connection_monitor` (derived from provider schema).
@immutable
final class NetworkConnectionMonitorTestGroup {
  const NetworkConnectionMonitorTestGroup({
    required this.destinationEndpoints,
    this.enabled,
    required this.name,
    required this.sourceEndpoints,
    required this.testConfigurationNames,
  });

  final TfArg<List<String>> destinationEndpoints;

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final TfArg<List<String>> sourceEndpoints;

  final TfArg<List<String>> testConfigurationNames;

  @internal
  Map<String, Object?> encode() => {
    'destination_endpoints': destinationEndpoints.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'source_endpoints': sourceEndpoints.toTfJson(),
    'test_configuration_names': testConfigurationNames.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_network_connection_monitor`.
final class AzurermNetworkConnectionMonitor extends Resource {
  static const String tfType = 'azurerm_network_connection_monitor';

  AzurermNetworkConnectionMonitor(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> networkWatcherId,
    TfArg<String>? notes,
    TfArg<List<String>>? outputWorkspaceResourceIds,
    TfArg<Map<String, String>>? tags,
    required List<NetworkConnectionMonitorEndpoint> endpoint,
    required List<NetworkConnectionMonitorTestConfiguration> testConfiguration,
    required List<NetworkConnectionMonitorTestGroup> testGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'network_watcher_id': networkWatcherId,
           'notes': ?notes,
           'output_workspace_resource_ids': ?outputWorkspaceResourceIds,
           'tags': ?tags,
           'endpoint': TfArg.literal([for (final e in endpoint) e.encode()]),
           'test_configuration': TfArg.literal([
             for (final e in testConfiguration) e.encode(),
           ]),
           'test_group': TfArg.literal([for (final e in testGroup) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkConnectionMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkConnectionMonitor>`.
  RefTo<AzurermNetworkConnectionMonitor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_watcher_id` attribute.
  TfRef<String> get networkWatcherId =>
      TfRef.attribute<String>(this, 'network_watcher_id');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `output_workspace_resource_ids` attribute.
  TfRef<List<String>> get outputWorkspaceResourceIds =>
      TfRef.attribute<List<String>>(this, 'output_workspace_resource_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
