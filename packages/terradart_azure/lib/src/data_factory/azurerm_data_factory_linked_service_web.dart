// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_web`.
const Set<String> _azurermDataFactoryLinkedServiceWebSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_data_factory_linked_service_web`.
final class AzurermDataFactoryLinkedServiceWeb extends Resource {
  static const String tfType = 'azurerm_data_factory_linked_service_web';

  AzurermDataFactoryLinkedServiceWeb(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> authenticationType,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    Sensitive<String>? password,
    required TfArg<String> url,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'authentication_type': authenticationType,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'password': ?password,
           'url': url,
           'username': ?username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceWebSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceWeb>`.
  RefTo<AzurermDataFactoryLinkedServiceWeb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
