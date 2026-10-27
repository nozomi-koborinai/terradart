// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_policy_remediation`.
const Set<String> _azurermResourcePolicyRemediationSensitive = <String>{};

/// Resource Policy Remediation Resource Discovery enum for `resource_discovery_mode`.
extension type const ResourcePolicyRemediationResourceDiscoveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  ResourcePolicyRemediationResourceDiscoveryMode.variable(String name)
    : this._(TfArg.variable(name));
  ResourcePolicyRemediationResourceDiscoveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const ResourcePolicyRemediationResourceDiscoveryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const existingnoncompliant =
      ResourcePolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ExistingNonCompliant'),
      );
  static const reevaluatecompliance =
      ResourcePolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ReEvaluateCompliance'),
      );

  static const List<ResourcePolicyRemediationResourceDiscoveryMode> values = [
    existingnoncompliant,
    reevaluatecompliance,
  ];
}

/// Factory wrapper for `azurerm_resource_policy_remediation`.
final class AzurermResourcePolicyRemediation extends Resource {
  static const String tfType = 'azurerm_resource_policy_remediation';

  AzurermResourcePolicyRemediation(
    super.localName, {
    TfArg<num>? failurePercentage,
    TfArg<List<String>>? locationFilters,
    required TfArg<String> name,
    TfArg<num>? parallelDeployments,
    required TfArg<String> policyAssignmentId,
    TfArg<String>? policyDefinitionReferenceId,
    TfArg<num>? resourceCount,
    ResourcePolicyRemediationResourceDiscoveryMode? resourceDiscoveryMode,
    required TfArg<String> resourceId,
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
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermResourcePolicyRemediationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourcePolicyRemediation>`.
  RefTo<AzurermResourcePolicyRemediation> get ref => RefTo.of(this);

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

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
