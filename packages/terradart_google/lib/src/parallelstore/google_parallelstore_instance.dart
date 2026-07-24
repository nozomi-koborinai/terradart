// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_parallelstore_instance`.
const Set<String> _googleParallelstoreInstanceSensitive = <String>{};

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
    TfArg<String>? network,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': location,
           'capacity_gib': capacityGib,
           if (network != null) 'network': network,
           if (description != null) 'description': description,
           if (deploymentType != null) 'deployment_type': deploymentType,
           if (directoryStripeLevel != null)
             'directory_stripe_level': directoryStripeLevel,
           if (fileStripeLevel != null) 'file_stripe_level': fileStripeLevel,
           if (reservedIpRange != null) 'reserved_ip_range': reservedIpRange,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleParallelstoreInstanceSensitive;

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');
}
