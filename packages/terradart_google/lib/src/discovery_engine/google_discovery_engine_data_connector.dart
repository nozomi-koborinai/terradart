// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_discovery_engine_data_connector`.
const Set<String> _googleDiscoveryEngineDataConnectorSensitive = <String>{};

/// Discovery Engine Data Connector enum for `location`.
extension type const DiscoveryEngineDataConnectorLocation._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineDataConnectorLocation.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataConnectorLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineDataConnectorLocation.arg(TfArg<String> arg)
    : this._(arg);

  static const global = DiscoveryEngineDataConnectorLocation._(
    TfArgLiteral('global'),
  );
  static const us = DiscoveryEngineDataConnectorLocation._(TfArgLiteral('us'));
  static const eu = DiscoveryEngineDataConnectorLocation._(TfArgLiteral('eu'));

  static const List<DiscoveryEngineDataConnectorLocation> values = [
    global,
    us,
    eu,
  ];
}

/// Exactly one of `params`, `json_params` on `google_discovery_engine_data_connector`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.params(...)`.
sealed class DiscoveryEngineDataConnectorParams {
  const DiscoveryEngineDataConnectorParams();

  /// Sets `params`.
  const factory DiscoveryEngineDataConnectorParams.params(
    TfArg<Map<String, String>> params,
  ) = DiscoveryEngineDataConnectorParamsChoice;

  /// Sets `json_params`.
  const factory DiscoveryEngineDataConnectorParams.jsonParams(
    TfArg<String> jsonParams,
  ) = DiscoveryEngineDataConnectorJsonParams;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DiscoveryEngineDataConnectorParams.params] choice: sets `params`.
final class DiscoveryEngineDataConnectorParamsChoice
    extends DiscoveryEngineDataConnectorParams {
  const DiscoveryEngineDataConnectorParamsChoice(this.params);

  final TfArg<Map<String, String>> params;

  @internal
  @override
  String get blockKey => 'params';

  @internal
  @override
  Map<String, Object?> encode() => {'params': params.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'params': params};
}

/// The [DiscoveryEngineDataConnectorParams.jsonParams] choice: sets `json_params`.
final class DiscoveryEngineDataConnectorJsonParams
    extends DiscoveryEngineDataConnectorParams {
  const DiscoveryEngineDataConnectorJsonParams(this.jsonParams);

  final TfArg<String> jsonParams;

  @internal
  @override
  String get blockKey => 'json_params';

  @internal
  @override
  Map<String, Object?> encode() => {'json_params': jsonParams.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'json_params': jsonParams};
}

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

  @internal
  Map<String, Object?> encode() => {
    'action_params': ?actionParams?.toTfJson(),
    'create_bap_connection': ?createBapConnection?.toTfJson(),
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

  final List<DiscoveryEngineDataConnectorEnabledActions>? enabledActions;

  final List<DiscoveryEngineDataConnectorSupportedConnectorModes>?
  supportedConnectorModes;

  @internal
  Map<String, Object?> encode() => {
    if (enabledActions != null)
      'enabled_actions': [for (final e in enabledActions!) e.toTfJson()],
    if (supportedConnectorModes != null)
      'supported_connector_modes': [
        for (final e in supportedConnectorModes!) e.toTfJson(),
      ],
  };
}

/// `enabled_actions` — derived from the provider schema description.
extension type const DiscoveryEngineDataConnectorEnabledActions._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineDataConnectorEnabledActions.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataConnectorEnabledActions.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineDataConnectorEnabledActions.arg(TfArg<String> arg)
    : this._(arg);

  static const createIssue = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('create_issue'),
  );
  static const updateIssue = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('update_issue'),
  );
  static const changeIssueStatus = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('change_issue_status'),
  );
  static const createComment = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('create_comment'),
  );
  static const updateComment = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('update_comment'),
  );
  static const uploadAttachment = DiscoveryEngineDataConnectorEnabledActions._(
    TfArgLiteral('upload_attachment'),
  );

  static const List<DiscoveryEngineDataConnectorEnabledActions> values = [
    createIssue,
    updateIssue,
    changeIssueStatus,
    createComment,
    updateComment,
    uploadAttachment,
  ];
}

