// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_network_insights_access_scope`.
const Set<String> _awsEc2NetworkInsightsAccessScopeSensitive = <String>{};

/// Typed helper for the `exclude_paths` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePaths {
  const Ec2NetworkInsightsAccessScopeExcludePaths({
    this.destination,
    this.source,
    this.throughResources,
  });

  final List<Ec2NetworkInsightsAccessScopeExcludePathsDestination>? destination;

  final List<Ec2NetworkInsightsAccessScopeExcludePathsSource>? source;

  final List<Ec2NetworkInsightsAccessScopeExcludePathsThroughResources>?
  throughResources;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
    if (throughResources != null)
      'through_resources': [for (final e in throughResources!) e.encode()],
  };
}

/// Typed helper for the `exclude_paths.destination` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsDestination {
  const Ec2NetworkInsightsAccessScopeExcludePathsDestination({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<
    Ec2NetworkInsightsAccessScopeExcludePathsDestinationPacketHeaderStatement
  >?
  packetHeaderStatement;

  final List<
    Ec2NetworkInsightsAccessScopeExcludePathsDestinationResourceStatement
  >?
  resourceStatement;

  Map<String, Object?> encode() => {
    if (packetHeaderStatement != null)
      'packet_header_statement': [
        for (final e in packetHeaderStatement!) e.encode(),
      ],
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `exclude_paths.destination.packet_header_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsDestinationPacketHeaderStatement {
  const Ec2NetworkInsightsAccessScopeExcludePathsDestinationPacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  final TfArg<List<Object?>>? destinationAddresses;

  final TfArg<List<Object?>>? destinationPorts;

  final TfArg<List<Object?>>? destinationPrefixLists;

  final TfArg<List<Object?>>? protocols;

  final TfArg<List<Object?>>? sourceAddresses;

  final TfArg<List<Object?>>? sourcePorts;

  final TfArg<List<Object?>>? sourcePrefixLists;

  Map<String, Object?> encode() => {
    if (destinationAddresses != null)
      'destination_addresses': destinationAddresses!.toTfJson(),
    if (destinationPorts != null)
      'destination_ports': destinationPorts!.toTfJson(),
    if (destinationPrefixLists != null)
      'destination_prefix_lists': destinationPrefixLists!.toTfJson(),
    if (protocols != null) 'protocols': protocols!.toTfJson(),
    if (sourceAddresses != null)
      'source_addresses': sourceAddresses!.toTfJson(),
    if (sourcePorts != null) 'source_ports': sourcePorts!.toTfJson(),
    if (sourcePrefixLists != null)
      'source_prefix_lists': sourcePrefixLists!.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.destination.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsDestinationResourceStatement {
  const Ec2NetworkInsightsAccessScopeExcludePathsDestinationResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.source` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsSource {
  const Ec2NetworkInsightsAccessScopeExcludePathsSource({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<
    Ec2NetworkInsightsAccessScopeExcludePathsSourcePacketHeaderStatement
  >?
  packetHeaderStatement;

  final List<Ec2NetworkInsightsAccessScopeExcludePathsSourceResourceStatement>?
  resourceStatement;

  Map<String, Object?> encode() => {
    if (packetHeaderStatement != null)
      'packet_header_statement': [
        for (final e in packetHeaderStatement!) e.encode(),
      ],
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `exclude_paths.source.packet_header_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsSourcePacketHeaderStatement {
  const Ec2NetworkInsightsAccessScopeExcludePathsSourcePacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  final TfArg<List<Object?>>? destinationAddresses;

  final TfArg<List<Object?>>? destinationPorts;

  final TfArg<List<Object?>>? destinationPrefixLists;

  final TfArg<List<Object?>>? protocols;

  final TfArg<List<Object?>>? sourceAddresses;

  final TfArg<List<Object?>>? sourcePorts;

  final TfArg<List<Object?>>? sourcePrefixLists;

  Map<String, Object?> encode() => {
    if (destinationAddresses != null)
      'destination_addresses': destinationAddresses!.toTfJson(),
    if (destinationPorts != null)
      'destination_ports': destinationPorts!.toTfJson(),
    if (destinationPrefixLists != null)
      'destination_prefix_lists': destinationPrefixLists!.toTfJson(),
    if (protocols != null) 'protocols': protocols!.toTfJson(),
    if (sourceAddresses != null)
      'source_addresses': sourceAddresses!.toTfJson(),
    if (sourcePorts != null) 'source_ports': sourcePorts!.toTfJson(),
    if (sourcePrefixLists != null)
      'source_prefix_lists': sourcePrefixLists!.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.source.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsSourceResourceStatement {
  const Ec2NetworkInsightsAccessScopeExcludePathsSourceResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.through_resources` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsThroughResources {
  const Ec2NetworkInsightsAccessScopeExcludePathsThroughResources({
    this.resourceStatement,
  });

  final List<
    Ec2NetworkInsightsAccessScopeExcludePathsThroughResourcesResourceStatement
  >?
  resourceStatement;

  Map<String, Object?> encode() => {
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `exclude_paths.through_resources.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeExcludePathsThroughResourcesResourceStatement {
  const Ec2NetworkInsightsAccessScopeExcludePathsThroughResourcesResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// Typed helper for the `match_paths` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPaths {
  const Ec2NetworkInsightsAccessScopeMatchPaths({
    this.destination,
    this.source,
  });

  final List<Ec2NetworkInsightsAccessScopeMatchPathsDestination>? destination;

  final List<Ec2NetworkInsightsAccessScopeMatchPathsSource>? source;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `match_paths.destination` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsDestination {
  const Ec2NetworkInsightsAccessScopeMatchPathsDestination({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<
    Ec2NetworkInsightsAccessScopeMatchPathsDestinationPacketHeaderStatement
  >?
  packetHeaderStatement;

  final List<
    Ec2NetworkInsightsAccessScopeMatchPathsDestinationResourceStatement
  >?
  resourceStatement;

  Map<String, Object?> encode() => {
    if (packetHeaderStatement != null)
      'packet_header_statement': [
        for (final e in packetHeaderStatement!) e.encode(),
      ],
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `match_paths.destination.packet_header_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsDestinationPacketHeaderStatement {
  const Ec2NetworkInsightsAccessScopeMatchPathsDestinationPacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  final TfArg<List<Object?>>? destinationAddresses;

  final TfArg<List<Object?>>? destinationPorts;

  final TfArg<List<Object?>>? destinationPrefixLists;

  final TfArg<List<Object?>>? protocols;

  final TfArg<List<Object?>>? sourceAddresses;

  final TfArg<List<Object?>>? sourcePorts;

  final TfArg<List<Object?>>? sourcePrefixLists;

  Map<String, Object?> encode() => {
    if (destinationAddresses != null)
      'destination_addresses': destinationAddresses!.toTfJson(),
    if (destinationPorts != null)
      'destination_ports': destinationPorts!.toTfJson(),
    if (destinationPrefixLists != null)
      'destination_prefix_lists': destinationPrefixLists!.toTfJson(),
    if (protocols != null) 'protocols': protocols!.toTfJson(),
    if (sourceAddresses != null)
      'source_addresses': sourceAddresses!.toTfJson(),
    if (sourcePorts != null) 'source_ports': sourcePorts!.toTfJson(),
    if (sourcePrefixLists != null)
      'source_prefix_lists': sourcePrefixLists!.toTfJson(),
  };
}

/// Typed helper for the `match_paths.destination.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsDestinationResourceStatement {
  const Ec2NetworkInsightsAccessScopeMatchPathsDestinationResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// Typed helper for the `match_paths.source` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsSource {
  const Ec2NetworkInsightsAccessScopeMatchPathsSource({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<
    Ec2NetworkInsightsAccessScopeMatchPathsSourcePacketHeaderStatement
  >?
  packetHeaderStatement;

  final List<Ec2NetworkInsightsAccessScopeMatchPathsSourceResourceStatement>?
  resourceStatement;

  Map<String, Object?> encode() => {
    if (packetHeaderStatement != null)
      'packet_header_statement': [
        for (final e in packetHeaderStatement!) e.encode(),
      ],
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `match_paths.source.packet_header_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsSourcePacketHeaderStatement {
  const Ec2NetworkInsightsAccessScopeMatchPathsSourcePacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  final TfArg<List<Object?>>? destinationAddresses;

  final TfArg<List<Object?>>? destinationPorts;

  final TfArg<List<Object?>>? destinationPrefixLists;

  final TfArg<List<Object?>>? protocols;

  final TfArg<List<Object?>>? sourceAddresses;

  final TfArg<List<Object?>>? sourcePorts;

  final TfArg<List<Object?>>? sourcePrefixLists;

  Map<String, Object?> encode() => {
    if (destinationAddresses != null)
      'destination_addresses': destinationAddresses!.toTfJson(),
    if (destinationPorts != null)
      'destination_ports': destinationPorts!.toTfJson(),
    if (destinationPrefixLists != null)
      'destination_prefix_lists': destinationPrefixLists!.toTfJson(),
    if (protocols != null) 'protocols': protocols!.toTfJson(),
    if (sourceAddresses != null)
      'source_addresses': sourceAddresses!.toTfJson(),
    if (sourcePorts != null) 'source_ports': sourcePorts!.toTfJson(),
    if (sourcePrefixLists != null)
      'source_prefix_lists': sourcePrefixLists!.toTfJson(),
  };
}

/// Typed helper for the `match_paths.source.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeMatchPathsSourceResourceStatement {
  const Ec2NetworkInsightsAccessScopeMatchPathsSourceResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<List<Object?>>? resources;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_network_insights_access_scope`.
final class AwsEc2NetworkInsightsAccessScope extends Resource {
  static const String tfType = 'aws_ec2_network_insights_access_scope';

  AwsEc2NetworkInsightsAccessScope({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Ec2NetworkInsightsAccessScopeExcludePaths>? excludePaths,
    List<Ec2NetworkInsightsAccessScopeMatchPaths>? matchPaths,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (excludePaths != null)
             'exclude_paths': TfArg.literal([
               for (final e in excludePaths) e.encode(),
             ]),
           if (matchPaths != null)
             'match_paths': TfArg.literal([
               for (final e in matchPaths) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2NetworkInsightsAccessScopeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
