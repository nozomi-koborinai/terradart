// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_variables`.
const Set<String> _azurermAutomationVariablesSensitive = <String>{};

/// Factory wrapper for `azurerm_automation_variables`.
final class DataAzurermAutomationVariables extends Data {
  static const String tfType = 'azurerm_automation_variables';

  DataAzurermAutomationVariables(
    super.localName, {
    required TfArg<String> automationAccountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'automation_account_id': automationAccountId},
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationVariablesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bool` attribute.
  TfRef<List<Map<String, Object?>>> get bool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bool');

  /// Reference to `datetime` attribute.
  TfRef<List<Map<String, Object?>>> get datetime =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'datetime');

  /// Reference to `encrypted` attribute.
  TfRef<List<Map<String, Object?>>> get encrypted =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encrypted');

  /// Reference to `int` attribute.
  TfRef<List<Map<String, Object?>>> get int =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'int');

  /// Reference to `null` attribute.
  TfRef<List<Map<String, Object?>>> get nullAttr =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'null');

  /// Reference to `object` attribute.
  TfRef<List<Map<String, Object?>>> get object =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'object');

  /// Reference to `string` attribute.
  TfRef<List<Map<String, Object?>>> get string =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'string');

  /// Reference to `automation_account_id` attribute.
  TfRef<String> get automationAccountId =>
      TfRef.attribute<String>(this, 'automation_account_id');
}
