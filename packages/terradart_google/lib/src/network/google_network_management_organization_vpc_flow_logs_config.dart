// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_organization_vpc_flow_logs_config`.
const Set<String>
_googleNetworkManagementOrganizationVpcFlowLogsConfigSensitive = <String>{};

/// Network Management Organization Vpc Flow Logs Config Aggregation enum for `aggregation_interval`.
extension type const NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const interval5Sec =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_5_SEC'),
      );
  static const interval30Sec =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_30_SEC'),
      );
  static const interval1Min =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_1_MIN'),
      );
  static const interval5Min =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_5_MIN'),
      );
  static const interval10Min =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_10_MIN'),
      );
  static const interval15Min =
      NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval._(
        TfArgLiteral('INTERVAL_15_MIN'),
      );

  static const List<
    NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval
  >
  values = [
    interval5Sec,
    interval30Sec,
    interval1Min,
    interval5Min,
    interval10Min,
    interval15Min,
  ];
}

/// Network Management Organization Vpc Flow Logs Config Cross Project enum for `cross_project_metadata`.
extension type const NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const crossProjectMetadataEnabled =
      NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata._(
        TfArgLiteral('CROSS_PROJECT_METADATA_ENABLED'),
      );
  static const crossProjectMetadataDisabled =
      NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata._(
        TfArgLiteral('CROSS_PROJECT_METADATA_DISABLED'),
      );

  static const List<
    NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata
  >
  values = [crossProjectMetadataEnabled, crossProjectMetadataDisabled];
}

/// Network Management Organization Vpc Flow Logs Config enum for `metadata`.
extension type const NetworkManagementOrganizationVpcFlowLogsConfigMetadata._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementOrganizationVpcFlowLogsConfigMetadata.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagementOrganizationVpcFlowLogsConfigMetadata.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagementOrganizationVpcFlowLogsConfigMetadata.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const includeAllMetadata =
      NetworkManagementOrganizationVpcFlowLogsConfigMetadata._(
        TfArgLiteral('INCLUDE_ALL_METADATA'),
      );
  static const excludeAllMetadata =
      NetworkManagementOrganizationVpcFlowLogsConfigMetadata._(
        TfArgLiteral('EXCLUDE_ALL_METADATA'),
      );
  static const customMetadata =
      NetworkManagementOrganizationVpcFlowLogsConfigMetadata._(
        TfArgLiteral('CUSTOM_METADATA'),
      );

  static const List<NetworkManagementOrganizationVpcFlowLogsConfigMetadata>
  values = [includeAllMetadata, excludeAllMetadata, customMetadata];
}

/// Network Management Organization Vpc Flow Logs Config enum for `state`.
extension type const NetworkManagementOrganizationVpcFlowLogsConfigState._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkManagementOrganizationVpcFlowLogsConfigState.variable(String name)
    : this._(TfArg.variable(name));
  NetworkManagementOrganizationVpcFlowLogsConfigState.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkManagementOrganizationVpcFlowLogsConfigState.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled = NetworkManagementOrganizationVpcFlowLogsConfigState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = NetworkManagementOrganizationVpcFlowLogsConfigState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<NetworkManagementOrganizationVpcFlowLogsConfigState>
  values = [enabled, disabled];
}

/// Factory wrapper for `google_network_management_organization_vpc_flow_logs_config`.
///
/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for
/// Organization.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleNetworkManagementOrganizationVpcFlowLogsConfig
    extends Resource {
  static const String tfType =
      'google_network_management_organization_vpc_flow_logs_config';

  GoogleNetworkManagementOrganizationVpcFlowLogsConfig(
    super.localName, {
    NetworkManagementOrganizationVpcFlowLogsConfigAggregationInterval?
    aggregationInterval,
    NetworkManagementOrganizationVpcFlowLogsConfigCrossProjectMetadata?
    crossProjectMetadata,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? filterExpr,
    TfArg<num>? flowSampling,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    NetworkManagementOrganizationVpcFlowLogsConfigMetadata? metadata,
    TfArg<List<String>>? metadataFields,
    required TfArg<String> organization,
    NetworkManagementOrganizationVpcFlowLogsConfigState? state,
    required TfArg<String> vpcFlowLogsConfigId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aggregation_interval': ?aggregationInterval,
           'cross_project_metadata': ?crossProjectMetadata,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'filter_expr': ?filterExpr,
           'flow_sampling': ?flowSampling,
           'labels': ?labels,
           'location': location,
           'metadata': ?metadata,
           'metadata_fields': ?metadataFields,
           'organization': organization,
           'state': ?state,
           'vpc_flow_logs_config_id': vpcFlowLogsConfigId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkManagementOrganizationVpcFlowLogsConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkManagementOrganizationVpcFlowLogsConfig>`.
  RefTo<GoogleNetworkManagementOrganizationVpcFlowLogsConfig> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `aggregation_interval` attribute.
  TfRef<String> get aggregationInterval =>
      TfRef.attribute<String>(this, 'aggregation_interval');

  /// Reference to `cross_project_metadata` attribute.
  TfRef<String> get crossProjectMetadata =>
      TfRef.attribute<String>(this, 'cross_project_metadata');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter_expr` attribute.
  TfRef<String> get filterExpr => TfRef.attribute<String>(this, 'filter_expr');

  /// Reference to `flow_sampling` attribute.
  TfRef<num> get flowSampling => TfRef.attribute<num>(this, 'flow_sampling');

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

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `vpc_flow_logs_config_id` attribute.
  TfRef<String> get vpcFlowLogsConfigId =>
      TfRef.attribute<String>(this, 'vpc_flow_logs_config_id');
}
