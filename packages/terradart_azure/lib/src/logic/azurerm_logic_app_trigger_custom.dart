// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_logic_app_trigger_custom`.
const Set<String> _azurermLogicAppTriggerCustomSensitive = <String>{};

/// Factory wrapper for `azurerm_logic_app_trigger_custom`.
final class AzurermLogicAppTriggerCustom extends Resource {
  static const String tfType = 'azurerm_logic_app_trigger_custom';

  AzurermLogicAppTriggerCustom(
    super.localName, {
    required TfArg<String> body,
    required TfArg<String> logicAppId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'body': body, 'logic_app_id': logicAppId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermLogicAppTriggerCustomSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppTriggerCustom>`.
  RefTo<AzurermLogicAppTriggerCustom> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `callback_url` attribute.
  TfRef<String> get callbackUrl =>
      TfRef.attribute<String>(this, 'callback_url');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `logic_app_id` attribute.
  TfRef<String> get logicAppId => TfRef.attribute<String>(this, 'logic_app_id');
}
