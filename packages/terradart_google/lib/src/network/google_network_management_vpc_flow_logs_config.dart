// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_vpc_flow_logs_config`.
const Set<String> _googleNetworkManagementVpcFlowLogsConfigSensitive =
    <String>{};

/// `aggregation_interval` for `google_network_management_vpc_flow_logs_config`.
enum NetworkManagementVpcFlowLogsConfigAggregationInterval
    implements TerraformEnum {
  aggregationIntervalUnspecified('AGGREGATION_INTERVAL_UNSPECIFIED'),
  interval5Sec('INTERVAL_5_SEC'),
  interval30Sec('INTERVAL_30_SEC'),
  interval1Min('INTERVAL_1_MIN'),
  interval5Min('INTERVAL_5_MIN'),
  interval10Min('INTERVAL_10_MIN'),
  interval15Min('INTERVAL_15_MIN');

  const NetworkManagementVpcFlowLogsConfigAggregationInterval(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `metadata` for `google_network_management_vpc_flow_logs_config`.
enum NetworkManagementVpcFlowLogsConfigMetadata implements TerraformEnum {
  metadataUnspecified('METADATA_UNSPECIFIED'),
  includeAllMetadata('INCLUDE_ALL_METADATA'),
  excludeAllMetadata('EXCLUDE_ALL_METADATA'),
  customMetadata('CUSTOM_METADATA');

  const NetworkManagementVpcFlowLogsConfigMetadata(this.terraformValue);
  @override
  final String terraformValue;
}

/// `state` for `google_network_management_vpc_flow_logs_config`.
enum NetworkManagementVpcFlowLogsConfigState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const NetworkManagementVpcFlowLogsConfigState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_management_vpc_flow_logs_config`.
///
/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for
/// Networks, Subnets, Interconnect attachments or VPN Tunnels.
///
/// Network Management **VPC Flow Logs config** — enables flow logging for a
/// network, subnet, VPN tunnel, or Interconnect attachment.
///
/// Set exactly one target among [network], [subnet], [vpnTunnel], or
/// [interconnectAttachment] (full resource names). Creating a config on an
/// empty VPC does not by itself bill — Cloud Logging charges only when
/// traffic generates log volume.
///
/// Enable `networkmanagement.googleapis.com` via [GoogleProjectService]
/// before apply. New configs must be created with [state] enabled.
///
/// Example:
/// ```dart
/// GoogleNetworkManagementVpcFlowLogsConfig(
///   localName: 'vpc_logs',
///   vpcFlowLogsConfigId: TfArg.literal('terradart-vpc-flow'),
///   location: TfArg.literal('global'),
///   network: TfArg.literal(
///     'projects/123456789/global/networks/terradart-vpc',
///   ),
///   flowSampling: TfArg.literal(0.5),
/// );
/// ```
final class GoogleNetworkManagementVpcFlowLogsConfig extends Resource {
  static const String tfType = 'google_network_management_vpc_flow_logs_config';

  GoogleNetworkManagementVpcFlowLogsConfig({
    required super.localName,
    required TfArg<String> vpcFlowLogsConfigId,
    required TfArg<String> location,
    TfArg<String>? network,
    TfArg<String>? subnet,
    TfArg<String>? vpnTunnel,
    TfArg<String>? interconnectAttachment,
    TfArg<String>? description,
    TfArg<NetworkManagementVpcFlowLogsConfigState>? state,
    TfArg<NetworkManagementVpcFlowLogsConfigAggregationInterval>?
    aggregationInterval,
    TfArg<num>? flowSampling,
    TfArg<NetworkManagementVpcFlowLogsConfigMetadata>? metadata,
    TfArg<List<String>>? metadataFields,
    TfArg<String>? filterExpr,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'vpc_flow_logs_config_id': vpcFlowLogsConfigId,
           'location': location,
           if (network != null) 'network': network,
           if (subnet != null) 'subnet': subnet,
           if (vpnTunnel != null) 'vpn_tunnel': vpnTunnel,
           if (interconnectAttachment != null)
             'interconnect_attachment': interconnectAttachment,
           if (description != null) 'description': description,
           if (state != null) 'state': state,
           if (aggregationInterval != null)
             'aggregation_interval': aggregationInterval,
           if (flowSampling != null) 'flow_sampling': flowSampling,
           if (metadata != null) 'metadata': metadata,
           if (metadataFields != null) 'metadata_fields': metadataFields,
           if (filterExpr != null) 'filter_expr': filterExpr,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementVpcFlowLogsConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `target_resource_state` attribute.
  TfRef<String> get targetResourceState =>
      TfRef.attribute<String>(this, 'target_resource_state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
