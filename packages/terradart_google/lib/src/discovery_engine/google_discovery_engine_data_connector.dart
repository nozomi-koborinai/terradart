// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_data_connector`.
const Set<String> _googleDiscoveryEngineDataConnectorSensitive = <String>{};

/// Typed helper for the `action_config` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorActionConfig {
  const DiscoveryEngineDataConnectorActionConfig({
    this.actionParams,
    this.createBapConnection,
  });

  final TfArg<Map<String, String>>? actionParams;

  final TfArg<bool>? createBapConnection;

  Map<String, Object?> encode() => {
    if (actionParams != null) 'action_params': actionParams!.toTfJson(),
    if (createBapConnection != null)
      'create_bap_connection': createBapConnection!.toTfJson(),
  };
}

/// Typed helper for the `bap_config` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorBapConfig {
  const DiscoveryEngineDataConnectorBapConfig({
    this.enabledActions,
    this.supportedConnectorModes,
  });

  final TfArg<List<Object?>>? enabledActions;

  final TfArg<List<Object?>>? supportedConnectorModes;

  Map<String, Object?> encode() => {
    if (enabledActions != null) 'enabled_actions': enabledActions!.toTfJson(),
    if (supportedConnectorModes != null)
      'supported_connector_modes': supportedConnectorModes!.toTfJson(),
  };
}

/// Typed helper for the `destination_configs` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorDestinationConfigs {
  const DiscoveryEngineDataConnectorDestinationConfigs({
    this.key,
    this.params,
    this.destinations,
  });

  final TfArg<String>? key;

  final TfArg<String>? params;

  final List<DiscoveryEngineDataConnectorDestinationConfigsDestinations>?
  destinations;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (params != null) 'params': params!.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `destination_configs.destinations` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorDestinationConfigsDestinations {
  const DiscoveryEngineDataConnectorDestinationConfigsDestinations({
    this.host,
    this.port,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
  };
}

/// Typed helper for the `entities` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorEntities {
  const DiscoveryEngineDataConnectorEntities({
    this.entityName,
    this.keyPropertyMappings,
    this.params,
  });

  final TfArg<String>? entityName;

  final TfArg<Map<String, String>>? keyPropertyMappings;

  final TfArg<String>? params;

  Map<String, Object?> encode() => {
    if (entityName != null) 'entity_name': entityName!.toTfJson(),
    if (keyPropertyMappings != null)
      'key_property_mappings': keyPropertyMappings!.toTfJson(),
    if (params != null) 'params': params!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_data_connector`.
///
/// DataConnector manages the connection to external data sources for all data
/// stores grouped under a Collection. It's a singleton resource of Collection.
/// The initialization is only supported through
/// DataConnectorService.SetUpDataConnector method, which will create a new
/// Collection and initialize its DataConnector.
///
/// Discovery Engine third-party data connector — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleDiscoveryEngineDataConnector extends Resource {
  static const String tfType = 'google_discovery_engine_data_connector';

  GoogleDiscoveryEngineDataConnector({
    required super.localName,
    TfArg<bool>? autoRunDisabled,
    required TfArg<String> collectionDisplayName,
    required TfArg<String> collectionId,
    TfArg<List<String>>? connectorModes,
    required TfArg<String> dataSource,
    TfArg<num>? dataSourceVersion,
    TfArg<String>? deletionPolicy,
    TfArg<String>? incrementalRefreshInterval,
    TfArg<bool>? incrementalSyncDisabled,
    TfArg<String>? jsonParams,
    TfArg<String>? kmsKeyName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> refreshInterval,
    TfArg<bool>? staticIpEnabled,
    TfArg<String>? syncMode,
    DiscoveryEngineDataConnectorActionConfig? actionConfig,
    DiscoveryEngineDataConnectorBapConfig? bapConfig,
    List<DiscoveryEngineDataConnectorDestinationConfigs>? destinationConfigs,
    List<DiscoveryEngineDataConnectorEntities>? entities,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoRunDisabled != null) 'auto_run_disabled': autoRunDisabled,
           'collection_display_name': collectionDisplayName,
           'collection_id': collectionId,
           if (connectorModes != null) 'connector_modes': connectorModes,
           'data_source': dataSource,
           if (dataSourceVersion != null)
             'data_source_version': dataSourceVersion,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (incrementalRefreshInterval != null)
             'incremental_refresh_interval': incrementalRefreshInterval,
           if (incrementalSyncDisabled != null)
             'incremental_sync_disabled': incrementalSyncDisabled,
           if (jsonParams != null) 'json_params': jsonParams,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           'location': location,
           if (project != null) 'project': project,
           'refresh_interval': refreshInterval,
           if (staticIpEnabled != null) 'static_ip_enabled': staticIpEnabled,
           if (syncMode != null) 'sync_mode': syncMode,
           if (actionConfig != null)
             'action_config': TfArg.literal(actionConfig.encode()),
           if (bapConfig != null)
             'bap_config': TfArg.literal(bapConfig.encode()),
           if (destinationConfigs != null)
             'destination_configs': TfArg.literal([
               for (final e in destinationConfigs) e.encode(),
             ]),
           if (entities != null)
             'entities': TfArg.literal([for (final e in entities) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineDataConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_state` attribute.
  TfRef<String> get actionState =>
      TfRef.attribute<String>(this, 'action_state');

  /// Reference to `blocking_reasons` attribute.
  TfRef<List<String>> get blockingReasons =>
      TfRef.attribute<List<String>>(this, 'blocking_reasons');

  /// Reference to `connector_type` attribute.
  TfRef<String> get connectorType =>
      TfRef.attribute<String>(this, 'connector_type');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `last_sync_time` attribute.
  TfRef<String> get lastSyncTime =>
      TfRef.attribute<String>(this, 'last_sync_time');

  /// Reference to `latest_pause_time` attribute.
  TfRef<String> get latestPauseTime =>
      TfRef.attribute<String>(this, 'latest_pause_time');

  /// Reference to `private_connectivity_project_id` attribute.
  TfRef<String> get privateConnectivityProjectId =>
      TfRef.attribute<String>(this, 'private_connectivity_project_id');

  /// Reference to `realtime_state` attribute.
  TfRef<String> get realtimeState =>
      TfRef.attribute<String>(this, 'realtime_state');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `static_ip_addresses` attribute.
  TfRef<List<String>> get staticIpAddresses =>
      TfRef.attribute<List<String>>(this, 'static_ip_addresses');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
