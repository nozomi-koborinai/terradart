// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_outbound_connection`.
const Set<String> _awsOpensearchOutboundConnectionSensitive = <String>{};

/// Typed helper for the `connection_properties` block of
/// `aws_opensearch_outbound_connection` (derived from provider schema).
@immutable
final class OpensearchOutboundConnectionConnectionProperties {
  const OpensearchOutboundConnectionConnectionProperties({
    this.crossClusterSearch,
  });

  final OpensearchOutboundConnectionConnectionPropertiesCrossClusterSearch?
  crossClusterSearch;

  Map<String, Object?> encode() => {
    if (crossClusterSearch != null)
      'cross_cluster_search': crossClusterSearch!.encode(),
  };
}

/// Typed helper for the `connection_properties.cross_cluster_search` block of
/// `aws_opensearch_outbound_connection` (derived from provider schema).
@immutable
final class OpensearchOutboundConnectionConnectionPropertiesCrossClusterSearch {
  const OpensearchOutboundConnectionConnectionPropertiesCrossClusterSearch({
    this.skipUnavailable,
  });

  final TfArg<String>? skipUnavailable;

  Map<String, Object?> encode() => {
    if (skipUnavailable != null)
      'skip_unavailable': skipUnavailable!.toTfJson(),
  };
}

/// Typed helper for the `local_domain_info` block of
/// `aws_opensearch_outbound_connection` (derived from provider schema).
@immutable
final class OpensearchOutboundConnectionLocalDomainInfo {
  const OpensearchOutboundConnectionLocalDomainInfo({
    required this.domainName,
    required this.ownerId,
    required this.region,
  });

  final TfArg<String> domainName;

  final TfArg<String> ownerId;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'owner_id': ownerId.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Typed helper for the `remote_domain_info` block of
/// `aws_opensearch_outbound_connection` (derived from provider schema).
@immutable
final class OpensearchOutboundConnectionRemoteDomainInfo {
  const OpensearchOutboundConnectionRemoteDomainInfo({
    required this.domainName,
    required this.ownerId,
    required this.region,
  });

  final TfArg<String> domainName;

  final TfArg<String> ownerId;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'domain_name': domainName.toTfJson(),
    'owner_id': ownerId.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Factory wrapper for `aws_opensearch_outbound_connection`.
final class AwsOpensearchOutboundConnection extends Resource {
  static const String tfType = 'aws_opensearch_outbound_connection';

  AwsOpensearchOutboundConnection({
    required super.localName,
    TfArg<bool>? acceptConnection,
    required TfArg<String> connectionAlias,
    TfArg<String>? connectionMode,
    TfArg<String>? region,
    OpensearchOutboundConnectionConnectionProperties? connectionProperties,
    required OpensearchOutboundConnectionLocalDomainInfo localDomainInfo,
    required OpensearchOutboundConnectionRemoteDomainInfo remoteDomainInfo,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptConnection != null) 'accept_connection': acceptConnection,
           'connection_alias': connectionAlias,
           if (connectionMode != null) 'connection_mode': connectionMode,
           if (region != null) 'region': region,
           if (connectionProperties != null)
             'connection_properties': TfArg.literal(
               connectionProperties.encode(),
             ),
           'local_domain_info': TfArg.literal(localDomainInfo.encode()),
           'remote_domain_info': TfArg.literal(remoteDomainInfo.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchOutboundConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');
}
