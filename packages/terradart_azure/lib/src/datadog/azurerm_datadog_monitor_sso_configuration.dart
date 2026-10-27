// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_datadog_monitor_sso_configuration`.
const Set<String> _azurermDatadogMonitorSsoConfigurationSensitive = <String>{};

/// Factory wrapper for `azurerm_datadog_monitor_sso_configuration`.
final class AzurermDatadogMonitorSsoConfiguration extends Resource {
  static const String tfType = 'azurerm_datadog_monitor_sso_configuration';

  AzurermDatadogMonitorSsoConfiguration(
    super.localName, {
    required TfArg<String> datadogMonitorId,
    required TfArg<String> enterpriseApplicationId,
    TfArg<String>? name,
    required TfArg<String> singleSignOn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'datadog_monitor_id': datadogMonitorId,
           'enterprise_application_id': enterpriseApplicationId,
           'name': ?name,
           'single_sign_on': singleSignOn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDatadogMonitorSsoConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDatadogMonitorSsoConfiguration>`.
  RefTo<AzurermDatadogMonitorSsoConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `login_url` attribute.
  TfRef<String> get loginUrl => TfRef.attribute<String>(this, 'login_url');

  /// Reference to `datadog_monitor_id` attribute.
  TfRef<String> get datadogMonitorId =>
      TfRef.attribute<String>(this, 'datadog_monitor_id');

  /// Reference to `enterprise_application_id` attribute.
  TfRef<String> get enterpriseApplicationId =>
      TfRef.attribute<String>(this, 'enterprise_application_id');

  /// Reference to `single_sign_on` attribute.
  TfRef<String> get singleSignOn =>
      TfRef.attribute<String>(this, 'single_sign_on');
}
