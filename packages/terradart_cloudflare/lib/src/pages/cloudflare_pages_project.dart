// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pages_project`.
const Set<String> _cloudflarePagesProjectSensitive = <String>{
  'build_config.web_analytics_token',
  'canonical_deployment.build_config.web_analytics_token',
  'canonical_deployment.env_vars.value',
  'deployment_configs.preview.env_vars.value',
  'deployment_configs.production.env_vars.value',
  'latest_deployment.build_config.web_analytics_token',
  'latest_deployment.env_vars.value',
};

/// Typed helper for the `build_config` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectBuildConfig {
  const PagesProjectBuildConfig({
    this.buildCaching,
    this.buildCommand,
    this.destinationDir,
    this.rootDir,
    this.webAnalyticsTag,
    this.webAnalyticsToken,
  });

  final TfArg<bool>? buildCaching;

  final TfArg<String>? buildCommand;

  final TfArg<String>? destinationDir;

  final TfArg<String>? rootDir;

  final TfArg<String>? webAnalyticsTag;

  final TfArg<String>? webAnalyticsToken;

  Map<String, Object?> encode() => {
    if (buildCaching != null) 'build_caching': buildCaching!.toTfJson(),
    if (buildCommand != null) 'build_command': buildCommand!.toTfJson(),
    if (destinationDir != null) 'destination_dir': destinationDir!.toTfJson(),
    if (rootDir != null) 'root_dir': rootDir!.toTfJson(),
    if (webAnalyticsTag != null)
      'web_analytics_tag': webAnalyticsTag!.toTfJson(),
    if (webAnalyticsToken != null)
      'web_analytics_token': webAnalyticsToken!.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigs {
  const PagesProjectDeploymentConfigs({this.preview, this.production});

  final PagesProjectDeploymentConfigsPreview? preview;

  final PagesProjectDeploymentConfigsProduction? production;

  Map<String, Object?> encode() => {
    if (preview != null) 'preview': preview!.encode(),
    if (production != null) 'production': production!.encode(),
  };
}

/// Typed helper for the `deployment_configs.preview` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreview {
  const PagesProjectDeploymentConfigsPreview({
    this.alwaysUseLatestCompatibilityDate,
    this.buildImageMajorVersion,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.failOpen,
    this.usageModel,
    this.wranglerConfigHash,
    this.aiBindings,
    this.analyticsEngineDatasets,
    this.browsers,
    this.d1Databases,
    this.durableObjectNamespaces,
    this.envVars,
    this.hyperdriveBindings,
    this.kvNamespaces,
    this.limits,
    this.mtlsCertificates,
    this.placement,
    this.queueProducers,
    this.r2Buckets,
    this.services,
    this.vectorizeBindings,
  });

  final TfArg<bool>? alwaysUseLatestCompatibilityDate;

  final TfArg<num>? buildImageMajorVersion;

  final TfArg<String>? compatibilityDate;

  final TfArg<List<Object?>>? compatibilityFlags;

  final TfArg<bool>? failOpen;

  final TfArg<String>? usageModel;

  final TfArg<String>? wranglerConfigHash;

  final PagesProjectDeploymentConfigsPreviewAiBindings? aiBindings;

  final PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets?
  analyticsEngineDatasets;

  final PagesProjectDeploymentConfigsPreviewBrowsers? browsers;

  final PagesProjectDeploymentConfigsPreviewD1Databases? d1Databases;

  final PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces?
  durableObjectNamespaces;

  final PagesProjectDeploymentConfigsPreviewEnvVars? envVars;

  final PagesProjectDeploymentConfigsPreviewHyperdriveBindings?
  hyperdriveBindings;

  final PagesProjectDeploymentConfigsPreviewKvNamespaces? kvNamespaces;

  final PagesProjectDeploymentConfigsPreviewLimits? limits;

  final PagesProjectDeploymentConfigsPreviewMtlsCertificates? mtlsCertificates;

  final PagesProjectDeploymentConfigsPreviewPlacement? placement;

  final PagesProjectDeploymentConfigsPreviewQueueProducers? queueProducers;

  final PagesProjectDeploymentConfigsPreviewR2Buckets? r2Buckets;

  final PagesProjectDeploymentConfigsPreviewServices? services;

  final PagesProjectDeploymentConfigsPreviewVectorizeBindings?
  vectorizeBindings;

  Map<String, Object?> encode() => {
    if (alwaysUseLatestCompatibilityDate != null)
      'always_use_latest_compatibility_date': alwaysUseLatestCompatibilityDate!
          .toTfJson(),
    if (buildImageMajorVersion != null)
      'build_image_major_version': buildImageMajorVersion!.toTfJson(),
    if (compatibilityDate != null)
      'compatibility_date': compatibilityDate!.toTfJson(),
    if (compatibilityFlags != null)
      'compatibility_flags': compatibilityFlags!.toTfJson(),
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (usageModel != null) 'usage_model': usageModel!.toTfJson(),
    if (wranglerConfigHash != null)
      'wrangler_config_hash': wranglerConfigHash!.toTfJson(),
    if (aiBindings != null) 'ai_bindings': aiBindings!.encode(),
    if (analyticsEngineDatasets != null)
      'analytics_engine_datasets': analyticsEngineDatasets!.encode(),
    if (browsers != null) 'browsers': browsers!.encode(),
    if (d1Databases != null) 'd1_databases': d1Databases!.encode(),
    if (durableObjectNamespaces != null)
      'durable_object_namespaces': durableObjectNamespaces!.encode(),
    if (envVars != null) 'env_vars': envVars!.encode(),
    if (hyperdriveBindings != null)
      'hyperdrive_bindings': hyperdriveBindings!.encode(),
    if (kvNamespaces != null) 'kv_namespaces': kvNamespaces!.encode(),
    if (limits != null) 'limits': limits!.encode(),
    if (mtlsCertificates != null)
      'mtls_certificates': mtlsCertificates!.encode(),
    if (placement != null) 'placement': placement!.encode(),
    if (queueProducers != null) 'queue_producers': queueProducers!.encode(),
    if (r2Buckets != null) 'r2_buckets': r2Buckets!.encode(),
    if (services != null) 'services': services!.encode(),
    if (vectorizeBindings != null)
      'vectorize_bindings': vectorizeBindings!.encode(),
  };
}

