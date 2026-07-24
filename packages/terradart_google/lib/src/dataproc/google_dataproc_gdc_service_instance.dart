// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_gdc_service_instance`.
const Set<String> _googleDataprocGdcServiceInstanceSensitive = <String>{};

/// Typed helper for the `gdce_cluster` block of
/// `google_dataproc_gdc_service_instance` (derived from provider schema).
@immutable
final class DataprocGdcServiceInstanceGdceCluster {
  const DataprocGdcServiceInstanceGdceCluster({required this.gdceCluster});

  final TfArg<String> gdceCluster;

  Map<String, Object?> encode() => {'gdce_cluster': gdceCluster.toTfJson()};
}

/// Factory wrapper for `google_dataproc_gdc_service_instance`.
///
/// A service instance is an instance of the Dataproc operator running on a GDC
/// cluster.
///
/// Dataproc on Google Distributed Cloud (GDC) **service instance** — the
/// Dataproc operator running on a GDCE cluster.
///
/// **Cost / apply:** Requires a real GDCE cluster ([gdceCluster]) that
/// `terradart-validate` cannot provision. GKE Enterprise / GDC
/// `9186-F79E-3871` bills platform capacity (e.g. GDC Bare Metal SKU
/// `297F-4642-B7A1` **$0.03288/h**; GDC vSphere `82D9-AB10-CA55`
/// **$0.03288/h**) while the edge/appliance footprint exists; Dataproc
/// job DCUs may accrue when workloads run. Destroy stops new operator
/// charges only when the parent GDC stack is torn down. Too expensive /
/// infra-dependent for apply-smoke — ships without a quickstart
/// (`tool/example_debt.yaml`).
///
/// Enable `dataprocgdc.googleapis.com` (and the GDC cluster APIs) before
/// apply.
final class GoogleDataprocGdcServiceInstance extends Resource {
  static const String tfType = 'google_dataproc_gdc_service_instance';

  GoogleDataprocGdcServiceInstance({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> serviceInstanceId,
    DataprocGdcServiceInstanceGdceCluster? gdceCluster,
    TfArg<String>? displayName,
    TfArg<String>? serviceAccount,
    TfArg<Map<String, dynamic>>? sparkServiceInstanceConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'service_instance_id': serviceInstanceId,
           if (gdceCluster != null)
             'gdce_cluster': TfArg.literal(gdceCluster.encode()),
           if (displayName != null) 'display_name': displayName,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (sparkServiceInstanceConfig != null)
             'spark_service_instance_config': sparkServiceInstanceConfig,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocGdcServiceInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_service_account` attribute.
  TfRef<String> get effectiveServiceAccount =>
      TfRef.attribute<String>(this, 'effective_service_account');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `requested_state` attribute.
  TfRef<String> get requestedState =>
      TfRef.attribute<String>(this, 'requested_state');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `service_instance_id` attribute.
  TfRef<String> get serviceInstanceIdRef =>
      TfRef.attribute<String>(this, 'service_instance_id');
}
