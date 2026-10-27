// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_static_web_app_function_app_registration`.
const Set<String> _azurermStaticWebAppFunctionAppRegistrationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_static_web_app_function_app_registration`.
final class AzurermStaticWebAppFunctionAppRegistration extends Resource {
  static const String tfType =
      'azurerm_static_web_app_function_app_registration';

  AzurermStaticWebAppFunctionAppRegistration(
    super.localName, {
    required TfArg<String> functionAppId,
    required TfArg<String> staticWebAppId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'function_app_id': functionAppId,
           'static_web_app_id': staticWebAppId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStaticWebAppFunctionAppRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStaticWebAppFunctionAppRegistration>`.
  RefTo<AzurermStaticWebAppFunctionAppRegistration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `function_app_id` attribute.
  TfRef<String> get functionAppId =>
      TfRef.attribute<String>(this, 'function_app_id');

  /// Reference to `static_web_app_id` attribute.
  TfRef<String> get staticWebAppId =>
      TfRef.attribute<String>(this, 'static_web_app_id');
}
