// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nginx/azurerm_nginx_api_key.dart';

/// Sensitive field paths for `azurerm_nginx_api_key`.
const Set<String> _azurermNginxApiKeySensitive = <String>{};

/// Factory wrapper for `azurerm_nginx_api_key`.
final class DataAzurermNginxApiKey extends Data {
  static const String tfType = 'azurerm_nginx_api_key';

  DataAzurermNginxApiKey(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> nginxDeploymentId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'nginx_deployment_id': nginxDeploymentId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxApiKeySensitive;

  /// A reference to the `azurerm_nginx_api_key` this data source reads, for
  /// arguments typed `RefTo<AzurermNginxApiKey>`.
  RefTo<AzurermNginxApiKey> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_date_time` attribute.
  TfRef<String> get endDateTime =>
      TfRef.attribute<String>(this, 'end_date_time');

  /// Reference to `hint` attribute.
  TfRef<String> get hint => TfRef.attribute<String>(this, 'hint');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');
}
