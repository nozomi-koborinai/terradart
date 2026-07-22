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
  stateStopped('STATE_STOPPED');

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
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_id': workstationId,
           'workstation_config_id': workstationConfigId,
           'workstation_cluster_id': workstationClusterId,
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (env != null) 'env': env,
           if (sourceWorkstation != null)
             'source_workstation': sourceWorkstation,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkstationsWorkstationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `workstation_id` attribute.
  TfRef<String> get workstationIdRef =>
      TfRef.attribute<String>(this, 'workstation_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
