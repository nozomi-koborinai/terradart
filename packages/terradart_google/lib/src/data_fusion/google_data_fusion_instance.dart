// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_data_fusion_instance`.
const Set<String> _googleDataFusionInstanceSensitive = <String>{};

/// Data Fusion Instance enum for `state`.
extension type const DataFusionInstanceState._(TfArg<String> _)
    implements TfArg<String> {
  DataFusionInstanceState.variable(String name) : this._(TfArg.variable(name));
  DataFusionInstanceState.expression(String template)
    : this._(TfArg.expression(template));
  const DataFusionInstanceState.arg(TfArg<String> arg) : this._(arg);

  static const creating = DataFusionInstanceState._(TfArgLiteral('CREATING'));
  static const running = DataFusionInstanceState._(TfArgLiteral('RUNNING'));
  static const failed = DataFusionInstanceState._(TfArgLiteral('FAILED'));
  static const deleting = DataFusionInstanceState._(TfArgLiteral('DELETING'));
  static const upgrading = DataFusionInstanceState._(TfArgLiteral('UPGRADING'));
  static const restarting = DataFusionInstanceState._(
    TfArgLiteral('RESTARTING'),
  );

  static const List<DataFusionInstanceState> values = [
    creating,
    running,
    failed,
    deleting,
    upgrading,
    restarting,
  ];
}

/// Data Fusion Instance enum for `type`.
extension type const DataFusionInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  DataFusionInstanceType.variable(String name) : this._(TfArg.variable(name));
  DataFusionInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFusionInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const basic = DataFusionInstanceType._(TfArgLiteral('BASIC'));
  static const enterprise = DataFusionInstanceType._(
    TfArgLiteral('ENTERPRISE'),
  );
  static const developer = DataFusionInstanceType._(TfArgLiteral('DEVELOPER'));

  static const List<DataFusionInstanceType> values = [
    basic,
    enterprise,
    developer,
  ];
}

/// Typed helper for the `accelerators` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceAccelerators {
  const DataFusionInstanceAccelerators({
    required this.acceleratorType,
    required this.state,
  });

  final DataFusionInstanceAcceleratorType acceleratorType;

  final DataFusionInstanceAcceleratorsState state;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_type': acceleratorType.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
extension type const DataFusionInstanceAcceleratorType._(TfArg<String> _)
    implements TfArg<String> {
  DataFusionInstanceAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  DataFusionInstanceAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFusionInstanceAcceleratorType.arg(TfArg<String> arg) : this._(arg);

  static const cdc = DataFusionInstanceAcceleratorType._(TfArgLiteral('CDC'));
  static const healthcare = DataFusionInstanceAcceleratorType._(
    TfArgLiteral('HEALTHCARE'),
  );
  static const ccaiInsights = DataFusionInstanceAcceleratorType._(
    TfArgLiteral('CCAI_INSIGHTS'),
  );

  static const List<DataFusionInstanceAcceleratorType> values = [
    cdc,
    healthcare,
    ccaiInsights,
  ];
}

