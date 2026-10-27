// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_application_insights_api_key`.
const Set<String> _azurermApplicationInsightsApiKeySensitive = <String>{
  'api_key',
};

/// Factory wrapper for `azurerm_application_insights_api_key`.
final class AzurermApplicationInsightsApiKey extends Resource {
  static const String tfType = 'azurerm_application_insights_api_key';

  AzurermApplicationInsightsApiKey(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    required TfArg<String> name,
    TfArg<List<String>>? readPermissions,
    TfArg<List<String>>? writePermissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'name': name,
           'read_permissions': ?readPermissions,
           'write_permissions': ?writePermissions,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApplicationInsightsApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsightsApiKey>`.
  RefTo<AzurermApplicationInsightsApiKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key` attribute.
  TfRef<String> get apiKey => TfRef.attribute<String>(this, 'api_key');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `read_permissions` attribute.
  TfRef<List<String>> get readPermissions =>
      TfRef.attribute<List<String>>(this, 'read_permissions');

  /// Reference to `write_permissions` attribute.
  TfRef<List<String>> get writePermissions =>
      TfRef.attribute<List<String>>(this, 'write_permissions');
}
