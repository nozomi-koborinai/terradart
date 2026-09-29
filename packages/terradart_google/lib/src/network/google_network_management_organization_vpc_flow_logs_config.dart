// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_management_organization_vpc_flow_logs_config`.
const Set<String>
_googleNetworkManagementOrganizationVpcFlowLogsConfigSensitive = <String>{};

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

  GoogleNetworkManagementOrganizationVpcFlowLogsConfig({
    required super.localName,
    TfArg<String>? aggregationInterval,
    TfArg<String>? crossProjectMetadata,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? filterExpr,
    TfArg<num>? flowSampling,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? metadata,
    TfArg<List<String>>? metadataFields,
    required TfArg<String> organization,
    TfArg<String>? state,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
