// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nginx/azurerm_nginx_configuration.dart';

/// Sensitive field paths for `azurerm_nginx_configuration`.
const Set<String> _azurermNginxConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_nginx_configuration`.
final class DataAzurermNginxConfiguration extends Data {
  static const String tfType = 'azurerm_nginx_configuration';

  DataAzurermNginxConfiguration(
    super.localName, {
    required TfArg<String> nginxDeploymentId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'nginx_deployment_id': nginxDeploymentId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxConfigurationSensitive;

  /// A reference to the `azurerm_nginx_configuration` this data source reads, for
  /// arguments typed `RefTo<AzurermNginxConfiguration>`.
  RefTo<AzurermNginxConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_file` attribute.
  TfRef<List<Map<String, Object?>>> get configFile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'config_file');

  /// Reference to `package_data` attribute.
  TfRef<String> get packageData =>
      TfRef.attribute<String>(this, 'package_data');

  /// Reference to `protected_file` attribute.
  TfRef<List<Map<String, Object?>>> get protectedFile =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'protected_file');

  /// Reference to `root_file` attribute.
  TfRef<String> get rootFile => TfRef.attribute<String>(this, 'root_file');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');
}