/// Typed helper for the `deployment_configs.preview.ai_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewAiBindings {
  const PagesProjectDeploymentConfigsPreviewAiBindings({
    required this.projectId,
  });

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {'project_id': projectId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.analytics_engine_datasets` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets {
  const PagesProjectDeploymentConfigsPreviewAnalyticsEngineDatasets({
    required this.dataset,
  });

  final TfArg<String> dataset;

  Map<String, Object?> encode() => {'dataset': dataset.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.browsers` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewBrowsers {
  const PagesProjectDeploymentConfigsPreviewBrowsers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deployment_configs.preview.d1_databases` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewD1Databases {
  const PagesProjectDeploymentConfigsPreviewD1Databases({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.durable_object_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces {
  const PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces({
    required this.namespaceId,
  });

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.env_vars` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewEnvVars {
  const PagesProjectDeploymentConfigsPreviewEnvVars({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.preview.hyperdrive_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewHyperdriveBindings {
  const PagesProjectDeploymentConfigsPreviewHyperdriveBindings({
    required this.id,
  });

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.kv_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewKvNamespaces {
  const PagesProjectDeploymentConfigsPreviewKvNamespaces({
    required this.namespaceId,
  });

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.limits` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewLimits {
  const PagesProjectDeploymentConfigsPreviewLimits({required this.cpuMs});

  final TfArg<num> cpuMs;

  Map<String, Object?> encode() => {'cpu_ms': cpuMs.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.mtls_certificates` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewMtlsCertificates {
  const PagesProjectDeploymentConfigsPreviewMtlsCertificates({
    required this.certificateId,
  });

  final TfArg<String> certificateId;

  Map<String, Object?> encode() => {'certificate_id': certificateId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.placement` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewPlacement {
  const PagesProjectDeploymentConfigsPreviewPlacement({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {if (mode != null) 'mode': mode!.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.queue_producers` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewQueueProducers {
  const PagesProjectDeploymentConfigsPreviewQueueProducers({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.r2_buckets` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewR2Buckets {
  const PagesProjectDeploymentConfigsPreviewR2Buckets({
    this.jurisdiction,
    required this.name,
  });

  final TfArg<String>? jurisdiction;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (jurisdiction != null) 'jurisdiction': jurisdiction!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.preview.services` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewServices {
  const PagesProjectDeploymentConfigsPreviewServices({
    this.entrypoint,
    this.environment,
    required this.service,
  });

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    if (entrypoint != null) 'entrypoint': entrypoint!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.preview.vectorize_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsPreviewVectorizeBindings {
  const PagesProjectDeploymentConfigsPreviewVectorizeBindings({
    required this.indexName,
  });

  final TfArg<String> indexName;

  Map<String, Object?> encode() => {'index_name': indexName.toTfJson()};
}

/// Typed helper for the `deployment_configs.production` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProduction {
  const PagesProjectDeploymentConfigsProduction({
    this.alwaysUseLatestCompatibilityDate,
    this.buildImageMajorVersion,
    this.compatibilityDate,
    this.compatibilityFlags,
    this.failOpen,
    this.usageModel,
    this.wranglerConfigHash,
    this.aiBindings,
    this.analyticsEngineDatasets,
    this.browsers,
    this.d1Databases,
    this.durableObjectNamespaces,
    this.envVars,
    this.hyperdriveBindings,
    this.kvNamespaces,
    this.limits,
    this.mtlsCertificates,
    this.placement,
    this.queueProducers,
    this.r2Buckets,
    this.services,
    this.vectorizeBindings,
  });

  final TfArg<bool>? alwaysUseLatestCompatibilityDate;

  final TfArg<num>? buildImageMajorVersion;

  final TfArg<String>? compatibilityDate;

  final TfArg<List<Object?>>? compatibilityFlags;

  final TfArg<bool>? failOpen;

  final TfArg<String>? usageModel;

  final TfArg<String>? wranglerConfigHash;

  final PagesProjectDeploymentConfigsProductionAiBindings? aiBindings;

  final PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets?
  analyticsEngineDatasets;

  final PagesProjectDeploymentConfigsProductionBrowsers? browsers;

  final PagesProjectDeploymentConfigsProductionD1Databases? d1Databases;

  final PagesProjectDeploymentConfigsProductionDurableObjectNamespaces?
  durableObjectNamespaces;

  final PagesProjectDeploymentConfigsProductionEnvVars? envVars;

  final PagesProjectDeploymentConfigsProductionHyperdriveBindings?
  hyperdriveBindings;

  final PagesProjectDeploymentConfigsProductionKvNamespaces? kvNamespaces;

  final PagesProjectDeploymentConfigsProductionLimits? limits;

  final PagesProjectDeploymentConfigsProductionMtlsCertificates?
  mtlsCertificates;

  final PagesProjectDeploymentConfigsProductionPlacement? placement;

  final PagesProjectDeploymentConfigsProductionQueueProducers? queueProducers;

  final PagesProjectDeploymentConfigsProductionR2Buckets? r2Buckets;

  final PagesProjectDeploymentConfigsProductionServices? services;

  final PagesProjectDeploymentConfigsProductionVectorizeBindings?
  vectorizeBindings;

  Map<String, Object?> encode() => {
    if (alwaysUseLatestCompatibilityDate != null)
      'always_use_latest_compatibility_date': alwaysUseLatestCompatibilityDate!
          .toTfJson(),
    if (buildImageMajorVersion != null)
      'build_image_major_version': buildImageMajorVersion!.toTfJson(),
    if (compatibilityDate != null)
      'compatibility_date': compatibilityDate!.toTfJson(),
    if (compatibilityFlags != null)
      'compatibility_flags': compatibilityFlags!.toTfJson(),
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (usageModel != null) 'usage_model': usageModel!.toTfJson(),
    if (wranglerConfigHash != null)
      'wrangler_config_hash': wranglerConfigHash!.toTfJson(),
    if (aiBindings != null) 'ai_bindings': aiBindings!.encode(),
    if (analyticsEngineDatasets != null)
      'analytics_engine_datasets': analyticsEngineDatasets!.encode(),
    if (browsers != null) 'browsers': browsers!.encode(),
    if (d1Databases != null) 'd1_databases': d1Databases!.encode(),
    if (durableObjectNamespaces != null)
      'durable_object_namespaces': durableObjectNamespaces!.encode(),
    if (envVars != null) 'env_vars': envVars!.encode(),
    if (hyperdriveBindings != null)
      'hyperdrive_bindings': hyperdriveBindings!.encode(),
    if (kvNamespaces != null) 'kv_namespaces': kvNamespaces!.encode(),
    if (limits != null) 'limits': limits!.encode(),
    if (mtlsCertificates != null)
      'mtls_certificates': mtlsCertificates!.encode(),
    if (placement != null) 'placement': placement!.encode(),
    if (queueProducers != null) 'queue_producers': queueProducers!.encode(),
    if (r2Buckets != null) 'r2_buckets': r2Buckets!.encode(),
    if (services != null) 'services': services!.encode(),
    if (vectorizeBindings != null)
      'vectorize_bindings': vectorizeBindings!.encode(),
  };
}

/// Typed helper for the `deployment_configs.production.ai_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionAiBindings {
  const PagesProjectDeploymentConfigsProductionAiBindings({
    required this.projectId,
  });

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {'project_id': projectId.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.analytics_engine_datasets` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets {
  const PagesProjectDeploymentConfigsProductionAnalyticsEngineDatasets({
    required this.dataset,
  });

  final TfArg<String> dataset;

  Map<String, Object?> encode() => {'dataset': dataset.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.browsers` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionBrowsers {
  const PagesProjectDeploymentConfigsProductionBrowsers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deployment_configs.production.d1_databases` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionD1Databases {
  const PagesProjectDeploymentConfigsProductionD1Databases({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.durable_object_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionDurableObjectNamespaces {
  const PagesProjectDeploymentConfigsProductionDurableObjectNamespaces({
    required this.namespaceId,
  });

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.env_vars` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionEnvVars {
  const PagesProjectDeploymentConfigsProductionEnvVars({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.production.hyperdrive_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionHyperdriveBindings {
  const PagesProjectDeploymentConfigsProductionHyperdriveBindings({
    required this.id,
  });

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.kv_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionKvNamespaces {
  const PagesProjectDeploymentConfigsProductionKvNamespaces({
    required this.namespaceId,
  });

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.limits` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionLimits {
  const PagesProjectDeploymentConfigsProductionLimits({required this.cpuMs});

  final TfArg<num> cpuMs;

  Map<String, Object?> encode() => {'cpu_ms': cpuMs.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.mtls_certificates` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionMtlsCertificates {
  const PagesProjectDeploymentConfigsProductionMtlsCertificates({
    required this.certificateId,
  });

  final TfArg<String> certificateId;

  Map<String, Object?> encode() => {'certificate_id': certificateId.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.placement` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionPlacement {
  const PagesProjectDeploymentConfigsProductionPlacement({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {if (mode != null) 'mode': mode!.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.queue_producers` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionQueueProducers {
  const PagesProjectDeploymentConfigsProductionQueueProducers({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deployment_configs.production.r2_buckets` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionR2Buckets {
  const PagesProjectDeploymentConfigsProductionR2Buckets({
    this.jurisdiction,
    required this.name,
  });

  final TfArg<String>? jurisdiction;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (jurisdiction != null) 'jurisdiction': jurisdiction!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.production.services` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionServices {
  const PagesProjectDeploymentConfigsProductionServices({
    this.entrypoint,
    this.environment,
    required this.service,
  });

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    if (entrypoint != null) 'entrypoint': entrypoint!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.production.vectorize_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigsProductionVectorizeBindings {
  const PagesProjectDeploymentConfigsProductionVectorizeBindings({
    required this.indexName,
  });

  final TfArg<String> indexName;

  Map<String, Object?> encode() => {'index_name': indexName.toTfJson()};
}

/// Typed helper for the `source` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectSource {
  const PagesProjectSource({required this.type, required this.config});

  final TfArg<String> type;

  final PagesProjectSourceConfig config;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'config': config.encode(),
  };
}

/// Typed helper for the `source.config` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectSourceConfig {
  const PagesProjectSourceConfig({
    this.deploymentsEnabled,
    this.owner,
    this.ownerId,
    this.pathExcludes,
    this.pathIncludes,
    this.prCommentsEnabled,
    this.previewBranchExcludes,
    this.previewBranchIncludes,
    this.previewDeploymentSetting,
    this.productionBranch,
    this.productionDeploymentsEnabled,
    this.repoId,
    this.repoName,
  });

  final TfArg<bool>? deploymentsEnabled;

  final TfArg<String>? owner;

  final TfArg<String>? ownerId;

  final TfArg<List<Object?>>? pathExcludes;

  final TfArg<List<Object?>>? pathIncludes;

  final TfArg<bool>? prCommentsEnabled;

  final TfArg<List<Object?>>? previewBranchExcludes;

  final TfArg<List<Object?>>? previewBranchIncludes;

  final TfArg<String>? previewDeploymentSetting;

  final TfArg<String>? productionBranch;

  final TfArg<bool>? productionDeploymentsEnabled;

  final TfArg<String>? repoId;

  final TfArg<String>? repoName;

  Map<String, Object?> encode() => {
    if (deploymentsEnabled != null)
      'deployments_enabled': deploymentsEnabled!.toTfJson(),
    if (owner != null) 'owner': owner!.toTfJson(),
    if (ownerId != null) 'owner_id': ownerId!.toTfJson(),
    if (pathExcludes != null) 'path_excludes': pathExcludes!.toTfJson(),
    if (pathIncludes != null) 'path_includes': pathIncludes!.toTfJson(),
    if (prCommentsEnabled != null)
      'pr_comments_enabled': prCommentsEnabled!.toTfJson(),
    if (previewBranchExcludes != null)
      'preview_branch_excludes': previewBranchExcludes!.toTfJson(),
    if (previewBranchIncludes != null)
      'preview_branch_includes': previewBranchIncludes!.toTfJson(),
    if (previewDeploymentSetting != null)
      'preview_deployment_setting': previewDeploymentSetting!.toTfJson(),
    if (productionBranch != null)
      'production_branch': productionBranch!.toTfJson(),
    if (productionDeploymentsEnabled != null)
      'production_deployments_enabled': productionDeploymentsEnabled!
          .toTfJson(),
    if (repoId != null) 'repo_id': repoId!.toTfJson(),
    if (repoName != null) 'repo_name': repoName!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_pages_project`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class CloudflarePagesProject extends Resource {
  static const String tfType = 'cloudflare_pages_project';

  CloudflarePagesProject({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<String> productionBranch,
    PagesProjectBuildConfig? buildConfig,
    PagesProjectDeploymentConfigs? deploymentConfigs,
    PagesProjectSource? source,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'production_branch': productionBranch,
           if (buildConfig != null)
             'build_config': TfArg.literal(buildConfig.encode()),
           if (deploymentConfigs != null)
             'deployment_configs': TfArg.literal(deploymentConfigs.encode()),
           if (source != null) 'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `domains` attribute.
  TfRef<List<String>> get domains =>
      TfRef.attribute<List<String>>(this, 'domains');

  /// Reference to `framework` attribute.
  TfRef<String> get framework => TfRef.attribute<String>(this, 'framework');

  /// Reference to `framework_version` attribute.
  TfRef<String> get frameworkVersion =>
      TfRef.attribute<String>(this, 'framework_version');

  /// Reference to `preview_script_name` attribute.
  TfRef<String> get previewScriptName =>
      TfRef.attribute<String>(this, 'preview_script_name');

  /// Reference to `production_script_name` attribute.
  TfRef<String> get productionScriptName =>
      TfRef.attribute<String>(this, 'production_script_name');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `uses_functions` attribute.
  TfRef<bool> get usesFunctions =>
      TfRef.attribute<bool>(this, 'uses_functions');
}
