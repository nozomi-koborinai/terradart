// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_network_management_vpc_flow_logs_config`.
const Set<String> _googleNetworkManagementVpcFlowLogsConfigSensitive =
    <String>{};

/// `aggregation_interval` for `google_network_management_vpc_flow_logs_config`.
extension type const NetworkManagementVpcFlowLogsConfigAggregationInterval._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementVpcFlowLogsConfigAggregationInterval.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagementVpcFlowLogsConfigAggregationInterval.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagementVpcFlowLogsConfigAggregationInterval.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const aggregationIntervalUnspecified =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('AGGREGATION_INTERVAL_UNSPECIFIED'),
      );
  static const interval5Sec =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_5_SEC'),
      );
  static const interval30Sec =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_30_SEC'),
      );
  static const interval1Min =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_1_MIN'),
      );
  static const interval5Min =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_5_MIN'),
      );
  static const interval10Min =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_10_MIN'),
      );
  static const interval15Min =
      NetworkManagementVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_15_MIN'),
      );

  static const List<NetworkManagementVpcFlowLogsConfigAggregationInterval>
  values = [
    aggregationIntervalUnspecified,
    interval5Sec,
    interval30Sec,
    interval1Min,
    interval5Min,
    interval10Min,
    interval15Min,
  ];
}

/// `metadata` for `google_network_management_vpc_flow_logs_config`.
extension type const NetworkManagementVpcFlowLogsConfigMetadata._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementVpcFlowLogsConfigMetadata.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagementVpcFlowLogsConfigMetadata.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagementVpcFlowLogsConfigMetadata.arg(TfArg<String> arg)
    : this._(arg);

  static const metadataUnspecified =
      NetworkManagementVpcFlowLogsConfigMetadata._(
        TfArgLiteral('METADATA_UNSPECIFIED'),
      );
  static const includeAllMetadata =
      NetworkManagementVpcFlowLogsConfigMetadata._(
        TfArgLiteral('INCLUDE_ALL_METADATA'),
      );
  static const excludeAllMetadata =
      NetworkManagementVpcFlowLogsConfigMetadata._(
        TfArgLiteral('EXCLUDE_ALL_METADATA'),
      );
  static const customMetadata = NetworkManagementVpcFlowLogsConfigMetadata._(
    TfArgLiteral('CUSTOM_METADATA'),
  );

  static const List<NetworkManagementVpcFlowLogsConfigMetadata> values = [
    metadataUnspecified,
    includeAllMetadata,
    excludeAllMetadata,
    customMetadata,
  ];
}

/// `state` for `google_network_management_vpc_flow_logs_config`.
extension type const NetworkManagementVpcFlowLogsConfigState._(TfArg<String> _)
    implements TfArg<String> {
  NetworkManagementVpcFlowLogsConfigState.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagementVpcFlowLogsConfigState.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkManagementVpcFlowLogsConfigState.arg(TfArg<String> arg)
    : this._(arg);

  static const stateUnspecified = NetworkManagementVpcFlowLogsConfigState._(
    TfArgLiteral('STATE_UNSPECIFIED'),
  );
  static const enabled = NetworkManagementVpcFlowLogsConfigState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = NetworkManagementVpcFlowLogsConfigState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<NetworkManagementVpcFlowLogsConfigState> values = [
    stateUnspecified,
    enabled,
    disabled,
  ];
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
///   'vpc_logs',
///   vpcFlowLogsConfigId: TfArg.literal('terradart-vpc-flow'),
///   location: TfArg.literal('global'),
///   network: .literal(
///     'projects/123456789/global/networks/terradart-vpc',
///   ),
///   flowSampling: TfArg.literal(0.5),
/// );
/// ```
final class GoogleNetworkManagementVpcFlowLogsConfig extends Resource {
  static const String tfType = 'google_network_management_vpc_flow_logs_config';

  GoogleNetworkManagementVpcFlowLogsConfig(
    super.localName, {
    required TfArg<String> vpcFlowLogsConfigId,
    required TfArg<String> location,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnet,
    TfArg<String>? vpnTunnel,
    TfArg<String>? interconnectAttachment,
    TfArg<String>? description,
    NetworkManagementVpcFlowLogsConfigState? state,
    NetworkManagementVpcFlowLogsConfigAggregationInterval? aggregationInterval,
    TfArg<num>? flowSampling,
    NetworkManagementVpcFlowLogsConfigMetadata? metadata,
    TfArg<List<String>>? metadataFields,
    TfArg<String>? filterExpr,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'vpc_flow_logs_config_id': vpcFlowLogsConfigId,
           'location': location,
           'network': ?network?.encodeAs('id'),
           'subnet': ?subnet?.encodeAs('id'),
           'vpn_tunnel': ?vpnTunnel,
           'interconnect_attachment': ?interconnectAttachment,
           'description': ?description,
           'state': ?state,
           'aggregation_interval': ?aggregationInterval,
           'flow_sampling': ?flowSampling,
           'metadata': ?metadata,
           'metadata_fields': ?metadataFields,
           'filter_expr': ?filterExpr,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementVpcFlowLogsConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkManagementVpcFlowLogsConfig>`.
  RefTo<GoogleNetworkManagementVpcFlowLogsConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `aggregation_interval` attribute.
  TfRef<String> get aggregationInterval =>
      TfRef.attribute<String>(this, 'aggregation_interval');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter_expr` attribute.
  TfRef<String> get filterExpr => TfRef.attribute<String>(this, 'filter_expr');

  /// Reference to `flow_sampling` attribute.
  TfRef<num> get flowSampling => TfRef.attribute<num>(this, 'flow_sampling');

  /// Reference to `interconnect_attachment` attribute.
  TfRef<String> get interconnectAttachment =>
      TfRef.attribute<String>(this, 'interconnect_attachment');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `metadata_fields` attribute.
  TfRef<List<String>> get metadataFields =>
      TfRef.attribute<List<String>>(this, 'metadata_fields');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subnet` attribute.
  TfRef<String> get subnet => TfRef.attribute<String>(this, 'subnet');

  /// Reference to `vpc_flow_logs_config_id` attribute.
  TfRef<String> get vpcFlowLogsConfigId =>
      TfRef.attribute<String>(this, 'vpc_flow_logs_config_id');

  /// Reference to `vpn_tunnel` attribute.
  TfRef<String> get vpnTunnel => TfRef.attribute<String>(this, 'vpn_tunnel');
}
