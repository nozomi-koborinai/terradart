// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_parallelstore_instance`.
const Set<String> _googleParallelstoreInstanceSensitive = <String>{};

/// Terraform `deployment_type` for [GoogleParallelstoreInstance].
enum ParallelstoreInstanceDeploymentType implements TerraformEnum {
  unspecified('DEPLOYMENT_TYPE_UNSPECIFIED'),
  scratch('SCRATCH'),
  persistent('PERSISTENT');

  const ParallelstoreInstanceDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_parallelstore_instance`.
///
/// A Parallelstore Instance.
///
/// Parallelstore **instance** — managed high-performance parallel file
/// system capacity (DAOS-based).
///
/// **Cost:** Parallelstore `3450-1C42-A427` bills provisioned capacity
/// while the instance exists — Scratch us-central1 (Iowa) SKU
/// `920E-C157-D1E5` **$0.000191781/GiBy·h** (~$0.14/GiBy·mo) and
/// Persistent `AC48-A917-C907` **$0.000821917/GiBy·h** (~$0.60/GiBy·mo).
/// Destroy stops capacity charges. Too expensive for apply-smoke —
/// ships without a quickstart (`tool/example_debt.yaml`).
///
/// Enable `parallelstore.googleapis.com` via [GoogleProjectService]
/// before apply. Prefer [deploymentType] `SCRATCH` for ephemeral
/// workloads; `PERSISTENT` for longer-lived data.
final class GoogleParallelstoreInstance extends Resource {
  static const String tfType = 'google_parallelstore_instance';

  GoogleParallelstoreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> location,
    required TfArg<String> capacityGib,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? description,
    TfArg<ParallelstoreInstanceDeploymentType>? deploymentType,
    TfArg<String>? directoryStripeLevel,
    TfArg<String>? fileStripeLevel,
    TfArg<String>? reservedIpRange,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': location,
           'capacity_gib': capacityGib,
           'network': ?network?.encodeAs('id'),
           'description': ?description,
           'deployment_type': ?deploymentType,
           'directory_stripe_level': ?directoryStripeLevel,
           'file_stripe_level': ?fileStripeLevel,
           'reserved_ip_range': ?reservedIpRange,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleParallelstoreInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleParallelstoreInstance>`.
  RefTo<GoogleParallelstoreInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_points` attribute.
  TfRef<List<String>> get accessPoints =>
      TfRef.attribute<List<String>>(this, 'access_points');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `daos_version` attribute.
  TfRef<String> get daosVersion =>
      TfRef.attribute<String>(this, 'daos_version');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_reserved_ip_range` attribute.
  TfRef<String> get effectiveReservedIpRange =>
      TfRef.attribute<String>(this, 'effective_reserved_ip_range');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `capacity_gib` attribute.
  TfRef<String> get capacityGibRef =>
      TfRef.attribute<String>(this, 'capacity_gib');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentTypeRef =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `directory_stripe_level` attribute.
  TfRef<String> get directoryStripeLevelRef =>
      TfRef.attribute<String>(this, 'directory_stripe_level');

  /// Reference to `file_stripe_level` attribute.
  TfRef<String> get fileStripeLevelRef =>
      TfRef.attribute<String>(this, 'file_stripe_level');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `reserved_ip_range` attribute.
  TfRef<String> get reservedIpRangeRef =>
      TfRef.attribute<String>(this, 'reserved_ip_range');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');
}
