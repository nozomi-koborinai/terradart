// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../management/azurerm_management_group_template_deployment.dart';

/// Sensitive field paths for `azurerm_management_group_template_deployment`.
const Set<String> _azurermManagementGroupTemplateDeploymentSensitive =
    <String>{};

/// Factory wrapper for `azurerm_management_group_template_deployment`.
final class DataAzurermManagementGroupTemplateDeployment extends Data {
  static const String tfType = 'azurerm_management_group_template_deployment';

  DataAzurermManagementGroupTemplateDeployment(
    super.localName, {
    required TfArg<String> managementGroupId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'management_group_id': managementGroupId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagementGroupTemplateDeploymentSensitive;

  /// A reference to the `azurerm_management_group_template_deployment` this data source reads, for
  /// arguments typed `RefTo<AzurermManagementGroupTemplateDeployment>`.
  RefTo<AzurermManagementGroupTemplateDeployment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `output_content` attribute.
  TfRef<String> get outputContent =>
      TfRef.attribute<String>(this, 'output_content');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');
}
