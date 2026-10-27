// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_management_group_policy_remediation`.
const Set<String> _azurermManagementGroupPolicyRemediationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_management_group_policy_remediation`.
final class AzurermManagementGroupPolicyRemediation extends Resource {
  static const String tfType = 'azurerm_management_group_policy_remediation';

  AzurermManagementGroupPolicyRemediation(
    super.localName, {
    TfArg<num>? failurePercentage,
    TfArg<List<String>>? locationFilters,
    required TfArg<String> managementGroupId,
    required TfArg<String> name,
    TfArg<num>? parallelDeployments,
    required TfArg<String> policyAssignmentId,
    TfArg<String>? policyDefinitionReferenceId,
    TfArg<num>? resourceCount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'failure_percentage': ?failurePercentage,
           'location_filters': ?locationFilters,
           'management_group_id': managementGroupId,
           'name': name,
           'parallel_deployments': ?parallelDeployments,
           'policy_assignment_id': policyAssignmentId,
           'policy_definition_reference_id': ?policyDefinitionReferenceId,
           'resource_count': ?resourceCount,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagementGroupPolicyRemediationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagementGroupPolicyRemediation>`.
  RefTo<AzurermManagementGroupPolicyRemediation> get ref => RefTo.of(this);

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

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

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
}
