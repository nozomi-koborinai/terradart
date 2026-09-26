// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkfirewall_container_association`.
const Set<String> _awsNetworkfirewallContainerAssociationSensitive = <String>{};

/// Typed helper for the `container_monitoring_configuration` block of
/// `aws_networkfirewall_container_association` (derived from provider schema).
@immutable
final class NetworkfirewallContainerAssociationContainerMonitoringConfiguration {
  const NetworkfirewallContainerAssociationContainerMonitoringConfiguration({
    required this.clusterArn,
    this.attributeFilter,
  });

  final TfArg<String> clusterArn;

  final List<
    NetworkfirewallContainerAssociationContainerMonitoringConfigurationAttributeFilter
  >?
  attributeFilter;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    if (attributeFilter != null)
      'attribute_filter': [for (final e in attributeFilter!) e.encode()],
  };
}

/// Typed helper for the `container_monitoring_configuration.attribute_filter` block of
/// `aws_networkfirewall_container_association` (derived from provider schema).
@immutable
final class NetworkfirewallContainerAssociationContainerMonitoringConfigurationAttributeFilter {
  const NetworkfirewallContainerAssociationContainerMonitoringConfigurationAttributeFilter({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_networkfirewall_container_association`.
final class AwsNetworkfirewallContainerAssociation extends Resource {
  static const String tfType = 'aws_networkfirewall_container_association';

  AwsNetworkfirewallContainerAssociation({
    required super.localName,
    required TfArg<String> containerAssociationName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    List<NetworkfirewallContainerAssociationContainerMonitoringConfiguration>?
    containerMonitoringConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_association_name': containerAssociationName,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           if (containerMonitoringConfiguration != null)
             'container_monitoring_configuration': TfArg.literal([
               for (final e in containerMonitoringConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkfirewallContainerAssociationSensitive;

  /// Reference to `container_association_arn` attribute.
  TfRef<String> get containerAssociationArn =>
      TfRef.attribute<String>(this, 'container_association_arn');

  /// Reference to `resolved_cidr_count` attribute.
  TfRef<num> get resolvedCidrCount =>
      TfRef.attribute<num>(this, 'resolved_cidr_count');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `update_token` attribute.
  TfRef<String> get updateToken =>
      TfRef.attribute<String>(this, 'update_token');
}
