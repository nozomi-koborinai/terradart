// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation`.
const Set<String> _googleWorkstationsWorkstationSensitive = <String>{};

/// Workstations Workstation enum for `state`.
enum WorkstationsWorkstationState implements TerraformEnum {
  stateStarting('STATE_STARTING'),
  stateRunning('STATE_RUNNING'),
  stateStopping('STATE_STOPPING'),
  stateStopped('STATE_STOPPED'),
  stateSuspending('STATE_SUSPENDING'),
  stateSuspended('STATE_SUSPENDED');

  const WorkstationsWorkstationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_workstations_workstation`.
///
/// A single instance of a developer workstation with its own persistent
/// storage.
///
/// Cloud Workstations **workstation** instance under a config.
///
/// **Cost:** Cloud Billing Catalog bills **instance VM (vCPU) management
/// fee** while a workstation runs (us-central1 SKU `8893-953D-5524`
/// **$0.05/h** per vCPU) plus underlying Compute. Deferred with the
/// never_apply cluster (no apply-smoke quickstart).
///
/// Example:
/// ```dart
/// GoogleWorkstationsWorkstation(
///   localName: 'alice',
///   workstationId: TfArg.literal('alice'),
///   workstationConfigId: TfArg.ref(cfg.workstationConfigIdRef),
///   workstationClusterId: TfArg.ref(cluster.workstationClusterIdRef),
///   location: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleWorkstationsWorkstation extends Resource {
  static const String tfType = 'google_workstations_workstation';

  GoogleWorkstationsWorkstation({
    required super.localName,
    required TfArg<String> workstationId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationClusterId,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? env,
    TfArg<String>? sourceWorkstation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_id': workstationId,
           'workstation_config_id': workstationConfigId,
           'workstation_cluster_id': workstationClusterId,
           'location': location,
           'display_name': ?displayName,
           'labels': ?labels,
           'annotations': ?annotations,
           'env': ?env,
           'source_workstation': ?sourceWorkstation,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkstationsWorkstationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstation>`.
  RefTo<GoogleWorkstationsWorkstation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `env` attribute.
  TfRef<Map<String, String>> get env =>
      TfRef.attribute<Map<String, String>>(this, 'env');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_workstation` attribute.
  TfRef<String> get sourceWorkstation =>
      TfRef.attribute<String>(this, 'source_workstation');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterId =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigId =>
      TfRef.attribute<String>(this, 'workstation_config_id');

  /// Reference to `workstation_id` attribute.
  TfRef<String> get workstationId =>
      TfRef.attribute<String>(this, 'workstation_id');
}
