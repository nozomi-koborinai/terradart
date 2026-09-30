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

  final List<ClouddeployDeliveryPipelineSerialPipelineStages>? stages;

  Map<String, Object?> encode() => {
    if (stages != null) 'stages': [for (final e in stages!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStages {
  const ClouddeployDeliveryPipelineSerialPipelineStages({
    this.profiles,
    this.targetId,
    this.deployParameters,
    this.strategy,
  });

  final TfArg<List<String>>? profiles;

  final TfArg<String>? targetId;

  final List<ClouddeployDeliveryPipelineSerialPipelineStagesDeployParameters>?
  deployParameters;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategy? strategy;

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
final class ClouddeployDeliveryPipelineSerialPipelineStagesDeployParameters {
  const ClouddeployDeliveryPipelineSerialPipelineStagesDeployParameters({
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
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategy({
    this.canary,
    this.standard,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanary? canary;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandard?
  standard;

  Map<String, Object?> encode() => {
    'canary': ?canary?.encode(),
    'standard': ?standard?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanary {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeployment?
  canaryDeployment;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeployment?
  customCanaryDeployment;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfig?
  runtimeConfig;

  Map<String, Object?> encode() => {
    'canary_deployment': ?canaryDeployment?.encode(),
    'custom_canary_deployment': ?customCanaryDeployment?.encode(),
    'runtime_config': ?runtimeConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeployment {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeployment({
    required this.percentages,
    this.verify,
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verifyConfig,
  });

  final TfArg<List<num>> percentages;

  final TfArg<bool>? verify;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysis?
  analysis;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPostdeploy?
  postdeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPredeploy?
  predeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfig?
  verifyConfig;

  Map<String, Object?> encode() => {
    'percentages': percentages.toTfJson(),
    'verify': ?verify?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'postdeploy': ?postdeploy?.encode(),
    'predeploy': ?predeploy?.encode(),
    'verify_config': ?verifyConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysis {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysis({
    required this.duration,
    this.customChecks,
    this.googleCloud,
  });

  final TfArg<String> duration;

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecks
  >?
  customChecks;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloud?
  googleCloud;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (customChecks != null)
      'custom_checks': [for (final e in customChecks!) e.encode()],
    'google_cloud': ?googleCloud?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis.custom_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecks({
    this.frequency,
    required this.id,
    this.task,
  });

  final TfArg<String>? frequency;

  final TfArg<String> id;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTask?
  task;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'id': id.toTfJson(),
    'task': ?task?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis.custom_checks.task` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTask {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTask({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTaskContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis.custom_checks.task.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTaskContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisCustomChecksTaskContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis.google_cloud` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloud {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyChecks
  >?
  alertPolicyChecks;

  Map<String, Object?> encode() => {
    if (alertPolicyChecks != null)
      'alert_policy_checks': [for (final e in alertPolicyChecks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.analysis.google_cloud.alert_policy_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentAnalysisGoogleCloudAlertPolicyChecks({
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
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPostdeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPostdeploy({
    this.actions,
  });

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.predeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPredeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentPredeploy({
    this.actions,
  });

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.verify_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfig {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfig({
    this.tasks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasks
  >?
  tasks;

  Map<String, Object?> encode() => {
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.verify_config.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasks({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasksContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.canary_deployment.verify_config.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasksContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCanaryDeploymentVerifyConfigTasksContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeployment {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeployment({
    required this.phaseConfigs,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigs
  >
  phaseConfigs;

  Map<String, Object?> encode() => {
    'phase_configs': [for (final e in phaseConfigs) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigs {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigs({
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

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysis?
  analysis;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPostdeploy?
  postdeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPredeploy?
  predeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfig?
  verifyConfig;

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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysis {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysis({
    required this.duration,
    this.customChecks,
    this.googleCloud,
  });

  final TfArg<String> duration;

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecks
  >?
  customChecks;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloud?
  googleCloud;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (customChecks != null)
      'custom_checks': [for (final e in customChecks!) e.encode()],
    'google_cloud': ?googleCloud?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis.custom_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecks({
    this.frequency,
    required this.id,
    this.task,
  });

  final TfArg<String>? frequency;

  final TfArg<String> id;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTask?
  task;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'id': id.toTfJson(),
    'task': ?task?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis.custom_checks.task` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTask {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTask({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTaskContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis.custom_checks.task.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTaskContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisCustomChecksTaskContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis.google_cloud` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloud {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloudAlertPolicyChecks
  >?
  alertPolicyChecks;

  Map<String, Object?> encode() => {
    if (alertPolicyChecks != null)
      'alert_policy_checks': [for (final e in alertPolicyChecks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.analysis.google_cloud.alert_policy_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloudAlertPolicyChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsAnalysisGoogleCloudAlertPolicyChecks({
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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.postdeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPostdeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPostdeploy({
    this.actions,
  });

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.predeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPredeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsPredeploy({
    this.actions,
  });

  final TfArg<List<String>>? actions;

  Map<String, Object?> encode() => {'actions': ?actions?.toTfJson()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.verify_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfig {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfig({
    this.tasks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasks
  >?
  tasks;

  Map<String, Object?> encode() => {
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.verify_config.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasks({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasksContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.custom_canary_deployment.phase_configs.verify_config.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasksContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryCustomCanaryDeploymentPhaseConfigsVerifyConfigTasksContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfig {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigCloudRun?
  cloudRun;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetes?
  kubernetes;

  Map<String, Object?> encode() => {
    'cloud_run': ?cloudRun?.encode(),
    'kubernetes': ?kubernetes?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.cloud_run` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigCloudRun {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigCloudRun({
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
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetes {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetes({
    this.gatewayServiceMesh,
    this.serviceNetworking,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh?
  gatewayServiceMesh;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesServiceNetworking?
  serviceNetworking;

  Map<String, Object?> encode() => {
    'gateway_service_mesh': ?gatewayServiceMesh?.encode(),
    'service_networking': ?serviceNetworking?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.canary.runtime_config.kubernetes.gateway_service_mesh` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMesh({
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

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations?
  routeDestinations;

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
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesGatewayServiceMeshRouteDestinations({
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
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesServiceNetworking {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyCanaryRuntimeConfigKubernetesServiceNetworking({
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
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandard {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandard({
    this.verify,
    this.analysis,
    this.postdeploy,
    this.predeploy,
    this.verifyConfig,
  });

  final TfArg<bool>? verify;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysis?
  analysis;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeploy?
  postdeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeploy?
  predeploy;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfig?
  verifyConfig;

  Map<String, Object?> encode() => {
    'verify': ?verify?.toTfJson(),
    'analysis': ?analysis?.encode(),
    'postdeploy': ?postdeploy?.encode(),
    'predeploy': ?predeploy?.encode(),
    'verify_config': ?verifyConfig?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysis {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysis({
    required this.duration,
    this.customChecks,
    this.googleCloud,
  });

  final TfArg<String> duration;

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecks
  >?
  customChecks;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloud?
  googleCloud;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (customChecks != null)
      'custom_checks': [for (final e in customChecks!) e.encode()],
    'google_cloud': ?googleCloud?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.custom_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecks({
    this.frequency,
    required this.id,
    this.task,
  });

  final TfArg<String>? frequency;

  final TfArg<String> id;

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTask?
  task;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'id': id.toTfJson(),
    'task': ?task?.encode(),
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.custom_checks.task` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTask {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTask({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTaskContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.custom_checks.task.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTaskContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisCustomChecksTaskContainer({
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
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloud {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloud({
    this.alertPolicyChecks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloudAlertPolicyChecks
  >?
  alertPolicyChecks;

  Map<String, Object?> encode() => {
    if (alertPolicyChecks != null)
      'alert_policy_checks': [for (final e in alertPolicyChecks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.analysis.google_cloud.alert_policy_checks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloudAlertPolicyChecks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardAnalysisGoogleCloudAlertPolicyChecks({
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

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeploy({
    this.actions,
    this.tasks,
  });

  final TfArg<List<String>>? actions;

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasks
  >?
  tasks;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasks({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasksContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.postdeploy.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasksContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPostdeployTasksContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.standard.predeploy` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeploy {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeploy({
    this.actions,
    this.tasks,
  });

  final TfArg<List<String>>? actions;

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasks
  >?
  tasks;

  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.predeploy.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasks({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasksContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.predeploy.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasksContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardPredeployTasksContainer({
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

/// Typed helper for the `serial_pipeline.stages.strategy.standard.verify_config` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfig {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfig({
    this.tasks,
  });

  final List<
    ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasks
  >?
  tasks;

  Map<String, Object?> encode() => {
    if (tasks != null) 'tasks': [for (final e in tasks!) e.encode()],
  };
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.verify_config.tasks` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasks {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasks({
    this.container,
  });

  final ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasksContainer?
  container;

  Map<String, Object?> encode() => {'container': ?container?.encode()};
}

/// Typed helper for the `serial_pipeline.stages.strategy.standard.verify_config.tasks.container` block of
/// `google_clouddeploy_delivery_pipeline` (derived from provider schema).
@immutable
final class ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasksContainer {
  const ClouddeployDeliveryPipelineSerialPipelineStagesStrategyStandardVerifyConfigTasksContainer({
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
}