/// `supported_connector_modes` — derived from the provider schema description.
extension type const DiscoveryEngineDataConnectorSupportedConnectorModes._(
  TfArg<String> _
) implements TfArg<String> {
  DiscoveryEngineDataConnectorSupportedConnectorModes.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataConnectorSupportedConnectorModes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DiscoveryEngineDataConnectorSupportedConnectorModes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dataIngestion =
      DiscoveryEngineDataConnectorSupportedConnectorModes._(
        TfArgLiteral('DATA_INGESTION'),
      );
  static const actions = DiscoveryEngineDataConnectorSupportedConnectorModes._(
    TfArgLiteral('ACTIONS'),
  );
  static const endUserAuthentication =
      DiscoveryEngineDataConnectorSupportedConnectorModes._(
        TfArgLiteral('END_USER_AUTHENTICATION'),
      );

  static const List<DiscoveryEngineDataConnectorSupportedConnectorModes>
  values = [dataIngestion, actions, endUserAuthentication];
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

  final List<DiscoveryEngineDataConnectorDestinations>? destinations;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'params': ?params?.toTfJson(),
    if (destinations != null)
      'destinations': [for (final e in destinations!) e.encode()],
  };
}

/// Typed helper for the `destination_configs.destinations` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorDestinations {
  const DiscoveryEngineDataConnectorDestinations({this.host, this.port});

  final TfArg<String>? host;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
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

  final DiscoveryEngineDataConnectorEntityName? entityName;

  final TfArg<Map<String, String>>? keyPropertyMappings;

  final TfArg<String>? params;

  @internal
  Map<String, Object?> encode() => {
    'entity_name': ?entityName?.toTfJson(),
    'key_property_mappings': ?keyPropertyMappings?.toTfJson(),
    'params': ?params?.toTfJson(),
  };
}

/// `entity_name` — derived from the provider schema description.
extension type const DiscoveryEngineDataConnectorEntityName._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineDataConnectorEntityName.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataConnectorEntityName.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineDataConnectorEntityName.arg(TfArg<String> arg)
    : this._(arg);

  static const lead = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Lead'),
  );
  static const opportunity = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Opportunity'),
  );
  static const contact = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Contact'),
  );
  static const account = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Account'),
  );
  static const caseCase = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Case'),
  );
  static const contract = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Contract'),
  );
  static const campaign = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Campaign'),
  );
  static const project = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('project'),
  );
  static const issue = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('issue'),
  );
  static const attachment = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('attachment'),
  );
  static const comment = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('comment'),
  );
  static const worklog = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('worklog'),
  );
  static const content = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Content'),
  );
  static const space = DiscoveryEngineDataConnectorEntityName._(
    TfArgLiteral('Space'),
  );

  static const List<DiscoveryEngineDataConnectorEntityName> values = [
    lead,
    opportunity,
    contact,
    account,
    caseCase,
    contract,
    campaign,
    project,
    issue,
    attachment,
    comment,
    worklog,
    content,
    space,
  ];
}

/// Typed helper for the `metadata` block of
/// `google_discovery_engine_data_connector` (derived from provider schema).
@immutable
final class DiscoveryEngineDataConnectorMetadata {
  const DiscoveryEngineDataConnectorMetadata({
    this.author,
    this.description,
    this.note,
    this.shortDescription,
    this.title,
  });

  final TfArg<String>? author;

  final TfArg<String>? description;

  final TfArg<String>? note;

  final TfArg<String>? shortDescription;

  final TfArg<String>? title;

