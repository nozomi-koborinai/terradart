// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_clouddeploy_target`.
const Set<String> _googleClouddeployTargetSensitive = <String>{};

/// Typed helper for the `anthos_cluster` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetAnthosCluster {
  const ClouddeployTargetAnthosCluster({this.membership});

  final TfArg<String>? membership;

  Map<String, Object?> encode() => {'membership': ?membership?.toTfJson()};
}

/// Typed helper for the `associated_entities` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetAssociatedEntities {
  const ClouddeployTargetAssociatedEntities({
    required this.entityId,
    this.anthosClusters,
    this.gkeClusters,
  });

  final TfArg<String> entityId;

  final List<ClouddeployTargetAssociatedEntitiesAnthosClusters>? anthosClusters;

  final List<ClouddeployTargetAssociatedEntitiesGkeClusters>? gkeClusters;

  Map<String, Object?> encode() => {
    'entity_id': entityId.toTfJson(),
    if (anthosClusters != null)
      'anthos_clusters': [for (final e in anthosClusters!) e.encode()],
    if (gkeClusters != null)
      'gke_clusters': [for (final e in gkeClusters!) e.encode()],
  };
}

/// Typed helper for the `associated_entities.anthos_clusters` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetAssociatedEntitiesAnthosClusters {
  const ClouddeployTargetAssociatedEntitiesAnthosClusters({this.membership});

  final TfArg<String>? membership;

  Map<String, Object?> encode() => {'membership': ?membership?.toTfJson()};
}

/// Typed helper for the `associated_entities.gke_clusters` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetAssociatedEntitiesGkeClusters {
  const ClouddeployTargetAssociatedEntitiesGkeClusters({
    this.cluster,
    this.internalIp,
    this.proxyUrl,
  });

  final TfArg<String>? cluster;

  final TfArg<bool>? internalIp;

  final TfArg<String>? proxyUrl;

  Map<String, Object?> encode() => {
    'cluster': ?cluster?.toTfJson(),
    'internal_ip': ?internalIp?.toTfJson(),
    'proxy_url': ?proxyUrl?.toTfJson(),
  };
}

/// Typed helper for the `custom_target` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetCustomTarget {
  const ClouddeployTargetCustomTarget({required this.customTargetType});

  final TfArg<String> customTargetType;

  Map<String, Object?> encode() => {
    'custom_target_type': customTargetType.toTfJson(),
  };
}

/// Typed helper for the `execution_configs` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetExecutionConfigs {
  const ClouddeployTargetExecutionConfigs({
    this.artifactStorage,
    this.executionTimeout,
    this.serviceAccount,
    required this.usages,
    this.verbose,
    this.workerPool,
    this.defaultPool,
    this.privatePool,
  });

  final TfArg<String>? artifactStorage;

  final TfArg<String>? executionTimeout;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<List<Object?>> usages;

  final TfArg<bool>? verbose;

  final TfArg<String>? workerPool;

  final ClouddeployTargetExecutionConfigsDefaultPool? defaultPool;

  final ClouddeployTargetExecutionConfigsPrivatePool? privatePool;

  Map<String, Object?> encode() => {
    'artifact_storage': ?artifactStorage?.toTfJson(),
    'execution_timeout': ?executionTimeout?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'usages': usages.toTfJson(),
    'verbose': ?verbose?.toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
    'default_pool': ?defaultPool?.encode(),
    'private_pool': ?privatePool?.encode(),
  };
}

/// Typed helper for the `execution_configs.default_pool` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetExecutionConfigsDefaultPool {
  const ClouddeployTargetExecutionConfigsDefaultPool({
    this.artifactStorage,
    this.serviceAccount,
  });

  final TfArg<String>? artifactStorage;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  Map<String, Object?> encode() => {
    'artifact_storage': ?artifactStorage?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `execution_configs.private_pool` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetExecutionConfigsPrivatePool {
  const ClouddeployTargetExecutionConfigsPrivatePool({
    this.artifactStorage,
    this.serviceAccount,
    required this.workerPool,
  });

  final TfArg<String>? artifactStorage;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String> workerPool;

  Map<String, Object?> encode() => {
    'artifact_storage': ?artifactStorage?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'worker_pool': workerPool.toTfJson(),
  };
}

/// Typed helper for the `gke` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetGke {
  const ClouddeployTargetGke({
    this.cluster,
    this.dnsEndpoint,
    this.internalIp,
    this.proxyUrl,
  });

  final TfArg<String>? cluster;

  final TfArg<bool>? dnsEndpoint;

  final TfArg<bool>? internalIp;

  final TfArg<String>? proxyUrl;

  Map<String, Object?> encode() => {
    'cluster': ?cluster?.toTfJson(),
    'dns_endpoint': ?dnsEndpoint?.toTfJson(),
    'internal_ip': ?internalIp?.toTfJson(),
    'proxy_url': ?proxyUrl?.toTfJson(),
  };
}

/// Typed helper for the `multi_target` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetMultiTarget {
  const ClouddeployTargetMultiTarget({required this.targetIds});

  final TfArg<List<Object?>> targetIds;

  Map<String, Object?> encode() => {'target_ids': targetIds.toTfJson()};
}

/// Typed helper for the `run` block of
/// `google_clouddeploy_target` (derived from provider schema).
@immutable
final class ClouddeployTargetRun {
  const ClouddeployTargetRun({required this.location});

  final TfArg<String> location;

  Map<String, Object?> encode() => {'location': location.toTfJson()};
}

/// Factory wrapper for `google_clouddeploy_target`.
///
/// The Cloud Deploy `Target` resource.
final class GoogleClouddeployTarget extends Resource {
  static const String tfType = 'google_clouddeploy_target';

  GoogleClouddeployTarget({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    ClouddeployTargetGke? gke,
    ClouddeployTargetRun? run,
    ClouddeployTargetMultiTarget? multiTarget,
    ClouddeployTargetAnthosCluster? anthosCluster,
    ClouddeployTargetCustomTarget? customTarget,
    List<ClouddeployTargetExecutionConfigs>? executionConfigs,
    List<ClouddeployTargetAssociatedEntities>? associatedEntities,
    TfArg<Map<String, String>>? deployParameters,
    TfArg<bool>? requireApproval,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
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
           'name': name,
           'location': location,
           if (gke != null) 'gke': TfArg.literal(gke.encode()),
           if (run != null) 'run': TfArg.literal(run.encode()),
           if (multiTarget != null)
             'multi_target': TfArg.literal(multiTarget.encode()),
           if (anthosCluster != null)
             'anthos_cluster': TfArg.literal(anthosCluster.encode()),
           if (customTarget != null)
             'custom_target': TfArg.literal(customTarget.encode()),
           if (executionConfigs != null)
             'execution_configs': TfArg.literal([
               for (final e in executionConfigs) e.encode(),
             ]),
           if (associatedEntities != null)
             'associated_entities': TfArg.literal([
               for (final e in associatedEntities) e.encode(),
             ]),
           'deploy_parameters': ?deployParameters,
           'require_approval': ?requireApproval,
           'description': ?description,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployTarget>`.
  RefTo<GoogleClouddeployTarget> get ref => RefTo.of(this);

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

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
