// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_nginx_api_key`.
const Set<String> _azurermNginxApiKeySensitive = <String>{'secret_text'};

/// Factory wrapper for `azurerm_nginx_api_key`.
final class AzurermNginxApiKey extends Resource {
  static const String tfType = 'azurerm_nginx_api_key';

  AzurermNginxApiKey(
    super.localName, {
    required TfArg<String> endDateTime,
    required TfArg<String> name,
    required TfArg<String> nginxDeploymentId,
    required Sensitive<String> secretText,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'end_date_time': endDateTime,
           'name': name,
           'nginx_deployment_id': nginxDeploymentId,
           'secret_text': secretText,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNginxApiKey>`.
  RefTo<AzurermNginxApiKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hint` attribute.
  TfRef<String> get hint => TfRef.attribute<String>(this, 'hint');

  /// Reference to `end_date_time` attribute.
  TfRef<String> get endDateTime =>
      TfRef.attribute<String>(this, 'end_date_time');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');

  /// Reference to `secret_text` attribute.
  TfRef<String> get secretText => TfRef.attribute<String>(this, 'secret_text');
}
