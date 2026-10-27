// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure resource groups, deployments, and policy assignments at the resource scope.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_resource_group.dart' show DataAzurermResourceGroup;
export 'src/data/azurerm_resource_group_template_deployment.dart'
    show DataAzurermResourceGroupTemplateDeployment;
export 'src/resource/azurerm_resource_deployment_script_azure_cli.dart'
    show
        AzurermResourceDeploymentScriptAzureCli,
        ResourceDeploymentScriptAzureCliContainer,
        ResourceDeploymentScriptAzureCliEnvironmentVariable,
        ResourceDeploymentScriptAzureCliIdentity,
        ResourceDeploymentScriptAzureCliStorageAccount;
export 'src/resource/azurerm_resource_deployment_script_azure_power_shell.dart'
    show
        AzurermResourceDeploymentScriptAzurePowerShell,
        ResourceDeploymentScriptAzurePowerShellContainer,
        ResourceDeploymentScriptAzurePowerShellEnvironmentVariable,
        ResourceDeploymentScriptAzurePowerShellIdentity,
        ResourceDeploymentScriptAzurePowerShellStorageAccount;
export 'src/resource/azurerm_resource_group.dart' show AzurermResourceGroup;
export 'src/resource/azurerm_resource_group_cost_management_export.dart'
    show
        AzurermResourceGroupCostManagementExport,
        ResourceGroupCostManagementExportDataOptions,
        ResourceGroupCostManagementExportDataStorageLocation;
export 'src/resource/azurerm_resource_group_cost_management_view.dart'
    show
        AzurermResourceGroupCostManagementView,
        ResourceGroupCostManagementViewAggregation,
        ResourceGroupCostManagementViewDataset,
        ResourceGroupCostManagementViewGrouping,
        ResourceGroupCostManagementViewKpi,
        ResourceGroupCostManagementViewPivot,
        ResourceGroupCostManagementViewSorting;
export 'src/resource/azurerm_resource_group_policy_assignment.dart'
    show
        AzurermResourceGroupPolicyAssignment,
        ResourceGroupPolicyAssignmentIdentity,
        ResourceGroupPolicyAssignmentNonComplianceMessage,
        ResourceGroupPolicyAssignmentOverrides,
        ResourceGroupPolicyAssignmentOverridesSelectors,
        ResourceGroupPolicyAssignmentResourceSelectors,
        ResourceGroupPolicyAssignmentResourceSelectorsSelectors;
export 'src/resource/azurerm_resource_group_policy_exemption.dart'
    show AzurermResourceGroupPolicyExemption;
export 'src/resource/azurerm_resource_group_policy_remediation.dart'
    show
        AzurermResourceGroupPolicyRemediation,
        ResourceGroupPolicyRemediationResourceDiscoveryMode;
export 'src/resource/azurerm_resource_group_template_deployment.dart'
    show
        AzurermResourceGroupTemplateDeployment,
        ResourceGroupTemplateDeploymentDebugLevel,
        ResourceGroupTemplateDeploymentTemplate,
        ResourceGroupTemplateDeploymentTemplateContent,
        ResourceGroupTemplateDeploymentTemplateSpecVersionId;
export 'src/resource/azurerm_resource_management_private_link.dart'
    show AzurermResourceManagementPrivateLink;
export 'src/resource/azurerm_resource_management_private_link_association.dart'
    show AzurermResourceManagementPrivateLinkAssociation;
export 'src/resource/azurerm_resource_policy_assignment.dart'
    show
        AzurermResourcePolicyAssignment,
        ResourcePolicyAssignmentIdentity,
        ResourcePolicyAssignmentNonComplianceMessage,
        ResourcePolicyAssignmentOverrides,
        ResourcePolicyAssignmentOverridesSelectors,
        ResourcePolicyAssignmentResourceSelectors,
        ResourcePolicyAssignmentResourceSelectorsSelectors;
export 'src/resource/azurerm_resource_policy_exemption.dart'
    show AzurermResourcePolicyExemption;
export 'src/resource/azurerm_resource_policy_remediation.dart'
    show
        AzurermResourcePolicyRemediation,
        ResourcePolicyRemediationResourceDiscoveryMode;
export 'src/resource/azurerm_resource_provider_feature_registration.dart'
    show AzurermResourceProviderFeatureRegistration;
export 'src/resource/azurerm_resource_provider_registration.dart'
    show
        AzurermResourceProviderRegistration,
        ResourceProviderRegistrationFeature;
