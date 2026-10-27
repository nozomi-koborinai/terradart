// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscription_policy_remediation`.
const Set<String> _azurermSubscriptionPolicyRemediationSensitive = <String>{};

/// Subscription Policy Remediation Resource Discovery enum for `resource_discovery_mode`.
extension type const SubscriptionPolicyRemediationResourceDiscoveryMode._(
  TfArg<String> _
) implements TfArg<String> {
  SubscriptionPolicyRemediationResourceDiscoveryMode.variable(String name)
    : this._(TfArg.variable(name));
  SubscriptionPolicyRemediationResourceDiscoveryMode.expression(String template)
    : this._(TfArg.expression(template));
  const SubscriptionPolicyRemediationResourceDiscoveryMode.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const existingnoncompliant =
      SubscriptionPolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ExistingNonCompliant'),
      );
  static const reevaluatecompliance =
      SubscriptionPolicyRemediationResourceDiscoveryMode._(
        TfArgLiteral('ReEvaluateCompliance'),
      );

  static const List<SubscriptionPolicyRemediationResourceDiscoveryMode> values =
      [existingnoncompliant, reevaluatecompliance];
}

/// Factory wrapper for `azurerm_subscription_policy_remediation`.
final class AzurermSubscriptionPolicyRemediation extends Resource {
  static const String tfType = 'azurerm_subscription_policy_remediation';

  AzurermSubscriptionPolicyRemediation(
    super.localName, {
    TfArg<num>? failurePercentage,
    TfArg<List<String>>? locationFilters,
    required TfArg<String> name,
    TfArg<num>? parallelDeployments,
    required TfArg<String> policyAssignmentId,
    TfArg<String>? policyDefinitionReferenceId,
    TfArg<num>? resourceCount,
    SubscriptionPolicyRemediationResourceDiscoveryMode? resourceDiscoveryMode,
    required TfArg<String> subscriptionId,
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
           'subscription_id': subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubscriptionPolicyRemediationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubscriptionPolicyRemediation>`.
  RefTo<AzurermSubscriptionPolicyRemediation> get ref => RefTo.of(this);

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

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