/// `state` — derived from the provider schema description.
extension type const DataFusionInstanceAcceleratorsState._(TfArg<String> _)
    implements TfArg<String> {
  DataFusionInstanceAcceleratorsState.variable(String name)
    : this._(TfArg.variable(name));
  DataFusionInstanceAcceleratorsState.expression(String template)
    : this._(TfArg.expression(template));
  const DataFusionInstanceAcceleratorsState.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = DataFusionInstanceAcceleratorsState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = DataFusionInstanceAcceleratorsState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<DataFusionInstanceAcceleratorsState> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `crypto_key_config` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceCryptoKeyConfig {
  const DataFusionInstanceCryptoKeyConfig({required this.keyReference});

  final TfArg<String> keyReference;

  @internal
  Map<String, Object?> encode() => {'key_reference': keyReference.toTfJson()};
}

/// Typed helper for the `event_publish_config` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceEventPublishConfig {
  const DataFusionInstanceEventPublishConfig({
    required this.enabled,
    required this.topic,
  });

  final TfArg<bool> enabled;

  final RefTo<GooglePubsubTopic> topic;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'topic': topic.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceMaintenancePolicy {
  const DataFusionInstanceMaintenancePolicy({this.maintenanceWindow});

  final DataFusionInstanceMaintenanceWindow? maintenanceWindow;

  @internal
  Map<String, Object?> encode() => {
    'maintenance_window': ?maintenanceWindow?.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_window` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceMaintenanceWindow {
  const DataFusionInstanceMaintenanceWindow({
    required this.recurringTimeWindow,
  });

  final DataFusionInstanceRecurringTimeWindow recurringTimeWindow;

  @internal
  Map<String, Object?> encode() => {
    'recurring_time_window': recurringTimeWindow.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_window.recurring_time_window` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceRecurringTimeWindow {
  const DataFusionInstanceRecurringTimeWindow({
    required this.recurrence,
    required this.window,
  });

  final TfArg<String> recurrence;

  final DataFusionInstanceWindow window;

  @internal
  Map<String, Object?> encode() => {
    'recurrence': recurrence.toTfJson(),
    'window': window.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_window.recurring_time_window.window` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceWindow {
  const DataFusionInstanceWindow({
    required this.endTime,
    required this.startTime,
  });

  final TfArg<String> endTime;

  final TfArg<String> startTime;

  @internal
  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `network_config` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstanceNetworkConfig {
  const DataFusionInstanceNetworkConfig({
    this.connectionType,
    this.ipAllocation,
    this.network,
    this.privateServiceConnectConfig,
  });

  final DataFusionInstanceConnectionType? connectionType;

  final TfArg<String>? ipAllocation;

  final RefTo<GoogleComputeNetwork>? network;

  final DataFusionInstancePrivateServiceConnectConfig?
  privateServiceConnectConfig;

  @internal
  Map<String, Object?> encode() => {
    'connection_type': ?connectionType?.toTfJson(),
    'ip_allocation': ?ipAllocation?.toTfJson(),
    'network': ?network?.encodeAs('name').toTfJson(),
    'private_service_connect_config': ?privateServiceConnectConfig?.encode(),
  };
}

/// `connection_type` — derived from the provider schema description.
extension type const DataFusionInstanceConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  DataFusionInstanceConnectionType.variable(String name)
    : this._(TfArg.variable(name));
  DataFusionInstanceConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFusionInstanceConnectionType.arg(TfArg<String> arg) : this._(arg);

  static const vpcPeering = DataFusionInstanceConnectionType._(
    TfArgLiteral('VPC_PEERING'),
  );
  static const privateServiceConnectInterfaces =
      DataFusionInstanceConnectionType._(
        TfArgLiteral('PRIVATE_SERVICE_CONNECT_INTERFACES'),
      );

  static const List<DataFusionInstanceConnectionType> values = [
    vpcPeering,
    privateServiceConnectInterfaces,
  ];
}

/// Typed helper for the `network_config.private_service_connect_config` block of
/// `google_data_fusion_instance` (derived from provider schema).
@immutable
final class DataFusionInstancePrivateServiceConnectConfig {
  const DataFusionInstancePrivateServiceConnectConfig({
    this.networkAttachment,
    this.unreachableCidrBlock,
  });

  final TfArg<String>? networkAttachment;

  final TfArg<String>? unreachableCidrBlock;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    'unreachable_cidr_block': ?unreachableCidrBlock?.toTfJson(),
  };
}

/// Factory wrapper for `google_data_fusion_instance`.
///
/// Represents a Data Fusion instance.
///
/// Cloud Data Fusion **instance** — managed CDAP data integration
/// (pipeline authoring + execution control plane).
///
/// **Cost:** Cloud Data Fusion `0D19-EC86-35B0` bills instance hours by
/// [type] while the instance exists — Developer SKU `88BC-986D-9A22`
/// **$0.35/h**, Basic `E74D-F7A2-0BF5` **$1.8/h** after 120 free hours/mo,
/// Enterprise `37C9-6893-468A` **$4.2/h**. Destroy stops instance charges.
/// Too expensive for apply-smoke — ships without a quickstart
/// (`tool/example_debt.yaml`).
///
/// Enable `datafusion.googleapis.com` via [GoogleProjectService] before
/// apply. Prefer Developer for sandboxes; Enterprise enables streaming
/// and higher concurrency.
final class GoogleDataFusionInstance extends Resource {
  static const String tfType = 'google_data_fusion_instance';

  GoogleDataFusionInstance(
    super.localName, {
    required TfArg<String> name,
    required DataFusionInstanceType type,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? privateInstance,
    TfArg<bool>? enableRbac,
    TfArg<bool>? enableStackdriverLogging,
    TfArg<bool>? enableStackdriverMonitoring,
    TfArg<String>? version,
    TfArg<String>? zone,
    DataFusionInstanceNetworkConfig? networkConfig,
    DataFusionInstanceCryptoKeyConfig? cryptoKeyConfig,
    DataFusionInstanceEventPublishConfig? eventPublishConfig,
    List<DataFusionInstanceAccelerators>? accelerators,
    DataFusionInstanceMaintenancePolicy? maintenancePolicy,
    TfArg<Map<String, String>>? options,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? dataprocServiceAccount,
    TfArg<String>? patchRevision,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': type,
           'region': ?region,
           'description': ?description,
           'display_name': ?displayName,
           'private_instance': ?privateInstance,
           'enable_rbac': ?enableRbac,
           'enable_stackdriver_logging': ?enableStackdriverLogging,
           'enable_stackdriver_monitoring': ?enableStackdriverMonitoring,
           'version': ?version,
           'zone': ?zone,
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (cryptoKeyConfig != null)
             'crypto_key_config': TfArg.literal(cryptoKeyConfig.encode()),
           if (eventPublishConfig != null)
             'event_publish_config': TfArg.literal(eventPublishConfig.encode()),
           if (accelerators != null)
             'accelerators': TfArg.literal([
               for (final e in accelerators) e.encode(),
             ]),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal(maintenancePolicy.encode()),
           'options': ?options,
           'labels': ?labels,
           'tags': ?tags,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'dataproc_service_account': ?dataprocServiceAccount,
           'patch_revision': ?patchRevision,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataFusionInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataFusionInstance>`.
  RefTo<GoogleDataFusionInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_endpoint` attribute.
  TfRef<String> get apiEndpoint =>
      TfRef.attribute<String>(this, 'api_endpoint');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucket => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `maintenance_events` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceEvents =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_events');

  /// Reference to `p4_service_account` attribute.
  TfRef<String> get p4ServiceAccount =>
      TfRef.attribute<String>(this, 'p4_service_account');

  /// Reference to `service_endpoint` attribute.
  TfRef<String> get serviceEndpoint =>
      TfRef.attribute<String>(this, 'service_endpoint');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `tenant_project_id` attribute.
  TfRef<String> get tenantProjectId =>
      TfRef.attribute<String>(this, 'tenant_project_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `dataproc_service_account` attribute.
  TfRef<String> get dataprocServiceAccount =>
      TfRef.attribute<String>(this, 'dataproc_service_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_rbac` attribute.
  TfRef<bool> get enableRbac => TfRef.attribute<bool>(this, 'enable_rbac');

  /// Reference to `enable_stackdriver_logging` attribute.
  TfRef<bool> get enableStackdriverLogging =>
      TfRef.attribute<bool>(this, 'enable_stackdriver_logging');

  /// Reference to `enable_stackdriver_monitoring` attribute.
  TfRef<bool> get enableStackdriverMonitoring =>
      TfRef.attribute<bool>(this, 'enable_stackdriver_monitoring');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `options` attribute.
  TfRef<Map<String, String>> get options =>
      TfRef.attribute<Map<String, String>>(this, 'options');

  /// Reference to `patch_revision` attribute.
  TfRef<String> get patchRevision =>
      TfRef.attribute<String>(this, 'patch_revision');

  /// Reference to `private_instance` attribute.
  TfRef<bool> get privateInstance =>
      TfRef.attribute<bool>(this, 'private_instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
