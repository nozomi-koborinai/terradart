// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../policy/azurerm_policy_virtual_machine_configuration_assignment.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_policy_virtual_machine_configuration_assignment`.
const Set<String> _azurermPolicyVirtualMachineConfigurationAssignmentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_policy_virtual_machine_configuration_assignment`.
final class DataAzurermPolicyVirtualMachineConfigurationAssignment
    extends Data {
  static const String tfType =
      'azurerm_policy_virtual_machine_configuration_assignment';

  DataAzurermPolicyVirtualMachineConfigurationAssignment(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> virtualMachineName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'virtual_machine_name': virtualMachineName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPolicyVirtualMachineConfigurationAssignmentSensitive;

  /// A reference to the `azurerm_policy_virtual_machine_configuration_assignment` this data source reads, for
  /// arguments typed `RefTo<AzurermPolicyVirtualMachineConfigurationAssignment>`.
  RefTo<AzurermPolicyVirtualMachineConfigurationAssignment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignment_hash` attribute.
  TfRef<String> get assignmentHash =>
      TfRef.attribute<String>(this, 'assignment_hash');

  /// Reference to `compliance_status` attribute.
  TfRef<String> get complianceStatus =>
      TfRef.attribute<String>(this, 'compliance_status');

  /// Reference to `content_hash` attribute.
  TfRef<String> get contentHash =>
      TfRef.attribute<String>(this, 'content_hash');

  /// Reference to `content_uri` attribute.
  TfRef<String> get contentUri => TfRef.attribute<String>(this, 'content_uri');

  /// Reference to `last_compliance_status_checked` attribute.
  TfRef<String> get lastComplianceStatusChecked =>
      TfRef.attribute<String>(this, 'last_compliance_status_checked');

  /// Reference to `latest_report_id` attribute.
  TfRef<String> get latestReportId =>
      TfRef.attribute<String>(this, 'latest_report_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `virtual_machine_name` attribute.
  TfRef<String> get virtualMachineName =>
      TfRef.attribute<String>(this, 'virtual_machine_name');
}
