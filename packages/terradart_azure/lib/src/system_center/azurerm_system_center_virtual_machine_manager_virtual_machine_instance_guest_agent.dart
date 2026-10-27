// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent`.
const Set<String>
_azurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentSensitive =
    <String>{'password'};

/// System Center Virtual Machine Manager Virtual Machine Instance Guest Agent Provisioning enum for `provisioning_action`.
extension type const SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction._(
  TfArg<String> _
) implements TfArg<String> {
  SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const install =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction._(
        TfArgLiteral('install'),
      );
  static const repair =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction._(
        TfArgLiteral('repair'),
      );
  static const uninstall =
      SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction._(
        TfArgLiteral('uninstall'),
      );

  static const List<
    SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction
  >
  values = [install, repair, uninstall];
}

/// Factory wrapper for `azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent`.
final class AzurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgent
    extends Resource {
  static const String tfType =
      'azurerm_system_center_virtual_machine_manager_virtual_machine_instance_guest_agent';

  AzurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgent(
    super.localName, {
    required Sensitive<String> password,
    SystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentProvisioningAction?
    provisioningAction,
    required TfArg<String> scopedResourceId,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'password': password,
           'provisioning_action': ?provisioningAction,
           'scoped_resource_id': scopedResourceId,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgent>`.
  RefTo<
    AzurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgent
  >
  get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `provisioning_action` attribute.
  TfRef<String> get provisioningAction =>
      TfRef.attribute<String>(this, 'provisioning_action');

  /// Reference to `scoped_resource_id` attribute.
  TfRef<String> get scopedResourceId =>
      TfRef.attribute<String>(this, 'scoped_resource_id');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
