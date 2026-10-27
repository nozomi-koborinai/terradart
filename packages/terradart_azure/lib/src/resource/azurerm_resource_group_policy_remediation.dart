// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_group_policy_remediation`.
const Set<String> _azurermResourceGroupPolicyRemediationSensitive = <String>{};

/// Resource Group Policy Remediation Resource Discovery enum for `resource_discovery_mode`.
extension type const ResourceGroupPolicyRemediationResourceDiscoveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  ResourceGroupPolicyRemediationResourceDiscoveryMode.variable(String name)
    : this._(TfArg.variable(name));
  ResourceGroupPolicyRemediationResourceDiscoveryMode.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ResourceGroupPolicyRemediationResourceDiscoveryMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const existingnoncompliant =
      ResourceGroupPolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ExistingNonCompliant'),
      );
  static const reevaluatecompliance =
      ResourceGroupPolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ReEvaluateCompliance'),
      );

  static const List<ResourceGroupPolicyRemediationResourceDiscoveryMode>
  values = [existingnoncompliant, reevaluatecompliance];
}

/// Factory wrapper for `azurerm_resource_group_policy_remediation`.
final class AzurermResourceGroupPolicyRemediation extends Resource {
  static const String tfType = 'azurerm_resource_group_policy_remediation';

  AzurermResourceGroupPolicyRemediation(
    super.localName, {
    TfArg<num>? failurePercentage,
    TfArg<List<String>>? locationFilters,
    required TfArg<String> name,
    TfArg<num>? parallelDeployments,
    required TfArg<String> policyAssignmentId,
    TfArg<String>? policyDefinitionReferenceId,
    TfArg<num>? resourceCount,
    ResourceGroupPolicyRemediationResourceDiscoveryMode? resourceDiscoveryMode,
    required TfArg<String> resourceGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'failure_percentage': ?failurePercentage,
           'location_filters': ?locationFilters,
           'name': name,
           'parallel_deployments': ?parallelDeployments,
           'policy_assignment_id': policyAssignmentId,
           'policy_definition_reference_id': ?policyDefinitionReferenceId,
           'resource_count': ?resourceCount,
           'resource_discovery_mode': ?resourceDiscoveryMode,
           'resource_group_id': resourceGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceGroupPolicyRemediationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceGroupPolicyRemediation>`.
  RefTo<AzurermResourceGroupPolicyRemediation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `failure_percentage` attribute.
  TfRef<num> get failurePercentage =>
      TfRef.attribute<num>(this, 'failure_percentage');

  /// Reference to `location_filters` attribute.
  TfRef<List<String>> get locationFilters =>
      TfRef.attribute<List<String>>(this, 'location_filters');

  /// Reference to `parallel_deployments` attribute.
  TfRef<num> get parallelDeployments =>
      TfRef.attribute<num>(this, 'parallel_deployments');

  /// Reference to `policy_assignment_id` attribute.
  TfRef<String> get policyAssignmentId =>
      TfRef.attribute<String>(this, 'policy_assignment_id');

  /// Reference to `policy_definition_reference_id` attribute.
  TfRef<String> get policyDefinitionReferenceId =>
      TfRef.attribute<String>(this, 'policy_definition_reference_id');

  /// Reference to `resource_count` attribute.
  TfRef<num> get resourceCount => TfRef.attribute<num>(this, 'resource_count');

  /// Reference to `resource_discovery_mode` attribute.
  TfRef<String> get resourceDiscoveryMode =>
      TfRef.attribute<String>(this, 'resource_discovery_mode');

  /// Reference to `resource_group_id` attribute.
  TfRef<String> get resourceGroupId =>
      TfRef.attribute<String>(this, 'resource_group_id');
}
