// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_delivery_pipeline`.
const Set<String> _googleClouddeployDeliveryPipelineSensitive = <String>{};

/// Typed helper for the `serial_pipeline` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipeline {
  const ClouddeployDeliveryPipelineSerialPipeline({this.stages});

  final List<ClouddeployDeliveryPipelineStages>? stages;

  Map<String, Object?> encode() => {
    if (stages != null) 'stages': [for (final e in stages!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineStages {
  const ClouddeployDeliveryPipelineStages({
    this.profiles,
    this.targetId,
    this.deployParameters,
    this.strategy,
  });

  final TfArg<List<String>>? profiles;

  final TfArg<String>? targetId;

  final List<ClouddeployDeliveryPipelineDeployParameters>? deployParameters;

  final ClouddeployDeliveryPipelineStrategy? strategy;

  Map<String, Object?> encode() => {
    'profiles': ?profiles?.toTfJson(),
    'target_id': ?targetId?.toTfJson(),
    if (deployParameters != null)
      'deploy_parameters': [for (final e in deployParameters!) e.encode()],
    'strategy': ?strategy?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.deploy_parameters` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineDeployParameters {
  const ClouddeployDeliveryPipelineDeployParameters({
    this.matchTargetLabels,
    required this.values,
  });

  final TfArg<Map<String, String>>? matchTargetLabels;

  final TfArg<Map<String, String>> values;

  Map<String, Object?> encode() => {
    'match_target_labels': ?matchTargetLabels?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineStrategy {
  const ClouddeployDeliveryPipelineStrategy({this.canary, this.standard});

  final ClouddeployDeliveryPipelineCanary? canary;

  final ClouddeployDeliveryPipelineStandard? standard;

  Map<String, Object?> encode() => {
    'canary': ?canary?.encode(),
    'standard': ?standard?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineCanary {
  const ClouddeployDeliveryPipelineCanary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  final ClouddeployDeliveryPipelineCanaryDeployment? canaryDeployment;

  final ClouddeployDeliveryPipelineCustomCanaryDeployment?
  customCanaryDeployment;

  final ClouddeployDeliveryPipelineRuntimeConfig? runtimeConfig;

  Map<String, Object?> encode() => {
    'canary_deployment': ?canaryDeployment?.encode(),
    'custom_canary_deployment': ?customCanaryDeployment?.encode(),
    'runtime_config': ?runtimeConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineCanaryDeployment {
  const ClouddeployDeliveryPipelineCanaryDeployment({
    required this.percentages,
    this.verify,
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verifyConfig,
  });

  final TfArg<List<num>> percentages;

  final TfArg<bool>? verify;

  final ClouddeployDeliveryPipelineAnalysis? analysis;

  final ClouddeployDeliveryPipelineCanaryDeploymentPostdeploy? postdeploy;

  final ClouddeployDeliveryPipelineCanaryDeploymentPredeploy? predeploy;

  final ClouddeployDeliveryPipelineVerifyConfig? verifyConfig;

  Map<String, Object?> encode() => {
    'percentages': percentages.toTfJson(),
    'verify': ?verify?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'postdeploy': ?postdeploy?.encode(),
    'predeploy': ?predeploy?.encode(),
    'verify_config': ?verifyConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineAnalysis {
  const ClouddeployDeliveryPipelineAnalysis({
    required this.duration,
    this.customChecks,
    this.googleCloud,
  });

  final TfArg<String> duration;

  final List<ClouddeployDeliveryPipelineCustomChecks>? customChecks;

  final ClouddeployDeliveryPipelineGoogleCloud? googleCloud;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (customChecks != null)
      'custom_checks': [for (final e in customChecks!) e.encode()],
    'google_cloud': ?googleCloud?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.custom_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineCustomChecks {
  const ClouddeployDeliveryPipelineCustomChecks({
    this.frequency,
    required this.id,
    this.task,
  });

  final TfArg<String>? frequency;

  final TfArg<String> id;

  final ClouddeployDeliveryPipelineTask? task;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'id': id.toTfJson(),
    'task': ?task?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.custom_checks.task` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineTask {
  const ClouddeployDeliveryPipelineTask({this.container});

  final ClouddeployDeliveryPipelineContainer? container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineContainer {
  const ClouddeployDeliveryPipelineContainer({
    this.args,
    this.command,
    this.env,
    required this.image,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<Map<String, String>>? env;

  final TfArg<String> image;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'env': ?env?.toTfJson(),
    'image': image.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.google_cloud` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineGoogleCloud {
  const ClouddeployDeliveryPipelineGoogleCloud({this.alertPolicyChecks});

  final List<ClouddeployDeliveryPipelineAlertPolicyChecks>? alertPolicyChecks;

  Map<String, Object?> encode() => {
    if (alertPolicyChecks != null)
      'alert_policy_checks': [for (final e in alertPolicyChecks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.google_cloud.alert_policy_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineAlertPolicyChecks {
  const ClouddeployDeliveryPipelineAlertPolicyChecks({
    required this.alertPolicies,
    required this.id,
    this.labels,
  });

  final TfArg<List<String>> alertPolicies;

  final TfArg<String> id;

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    'alert_policies': alertPolicies.toTfJson(),
    'id': id.toTfJson(),
    'labels': ?labels?.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.postdeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineCanaryDeploymentPostdeploy {
  const ClouddeployDeliveryPipelineCanaryDeploymentPostdeploy({this.actions});

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.predeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineCanaryDeploymentPredeploy {
  const ClouddeployDeliveryPipelineCanaryDeploymentPredeploy({this.actions});

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.verify_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineVerifyConfig {
  const ClouddeployDeliveryPipelineVerifyConfig({this.tasks});

  final List<ClouddeployDeliveryPipelineTasks>? tasks;

  Map<String, Object?> encode() => {
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ClouddeployDeliveryPipelineTasks {
  const ClouddeployDeliveryPipelineTasks({this.container});

  final ClouddeployDeliveryPipelineContainer? container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineCustomCanaryDeployment {
  const ClouddeployDeliveryPipelineCustomCanaryDeployment({
    required this.phaseConfigs,
  });

  final List<ClouddeployDeliveryPipelinePhaseConfigs> phaseConfigs;

  Map<String, Object?> encode() => {
    'phase_configs': [for (final e in phaseConfigs) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelinePhaseConfigs {
  const ClouddeployDeliveryPipelinePhaseConfigs({
    required this.percentage,
    required this.phaseId,
    this.profiles,
    this.verify,
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verifyConfig,
  });

  final TfArg<num> percentage;

  final TfArg<String> phaseId;

  final TfArg<List<String>>? profiles;

  final TfArg<bool>? verify;

  final ClouddeployDeliveryPipelineAnalysis? analysis;

  final ClouddeployDeliveryPipelineCanaryDeploymentPostdeploy? postdeploy;

  final ClouddeployDeliveryPipelineCanaryDeploymentPredeploy? predeploy;

  final ClouddeployDeliveryPipelineVerifyConfig? verifyConfig;

  Map<String, Object?> encode() => {
    'percentage': percentage.toTfJson(),
    'phase_id': phaseId.toTfJson(),
    'profiles': ?profiles?.toTfJson(),
    'verify': ?verify?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'postdeploy': ?postdeploy?.encode(),
    'predeploy': ?predeploy?.encode(),
    'verify_config': ?verifyConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineRuntimeConfig {
  const ClouddeployDeliveryPipelineRuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  final ClouddeployDeliveryPipelineCloudRun? cloudRun;

  final ClouddeployDeliveryPipelineKubernetes? kubernetes;

  Map<String, Object?> encode() => {
    'cloud_run': ?cloudRun?.encode(),
    'kubernetes': ?kubernetes?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.cloud_run` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineCloudRun {
  const ClouddeployDeliveryPipelineCloudRun({
    this.automaticTrafficControl,
    this.canaryRevisionTags,
    this.priorRevisionTags,
    this.stableRevisionTags,
  });

  final TfArg<bool>? automaticTrafficControl;

  final TfArg<List<String>>? canaryRevisionTags;

  final TfArg<List<String>>? priorRevisionTags;

  final TfArg<List<String>>? stableRevisionTags;

  Map<String, Object?> encode() => {
    'automatic_traffic_control': ?automaticTrafficControl?.toTfJson(),
    'canary_revision_tags': ?canaryRevisionTags?.toTfJson(),
    'prior_revision_tags': ?priorRevisionTags?.toTfJson(),
    'stable_revision_tags': ?stableRevisionTags?.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.kubernetes` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineKubernetes {
  const ClouddeployDeliveryPipelineKubernetes({
    this.gatewayServiceMesh,
    this.serviceNetworking,
  });

  final ClouddeployDeliveryPipelineGatewayServiceMesh? gatewayServiceMesh;

  final ClouddeployDeliveryPipelineServiceNetworking? serviceNetworking;

  Map<String, Object?> encode() => {
    'gateway_service_mesh': ?gatewayServiceMesh?.encode(),
    'service_networking': ?serviceNetworking?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineGatewayServiceMesh {
  const ClouddeployDeliveryPipelineGatewayServiceMesh({
    required this.deployment,
    required this.httpRoute,
    this.podSelectorLabel,
    this.routeUpdateWaitTime,
    required this.service,
    this.stableCutbackDuration,
    this.routeDestinations,
  });

  final TfArg<String> deployment;

  final TfArg<String> httpRoute;

  final TfArg<String>? podSelectorLabel;

  final TfArg<String>? routeUpdateWaitTime;

  final TfArg<String> service;

  final TfArg<String>? stableCutbackDuration;

  final ClouddeployDeliveryPipelineRouteDestinations? routeDestinations;

  Map<String, Object?> encode() => {
    'deployment': deployment.toTfJson(),
    'http_route': httpRoute.toTfJson(),
    'pod_selector_label': ?podSelectorLabel?.toTfJson(),
    'route_update_wait_time': ?routeUpdateWaitTime?.toTfJson(),
    'service': service.toTfJson(),
    'stable_cutback_duration': ?stableCutbackDuration?.toTfJson(),
    'route_destinations': ?routeDestinations?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh.route_destinations` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineRouteDestinations {
  const ClouddeployDeliveryPipelineRouteDestinations({
    required this.destinationIds,
    this.propagateService,
  });

  final TfArg<List<String>> destinationIds;

  final TfArg<bool>? propagateService;

  Map<String, Object?> encode() => {
    'destination_ids': destinationIds.toTfJson(),
    'propagate_service': ?propagateService?.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.service_networking` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineServiceNetworking {
  const ClouddeployDeliveryPipelineServiceNetworking({
    required this.deployment,
    this.disablePodOverprovisioning,
    this.podSelectorLabel,
    required this.service,
  });

  final TfArg<String> deployment;

  final TfArg<bool>? disablePodOverprovisioning;

  final TfArg<String>? podSelectorLabel;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'deployment': deployment.toTfJson(),
    'disable_pod_overprovisioning': ?disablePodOverprovisioning?.toTfJson(),
    'pod_selector_label': ?podSelectorLabel?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineStandard {
  const ClouddeployDeliveryPipelineStandard({
    this.verify,
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verifyConfig,
  });

  final TfArg<bool>? verify;

  final ClouddeployDeliveryPipelineAnalysis? analysis;

  final ClouddeployDeliveryPipelinePostdeploy? postdeploy;

  final ClouddeployDeliveryPipelinePredeploy? predeploy;

  final ClouddeployDeliveryPipelineVerifyConfig? verifyConfig;

  Map<String, Object?> encode() => {
    'verify': ?verify?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'postdeploy': ?postdeploy?.encode(),
    'predeploy': ?predeploy?.encode(),
    'verify_config': ?verifyConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelinePostdeploy {
  const ClouddeployDeliveryPipelinePostdeploy({this.actions, this.tasks});

  final TfArg<List<String>>? actions;

  final List<ClouddeployDeliveryPipelineTasks>? tasks;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.predeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelinePredeploy {
  const ClouddeployDeliveryPipelinePredeploy({this.actions, this.tasks});

  final TfArg<List<String>>? actions;

  final List<ClouddeployDeliveryPipelineTasks>? tasks;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Factory wrapper for `google_clouddeploy_delivery_pipeline`.
///
/// A DeliveryPipeline defines a pipeline through which a Skaffold configuration
/// can progress.
final class GoogleClouddeployDeliveryPipeline extends Resource {
  static const String tfType = 'google_clouddeploy_delivery_pipeline';

  GoogleClouddeployDeliveryPipeline({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    ClouddeployDeliveryPipelineSerialPipeline? serialPipeline,
    TfArg<String>? description,
    TfArg<bool>? suspended,
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
           if (serialPipeline != null)
             'serial_pipeline': TfArg.literal(serialPipeline.encode()),
           'description': ?description,
           'suspended': ?suspended,
           'annotations': ?annotations,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployDeliveryPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployDeliveryPipeline>`.
  RefTo<GoogleClouddeployDeliveryPipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `condition` attribute.
  TfRef<List<Map<String, Object?>>> get condition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'condition');

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspendedRef => TfRef.attribute<bool>(this, 'suspended');
}
