// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_monitor_diagnostic_categories`.
const Set<String> _azurermMonitorDiagnosticCategoriesSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_diagnostic_categories`.
final class DataAzurermMonitorDiagnosticCategories extends Data {
  static const String tfType = 'azurerm_monitor_diagnostic_categories';

  DataAzurermMonitorDiagnosticCategories(
    super.localName, {
    required TfArg<String> resourceId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'resource_id': resourceId});

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorDiagnosticCategoriesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_category_groups` attribute.
  TfRef<List<String>> get logCategoryGroups =>
      TfRef.attribute<List<String>>(this, 'log_category_groups');

  /// Reference to `log_category_types` attribute.
  TfRef<List<String>> get logCategoryTypes =>
      TfRef.attribute<List<String>>(this, 'log_category_types');

  /// Reference to `metrics` attribute.
  TfRef<List<String>> get metrics =>
      TfRef.attribute<List<String>>(this, 'metrics');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
