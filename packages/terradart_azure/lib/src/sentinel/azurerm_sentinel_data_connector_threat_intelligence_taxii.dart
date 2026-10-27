// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_data_connector_threat_intelligence_taxii`.
const Set<String>
_azurermSentinelDataConnectorThreatIntelligenceTaxiiSensitive = <String>{
  'password',
  'user_name',
};

/// Sentinel Data Connector Threat Intelligence Taxii Polling enum for `polling_frequency`.
extension type const SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const onceaday =
      SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency._(
        TfArgLiteral('OnceADay'),
      );
  static const onceaminute =
      SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency._(
        TfArgLiteral('OnceAMinute'),
      );
  static const onceanhour =
      SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency._(
        TfArgLiteral('OnceAnHour'),
      );

  static const List<
    SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency
  >
  values = [onceaday, onceaminute, onceanhour];
}

/// Factory wrapper for `azurerm_sentinel_data_connector_threat_intelligence_taxii`.
final class AzurermSentinelDataConnectorThreatIntelligenceTaxii
    extends Resource {
  static const String tfType =
      'azurerm_sentinel_data_connector_threat_intelligence_taxii';

  AzurermSentinelDataConnectorThreatIntelligenceTaxii(
    super.localName, {
    required TfArg<String> apiRootUrl,
    required TfArg<String> collectionId,
    required TfArg<String> displayName,
    required TfArg<String> logAnalyticsWorkspaceId,
    TfArg<String>? lookbackDate,
    required TfArg<String> name,
    Sensitive<String>? password,
    SentinelDataConnectorThreatIntelligenceTaxiiPollingFrequency?
    pollingFrequency,
    TfArg<String>? tenantId,
    Sensitive<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_root_url': apiRootUrl,
           'collection_id': collectionId,
           'display_name': displayName,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'lookback_date': ?lookbackDate,
           'name': name,
           'password': ?password,
           'polling_frequency': ?pollingFrequency,
           'tenant_id': ?tenantId,
           'user_name': ?userName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelDataConnectorThreatIntelligenceTaxiiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelDataConnectorThreatIntelligenceTaxii>`.
  RefTo<AzurermSentinelDataConnectorThreatIntelligenceTaxii> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_root_url` attribute.
  TfRef<String> get apiRootUrl => TfRef.attribute<String>(this, 'api_root_url');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `lookback_date` attribute.
  TfRef<String> get lookbackDate =>
      TfRef.attribute<String>(this, 'lookback_date');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `polling_frequency` attribute.
  TfRef<String> get pollingFrequency =>
      TfRef.attribute<String>(this, 'polling_frequency');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
