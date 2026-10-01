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

  final List<Ec2NetworkInsightsAccessScopeDestination>? destination;

  final List<Ec2NetworkInsightsAccessScopeSource>? source;

  final List<Ec2NetworkInsightsAccessScopeThroughResources>? throughResources;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsAccessScopeDestination {
  const Ec2NetworkInsightsAccessScopeDestination({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<Ec2NetworkInsightsAccessScopePacketHeaderStatement>?
  packetHeaderStatement;

  final List<Ec2NetworkInsightsAccessScopeResourceStatement>? resourceStatement;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsAccessScopePacketHeaderStatement {
  const Ec2NetworkInsightsAccessScopePacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  final TfArg<List<String>>? destinationAddresses;

  final TfArg<List<String>>? destinationPorts;

  final TfArg<List<String>>? destinationPrefixLists;

  final TfArg<List<String>>? protocols;

  final TfArg<List<String>>? sourceAddresses;

  final TfArg<List<String>>? sourcePorts;

  final TfArg<List<String>>? sourcePrefixLists;

  Map<String, Object?> encode() => {
    'destination_addresses': ?destinationAddresses?.toTfJson(),
    'destination_ports': ?destinationPorts?.toTfJson(),
    'destination_prefix_lists': ?destinationPrefixLists?.toTfJson(),
    'protocols': ?protocols?.toTfJson(),
    'source_addresses': ?sourceAddresses?.toTfJson(),
    'source_ports': ?sourcePorts?.toTfJson(),
    'source_prefix_lists': ?sourcePrefixLists?.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.destination.resource_statement` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsAccessScopeResourceStatement {
  const Ec2NetworkInsightsAccessScopeResourceStatement({
    this.resourceTypes,
    this.resources,
  });

  final TfArg<List<String>>? resourceTypes;

  final TfArg<List<String>>? resources;

  Map<String, Object?> encode() => {
    'resource_types': ?resourceTypes?.toTfJson(),
    'resources': ?resources?.toTfJson(),
  };
}

/// Typed helper for the `exclude_paths.source` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Ec2NetworkInsightsAccessScopeSource {
  const Ec2NetworkInsightsAccessScopeSource({
    this.packetHeaderStatement,
    this.resourceStatement,
  });

  final List<Ec2NetworkInsightsAccessScopePacketHeaderStatement>?
  packetHeaderStatement;

  final List<Ec2NetworkInsightsAccessScopeResourceStatement>? resourceStatement;

  Map<String, Object?> encode() => {
    if (packetHeaderStatement != null)
      'packet_header_statement': [
        for (final e in packetHeaderStatement!) e.encode(),
      ],
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
  };
}

/// Typed helper for the `exclude_paths.through_resources` block of
/// `aws_ec2_network_insights_access_scope` (derived from provider schema).
@immutable
final class Ec2NetworkInsightsAccessScopeThroughResources {
  const Ec2NetworkInsightsAccessScopeThroughResources({this.resourceStatement});

  final List<Ec2NetworkInsightsAccessScopeResourceStatement>? resourceStatement;

  Map<String, Object?> encode() => {
    if (resourceStatement != null)
      'resource_statement': [for (final e in resourceStatement!) e.encode()],
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

  final List<Ec2NetworkInsightsAccessScopeDestination>? destination;

  final List<Ec2NetworkInsightsAccessScopeSource>? source;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2NetworkInsightsAccessScope>`.
  RefTo<AwsEc2NetworkInsightsAccessScope> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
