// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pages_project`.
const Set<String> _cloudflarePagesProjectSensitive = <String>{
  'build_config.web_analytics_token',
  'canonical_deployment.build_config.web_analytics_token',
  'canonical_deployment.env_vars.*.value',
  'deployment_configs.preview.env_vars.*.value',
  'deployment_configs.production.env_vars.*.value',
  'latest_deployment.build_config.web_analytics_token',
  'latest_deployment.env_vars.*.value',
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
    'build_caching': ?buildCaching?.toTfJson(),
    'build_command': ?buildCommand?.toTfJson(),
    'destination_dir': ?destinationDir?.toTfJson(),
    'root_dir': ?rootDir?.toTfJson(),
    'web_analytics_tag': ?webAnalyticsTag?.toTfJson(),
    'web_analytics_token': ?webAnalyticsToken?.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectDeploymentConfigs {
  const PagesProjectDeploymentConfigs({this.preview, this.production});

  final PagesProjectPreview? preview;

  final PagesProjectProduction? production;

  Map<String, Object?> encode() => {
    'preview': ?preview?.encode(),
    'production': ?production?.encode(),
  };
}

/// Typed helper for the `deployment_configs.preview` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectPreview {
  const PagesProjectPreview({
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

  final TfArg<List<String>>? compatibilityFlags;

  final TfArg<bool>? failOpen;

  final PagesProjectUsageModel? usageModel;

  final TfArg<String>? wranglerConfigHash;

  final Map<String, PagesProjectAiBindings>? aiBindings;

  final Map<String, PagesProjectAnalyticsEngineDatasets>?
  analyticsEngineDatasets;

  final Map<String, PagesProjectBrowsers>? browsers;

  final Map<String, PagesProjectD1Databases>? d1Databases;

  final Map<String, PagesProjectDurableObjectNamespaces>?
  durableObjectNamespaces;

  final Map<String, PagesProjectEnvVars>? envVars;

  final Map<String, PagesProjectHyperdriveBindings>? hyperdriveBindings;

  final Map<String, PagesProjectKvNamespaces>? kvNamespaces;

  final PagesProjectLimits? limits;

  final Map<String, PagesProjectMtlsCertificates>? mtlsCertificates;

  final PagesProjectPlacement? placement;

  final Map<String, PagesProjectQueueProducers>? queueProducers;

  final Map<String, PagesProjectR2Buckets>? r2Buckets;

  final Map<String, PagesProjectServices>? services;

  final Map<String, PagesProjectVectorizeBindings>? vectorizeBindings;

  Map<String, Object?> encode() => {
    'always_use_latest_compatibility_date': ?alwaysUseLatestCompatibilityDate
        ?.toTfJson(),
    'build_image_major_version': ?buildImageMajorVersion?.toTfJson(),
    'compatibility_date': ?compatibilityDate?.toTfJson(),
    'compatibility_flags': ?compatibilityFlags?.toTfJson(),
    'fail_open': ?failOpen?.toTfJson(),
    'usage_model': ?usageModel?.toTfJson(),
    'wrangler_config_hash': ?wranglerConfigHash?.toTfJson(),
    if (aiBindings != null)
      'ai_bindings': {
        for (final e in aiBindings!.entries) e.key: e.value.encode(),
      },
    if (analyticsEngineDatasets != null)
      'analytics_engine_datasets': {
        for (final e in analyticsEngineDatasets!.entries)
          e.key: e.value.encode(),
      },
    if (browsers != null)
      'browsers': {for (final e in browsers!.entries) e.key: e.value.encode()},
    if (d1Databases != null)
      'd1_databases': {
        for (final e in d1Databases!.entries) e.key: e.value.encode(),
      },
    if (durableObjectNamespaces != null)
      'durable_object_namespaces': {
        for (final e in durableObjectNamespaces!.entries)
          e.key: e.value.encode(),
      },
    if (envVars != null)
      'env_vars': {for (final e in envVars!.entries) e.key: e.value.encode()},
    if (hyperdriveBindings != null)
      'hyperdrive_bindings': {
        for (final e in hyperdriveBindings!.entries) e.key: e.value.encode(),
      },
    if (kvNamespaces != null)
      'kv_namespaces': {
        for (final e in kvNamespaces!.entries) e.key: e.value.encode(),
      },
    'limits': ?limits?.encode(),
    if (mtlsCertificates != null)
      'mtls_certificates': {
        for (final e in mtlsCertificates!.entries) e.key: e.value.encode(),
      },
    'placement': ?placement?.encode(),
    if (queueProducers != null)
      'queue_producers': {
        for (final e in queueProducers!.entries) e.key: e.value.encode(),
      },
    if (r2Buckets != null)
      'r2_buckets': {
        for (final e in r2Buckets!.entries) e.key: e.value.encode(),
      },
    if (services != null)
      'services': {for (final e in services!.entries) e.key: e.value.encode()},
    if (vectorizeBindings != null)
      'vectorize_bindings': {
        for (final e in vectorizeBindings!.entries) e.key: e.value.encode(),
      },
  };
}

/// `usage_model` — derived from the provider schema description.
extension type const PagesProjectUsageModel._(TfArg<String> _)
    implements TfArg<String> {
  PagesProjectUsageModel.variable(String name) : this._(TfArg.variable(name));
  PagesProjectUsageModel.expression(String template)
    : this._(TfArg.expression(template));
  const PagesProjectUsageModel.arg(TfArg<String> arg) : this._(arg);

  static const standard = PagesProjectUsageModel._(TfArgLiteral('standard'));
  static const bundled = PagesProjectUsageModel._(TfArgLiteral('bundled'));
  static const unbound = PagesProjectUsageModel._(TfArgLiteral('unbound'));

  static const List<PagesProjectUsageModel> values = [
    standard,
    bundled,
    unbound,
  ];
}

/// Typed helper for the `deployment_configs.preview.ai_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectAiBindings {
  const PagesProjectAiBindings({required this.projectId});

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {'project_id': projectId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.analytics_engine_datasets` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectAnalyticsEngineDatasets {
  const PagesProjectAnalyticsEngineDatasets({required this.dataset});

  final TfArg<String> dataset;

  Map<String, Object?> encode() => {'dataset': dataset.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.browsers` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectBrowsers {
  const PagesProjectBrowsers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `deployment_configs.preview.d1_databases` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectD1Databases {
  const PagesProjectD1Databases({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.durable_object_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectDurableObjectNamespaces {
  const PagesProjectDurableObjectNamespaces({required this.namespaceId});

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.env_vars` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectEnvVars {
  const PagesProjectEnvVars({required this.type, required this.value});

  final PagesProjectEnvVarsType type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const PagesProjectEnvVarsType._(TfArg<String> _)
    implements TfArg<String> {
  PagesProjectEnvVarsType.variable(String name) : this._(TfArg.variable(name));
  PagesProjectEnvVarsType.expression(String template)
    : this._(TfArg.expression(template));
  const PagesProjectEnvVarsType.arg(TfArg<String> arg) : this._(arg);

  static const plainText = PagesProjectEnvVarsType._(
    TfArgLiteral('plain_text'),
  );
  static const secretText = PagesProjectEnvVarsType._(
    TfArgLiteral('secret_text'),
  );

  static const List<PagesProjectEnvVarsType> values = [plainText, secretText];
}

/// Typed helper for the `deployment_configs.preview.hyperdrive_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectHyperdriveBindings {
  const PagesProjectHyperdriveBindings({required this.id});

  final TfArg<String> id;

  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.kv_namespaces` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectKvNamespaces {
  const PagesProjectKvNamespaces({required this.namespaceId});

  final TfArg<String> namespaceId;

  Map<String, Object?> encode() => {'namespace_id': namespaceId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.limits` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectLimits {
  const PagesProjectLimits({required this.cpuMs});

  final TfArg<num> cpuMs;

  Map<String, Object?> encode() => {'cpu_ms': cpuMs.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.mtls_certificates` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectMtlsCertificates {
  const PagesProjectMtlsCertificates({required this.certificateId});

  final TfArg<String> certificateId;

  Map<String, Object?> encode() => {'certificate_id': certificateId.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.placement` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectPlacement {
  const PagesProjectPlacement({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.queue_producers` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectQueueProducers {
  const PagesProjectQueueProducers({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `deployment_configs.preview.r2_buckets` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectR2Buckets {
  const PagesProjectR2Buckets({this.jurisdiction, required this.name});

  final TfArg<String>? jurisdiction;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'jurisdiction': ?jurisdiction?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.preview.services` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectServices {
  const PagesProjectServices({
    this.entrypoint,
    this.environment,
    required this.service,
  });

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    'entrypoint': ?entrypoint?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Typed helper for the `deployment_configs.preview.vectorize_bindings` block of
/// `cloudflare_pages_project` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class PagesProjectVectorizeBindings {
  const PagesProjectVectorizeBindings({required this.indexName});

  final TfArg<String> indexName;

  Map<String, Object?> encode() => {'index_name': indexName.toTfJson()};
}

/// Typed helper for the `deployment_configs.production` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectProduction {
  const PagesProjectProduction({
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

  final TfArg<List<String>>? compatibilityFlags;

  final TfArg<bool>? failOpen;

  final PagesProjectUsageModel? usageModel;

  final TfArg<String>? wranglerConfigHash;

  final Map<String, PagesProjectAiBindings>? aiBindings;

  final Map<String, PagesProjectAnalyticsEngineDatasets>?
  analyticsEngineDatasets;

  final Map<String, PagesProjectBrowsers>? browsers;

  final Map<String, PagesProjectD1Databases>? d1Databases;

  final Map<String, PagesProjectDurableObjectNamespaces>?
  durableObjectNamespaces;

  final Map<String, PagesProjectEnvVars>? envVars;

  final Map<String, PagesProjectHyperdriveBindings>? hyperdriveBindings;

  final Map<String, PagesProjectKvNamespaces>? kvNamespaces;

  final PagesProjectLimits? limits;

  final Map<String, PagesProjectMtlsCertificates>? mtlsCertificates;

  final PagesProjectPlacement? placement;

  final Map<String, PagesProjectQueueProducers>? queueProducers;

  final Map<String, PagesProjectR2Buckets>? r2Buckets;

  final Map<String, PagesProjectServices>? services;

  final Map<String, PagesProjectVectorizeBindings>? vectorizeBindings;

  Map<String, Object?> encode() => {
    'always_use_latest_compatibility_date': ?alwaysUseLatestCompatibilityDate
        ?.toTfJson(),
    'build_image_major_version': ?buildImageMajorVersion?.toTfJson(),
    'compatibility_date': ?compatibilityDate?.toTfJson(),
    'compatibility_flags': ?compatibilityFlags?.toTfJson(),
    'fail_open': ?failOpen?.toTfJson(),
    'usage_model': ?usageModel?.toTfJson(),
    'wrangler_config_hash': ?wranglerConfigHash?.toTfJson(),
    if (aiBindings != null)
      'ai_bindings': {
        for (final e in aiBindings!.entries) e.key: e.value.encode(),
      },
    if (analyticsEngineDatasets != null)
      'analytics_engine_datasets': {
        for (final e in analyticsEngineDatasets!.entries)
          e.key: e.value.encode(),
      },
    if (browsers != null)
      'browsers': {for (final e in browsers!.entries) e.key: e.value.encode()},
    if (d1Databases != null)
      'd1_databases': {
        for (final e in d1Databases!.entries) e.key: e.value.encode(),
      },
    if (durableObjectNamespaces != null)
      'durable_object_namespaces': {
        for (final e in durableObjectNamespaces!.entries)
          e.key: e.value.encode(),
      },
    if (envVars != null)
      'env_vars': {for (final e in envVars!.entries) e.key: e.value.encode()},
    if (hyperdriveBindings != null)
      'hyperdrive_bindings': {
        for (final e in hyperdriveBindings!.entries) e.key: e.value.encode(),
      },
    if (kvNamespaces != null)
      'kv_namespaces': {
        for (final e in kvNamespaces!.entries) e.key: e.value.encode(),
      },
    'limits': ?limits?.encode(),
    if (mtlsCertificates != null)
      'mtls_certificates': {
        for (final e in mtlsCertificates!.entries) e.key: e.value.encode(),
      },
    'placement': ?placement?.encode(),
    if (queueProducers != null)
      'queue_producers': {
        for (final e in queueProducers!.entries) e.key: e.value.encode(),
      },
    if (r2Buckets != null)
      'r2_buckets': {
        for (final e in r2Buckets!.entries) e.key: e.value.encode(),
      },
    if (services != null)
      'services': {for (final e in services!.entries) e.key: e.value.encode()},
    if (vectorizeBindings != null)
      'vectorize_bindings': {
        for (final e in vectorizeBindings!.entries) e.key: e.value.encode(),
      },
  };
}

/// Typed helper for the `source` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectSource {
  const PagesProjectSource({required this.type, required this.config});

  final PagesProjectType type;

  final PagesProjectConfig config;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'config': config.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const PagesProjectType._(TfArg<String> _)
    implements TfArg<String> {
  PagesProjectType.variable(String name) : this._(TfArg.variable(name));
  PagesProjectType.expression(String template)
    : this._(TfArg.expression(template));
  const PagesProjectType.arg(TfArg<String> arg) : this._(arg);

  static const github = PagesProjectType._(TfArgLiteral('github'));
  static const gitlab = PagesProjectType._(TfArgLiteral('gitlab'));

  static const List<PagesProjectType> values = [github, gitlab];
}

/// Typed helper for the `source.config` block of
/// `cloudflare_pages_project` (derived from provider schema).
@immutable
final class PagesProjectConfig {
  const PagesProjectConfig({
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

  final TfArg<List<String>>? pathExcludes;

  final TfArg<List<String>>? pathIncludes;

  final TfArg<bool>? prCommentsEnabled;

  final TfArg<List<String>>? previewBranchExcludes;

  final TfArg<List<String>>? previewBranchIncludes;

  final PagesProjectPreviewDeploymentSetting? previewDeploymentSetting;

  final TfArg<String>? productionBranch;

  final TfArg<bool>? productionDeploymentsEnabled;

  final TfArg<String>? repoId;

  final TfArg<String>? repoName;

  Map<String, Object?> encode() => {
    'deployments_enabled': ?deploymentsEnabled?.toTfJson(),
    'owner': ?owner?.toTfJson(),
    'owner_id': ?ownerId?.toTfJson(),
    'path_excludes': ?pathExcludes?.toTfJson(),
    'path_includes': ?pathIncludes?.toTfJson(),
    'pr_comments_enabled': ?prCommentsEnabled?.toTfJson(),
    'preview_branch_excludes': ?previewBranchExcludes?.toTfJson(),
    'preview_branch_includes': ?previewBranchIncludes?.toTfJson(),
    'preview_deployment_setting': ?previewDeploymentSetting?.toTfJson(),
    'production_branch': ?productionBranch?.toTfJson(),
    'production_deployments_enabled': ?productionDeploymentsEnabled?.toTfJson(),
    'repo_id': ?repoId?.toTfJson(),
    'repo_name': ?repoName?.toTfJson(),
  };
}

/// `preview_deployment_setting` — derived from the provider schema description.
extension type const PagesProjectPreviewDeploymentSetting._(TfArg<String> _)
    implements TfArg<String> {
  PagesProjectPreviewDeploymentSetting.variable(String name)
    : this._(TfArg.variable(name));
  PagesProjectPreviewDeploymentSetting.expression(String template)
    : this._(TfArg.expression(template));
  const PagesProjectPreviewDeploymentSetting.arg(TfArg<String> arg)
    : this._(arg);

  static const all = PagesProjectPreviewDeploymentSetting._(
    TfArgLiteral('all'),
  );
  static const none = PagesProjectPreviewDeploymentSetting._(
    TfArgLiteral('none'),
  );
  static const custom = PagesProjectPreviewDeploymentSetting._(
    TfArgLiteral('custom'),
  );

  static const List<PagesProjectPreviewDeploymentSetting> values = [
    all,
    none,
    custom,
  ];
}

/// Factory wrapper for `cloudflare_pages_project`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class CloudflarePagesProject extends Resource {
  static const String tfType = 'cloudflare_pages_project';

  CloudflarePagesProject(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required TfArg<String> productionBranch,
    PagesProjectBuildConfig? buildConfig,
    PagesProjectDeploymentConfigs? deploymentConfigs,
    PagesProjectSource? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePagesProject>`.
  RefTo<CloudflarePagesProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `production_branch` attribute.
  TfRef<String> get productionBranch =>
      TfRef.attribute<String>(this, 'production_branch');
}