  @internal
  Map<String, Object?> encode() => {
    'author': ?author?.toTfJson(),
    'description': ?description?.toTfJson(),
    'note': ?note?.toTfJson(),
    'short_description': ?shortDescription?.toTfJson(),
    'title': ?title?.toTfJson(),
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

  GoogleDiscoveryEngineDataConnector(
    super.localName, {
    TfArg<bool>? autoRunDisabled,
    required TfArg<String> collectionDisplayName,
    required TfArg<String> collectionId,
    TfArg<List<String>>? connectorModes,
    required TfArg<String> dataSource,
    TfArg<num>? dataSourceVersion,
    TfArg<String>? deletionPolicy,
    TfArg<String>? incrementalRefreshInterval,
    TfArg<bool>? incrementalSyncDisabled,
    required DiscoveryEngineDataConnectorParams params,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    required DiscoveryEngineDataConnectorLocation location,
    TfArg<String>? project,
    required TfArg<String> refreshInterval,
    TfArg<bool>? staticIpEnabled,
    TfArg<String>? syncMode,
    DiscoveryEngineDataConnectorActionConfig? actionConfig,
    DiscoveryEngineDataConnectorBapConfig? bapConfig,
    List<DiscoveryEngineDataConnectorDestinationConfigs>? destinationConfigs,
    List<DiscoveryEngineDataConnectorEntities>? entities,
    TfArg<String>? tag,
    DiscoveryEngineDataConnectorMetadata? metadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_run_disabled': ?autoRunDisabled,
           'collection_display_name': collectionDisplayName,
           'collection_id': collectionId,
           'connector_modes': ?connectorModes,
           'data_source': dataSource,
           'data_source_version': ?dataSourceVersion,
           'deletion_policy': ?deletionPolicy,
           'incremental_refresh_interval': ?incrementalRefreshInterval,
           'incremental_sync_disabled': ?incrementalSyncDisabled,
           ...params.argMap,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'location': location,
           'project': ?project,
           'refresh_interval': refreshInterval,
           'static_ip_enabled': ?staticIpEnabled,
           'sync_mode': ?syncMode,
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
           'tag': ?tag,
           if (metadata != null) 'metadata': TfArg.literal(metadata.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineDataConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineDataConnector>`.
  RefTo<GoogleDiscoveryEngineDataConnector> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `auto_run_disabled` attribute.
  TfRef<bool> get autoRunDisabled =>
      TfRef.attribute<bool>(this, 'auto_run_disabled');

  /// Reference to `collection_display_name` attribute.
  TfRef<String> get collectionDisplayName =>
      TfRef.attribute<String>(this, 'collection_display_name');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `connector_modes` attribute.
  TfRef<List<String>> get connectorModes =>
      TfRef.attribute<List<String>>(this, 'connector_modes');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `data_source_version` attribute.
  TfRef<num> get dataSourceVersion =>
      TfRef.attribute<num>(this, 'data_source_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `incremental_refresh_interval` attribute.
  TfRef<String> get incrementalRefreshInterval =>
      TfRef.attribute<String>(this, 'incremental_refresh_interval');

  /// Reference to `incremental_sync_disabled` attribute.
  TfRef<bool> get incrementalSyncDisabled =>
      TfRef.attribute<bool>(this, 'incremental_sync_disabled');

  /// Reference to `json_params` attribute.
  TfRef<String> get jsonParams => TfRef.attribute<String>(this, 'json_params');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `params` attribute.
  TfRef<Map<String, String>> get params =>
      TfRef.attribute<Map<String, String>>(this, 'params');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `refresh_interval` attribute.
  TfRef<String> get refreshInterval =>
      TfRef.attribute<String>(this, 'refresh_interval');

  /// Reference to `static_ip_enabled` attribute.
  TfRef<bool> get staticIpEnabled =>
      TfRef.attribute<bool>(this, 'static_ip_enabled');

  /// Reference to `sync_mode` attribute.
  TfRef<String> get syncMode => TfRef.attribute<String>(this, 'sync_mode');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
