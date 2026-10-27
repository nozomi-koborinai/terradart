// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../tenant/azurerm_tenant_template_deployment.dart';

/// Sensitive field paths for `azurerm_tenant_template_deployment`.
const Set<String> _azurermTenantTemplateDeploymentSensitive = <String>{};

/// Factory wrapper for `azurerm_tenant_template_deployment`.
final class DataAzurermTenantTemplateDeployment extends Data {
  static const String tfType = 'azurerm_tenant_template_deployment';

  DataAzurermTenantTemplateDeployment(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _azurermTenantTemplateDeploymentSensitive;

  /// A reference to the `azurerm_tenant_template_deployment` this data source reads, for
  /// arguments typed `RefTo<AzurermTenantTemplateDeployment>`.
  RefTo<AzurermTenantTemplateDeployment> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `output_content` attribute.
  TfRef<String> get outputContent =>
      TfRef.attribute<String>(this, 'output_content');
}
