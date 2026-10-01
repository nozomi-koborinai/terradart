// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_parallelstore_instance`.
const Set<String> _googleParallelstoreInstanceSensitive = <String>{};

/// Terraform `deployment_type` for [GoogleParallelstoreInstance].
extension type const ParallelstoreInstanceDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  ParallelstoreInstanceDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  ParallelstoreInstanceDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const ParallelstoreInstanceDeploymentType.arg(TfArg<String> arg)
    : this._(arg);

  static const unspecified = ParallelstoreInstanceDeploymentType._(
    TfArgLiteral('DEPLOYMENT_TYPE_UNSPECIFIED'),
  );
  static const scratch = ParallelstoreInstanceDeploymentType._(
    TfArgLiteral('SCRATCH'),
  );
  static const persistent = ParallelstoreInstanceDeploymentType._(
    TfArgLiteral('PERSISTENT'),
  );

  static const List<ParallelstoreInstanceDeploymentType> values = [
    unspecified,
    scratch,
    persistent,
  ];
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

  GoogleParallelstoreInstance(
    super.localName, {
    required TfArg<String> instanceId,
    required TfArg<String> location,
    required TfArg<String> capacityGib,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? description,
    ParallelstoreInstanceDeploymentType? deploymentType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get capacityGib =>
      TfRef.attribute<String>(this, 'capacity_gib');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `directory_stripe_level` attribute.
  TfRef<String> get directoryStripeLevel =>
      TfRef.attribute<String>(this, 'directory_stripe_level');

  /// Reference to `file_stripe_level` attribute.
  TfRef<String> get fileStripeLevel =>
      TfRef.attribute<String>(this, 'file_stripe_level');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `reserved_ip_range` attribute.
  TfRef<String> get reservedIpRange =>
      TfRef.attribute<String>(this, 'reserved_ip_range');
}
