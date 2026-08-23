// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_script`.
const Set<String> _cloudflareWorkersScriptSensitive = <String>{
  'assets.jwt',
  'bindings.key_base64',
  'bindings.key_jwk',
  'bindings.text',
};

/// Typed helper for the `annotations` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAnnotations {
  const WorkersScriptAnnotations({this.workersMessage, this.workersTag});

  final TfArg<String>? workersMessage;

  final TfArg<String>? workersTag;

  Map<String, Object?> encode() => {
    if (workersMessage != null) 'workers_message': workersMessage!.toTfJson(),
    if (workersTag != null) 'workers_tag': workersTag!.toTfJson(),
  };
}

/// Typed helper for the `assets` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAssets {
  const WorkersScriptAssets({this.directory, this.jwt, this.config});

  final TfArg<String>? directory;

  final TfArg<String>? jwt;

  final WorkersScriptAssetsConfig? config;

  Map<String, Object?> encode() => {
    if (directory != null) 'directory': directory!.toTfJson(),
    if (jwt != null) 'jwt': jwt!.toTfJson(),
    if (config != null) 'config': config!.encode(),
  };
}

/// Typed helper for the `assets.config` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAssetsConfig {
  const WorkersScriptAssetsConfig({
    this.headers,
    this.htmlHandling,
    this.notFoundHandling,
    this.redirects,
    this.runWorkerFirst,
    this.serveDirectly,
  });

  final TfArg<String>? headers;

  final TfArg<String>? htmlHandling;

  final TfArg<String>? notFoundHandling;

  final TfArg<String>? redirects;

  final TfArg<Object?>? runWorkerFirst;

  final TfArg<bool>? serveDirectly;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': headers!.toTfJson(),
    if (htmlHandling != null) 'html_handling': htmlHandling!.toTfJson(),
    if (notFoundHandling != null)
      'not_found_handling': notFoundHandling!.toTfJson(),
    if (redirects != null) 'redirects': redirects!.toTfJson(),
    if (runWorkerFirst != null) 'run_worker_first': runWorkerFirst!.toTfJson(),
    if (serveDirectly != null) 'serve_directly': serveDirectly!.toTfJson(),
  };
}

/// Typed helper for the `bindings` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptBindings {
  const WorkersScriptBindings({
    this.algorithm,
    this.allowedDestinationAddresses,
    this.allowedSenderAddresses,
    this.appId,
    this.bucketName,
    this.certificateId,
    this.className,
    this.databaseId,
    this.dataset,
    this.destinationAddress,
    this.dispatchNamespace,
    this.entrypoint,
    this.environment,
    this.format,
    this.id,
    this.indexName,
    this.instanceName,
    this.json,
    this.jurisdiction,
    this.keyBase64,
    this.keyJwk,
    required this.name,
    this.namespace,
    this.namespaceId,
    this.networkId,
    this.oldName,
    this.part,
    this.pipeline,
    this.queueName,
    this.scriptName,
    this.secretName,
    this.service,
    this.serviceId,
    this.storeId,
    this.text,
    this.tunnelId,
    required this.type,
    this.usages,
    this.versionId,
    this.workflowName,
    this.outbound,
    this.simple,
  });

  final TfArg<String>? algorithm;

  final TfArg<List<Object?>>? allowedDestinationAddresses;

  final TfArg<List<Object?>>? allowedSenderAddresses;

  final TfArg<String>? appId;

  final TfArg<String>? bucketName;

  final TfArg<String>? certificateId;

  final TfArg<String>? className;

  final TfArg<String>? databaseId;

  final TfArg<String>? dataset;

  final TfArg<String>? destinationAddress;

  final TfArg<String>? dispatchNamespace;

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String>? format;

  final TfArg<String>? id;

  final TfArg<String>? indexName;

  final TfArg<String>? instanceName;

  final TfArg<String>? json;

  final TfArg<String>? jurisdiction;

  final TfArg<String>? keyBase64;

  final TfArg<String>? keyJwk;

  final TfArg<String> name;

  final TfArg<String>? namespace;

  final TfArg<String>? namespaceId;

  final TfArg<String>? networkId;

  final TfArg<String>? oldName;

  final TfArg<String>? part;

  final TfArg<String>? pipeline;

  final TfArg<String>? queueName;

  final TfArg<String>? scriptName;

  final TfArg<String>? secretName;

  final TfArg<String>? service;

  final TfArg<String>? serviceId;

  final TfArg<String>? storeId;

  final TfArg<String>? text;

  final TfArg<String>? tunnelId;

  final TfArg<String> type;

  final TfArg<List<Object?>>? usages;

  final TfArg<String>? versionId;

  final TfArg<String>? workflowName;

  final WorkersScriptBindingsOutbound? outbound;

  final WorkersScriptBindingsSimple? simple;

  Map<String, Object?> encode() => {
    if (algorithm != null) 'algorithm': algorithm!.toTfJson(),
    if (allowedDestinationAddresses != null)
      'allowed_destination_addresses': allowedDestinationAddresses!.toTfJson(),
    if (allowedSenderAddresses != null)
      'allowed_sender_addresses': allowedSenderAddresses!.toTfJson(),
    if (appId != null) 'app_id': appId!.toTfJson(),
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (certificateId != null) 'certificate_id': certificateId!.toTfJson(),
    if (className != null) 'class_name': className!.toTfJson(),
    if (databaseId != null) 'database_id': databaseId!.toTfJson(),
    if (dataset != null) 'dataset': dataset!.toTfJson(),
    if (destinationAddress != null)
      'destination_address': destinationAddress!.toTfJson(),
    if (dispatchNamespace != null)
      'dispatch_namespace': dispatchNamespace!.toTfJson(),
    if (entrypoint != null) 'entrypoint': entrypoint!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (format != null) 'format': format!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (indexName != null) 'index_name': indexName!.toTfJson(),
    if (instanceName != null) 'instance_name': instanceName!.toTfJson(),
    if (json != null) 'json': json!.toTfJson(),
    if (jurisdiction != null) 'jurisdiction': jurisdiction!.toTfJson(),
    if (keyBase64 != null) 'key_base64': keyBase64!.toTfJson(),
    if (keyJwk != null) 'key_jwk': keyJwk!.toTfJson(),
    'name': name.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (namespaceId != null) 'namespace_id': namespaceId!.toTfJson(),
    if (networkId != null) 'network_id': networkId!.toTfJson(),
    if (oldName != null) 'old_name': oldName!.toTfJson(),
    if (part != null) 'part': part!.toTfJson(),
    if (pipeline != null) 'pipeline': pipeline!.toTfJson(),
    if (queueName != null) 'queue_name': queueName!.toTfJson(),
    if (scriptName != null) 'script_name': scriptName!.toTfJson(),
    if (secretName != null) 'secret_name': secretName!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
    if (serviceId != null) 'service_id': serviceId!.toTfJson(),
    if (storeId != null) 'store_id': storeId!.toTfJson(),
    if (text != null) 'text': text!.toTfJson(),
    if (tunnelId != null) 'tunnel_id': tunnelId!.toTfJson(),
    'type': type.toTfJson(),
    if (usages != null) 'usages': usages!.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
    if (workflowName != null) 'workflow_name': workflowName!.toTfJson(),
    if (outbound != null) 'outbound': outbound!.encode(),
    if (simple != null) 'simple': simple!.encode(),
  };
}

/// Typed helper for the `bindings.outbound` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptBindingsOutbound {
  const WorkersScriptBindingsOutbound({this.params, this.worker});

  final TfArg<List<Object?>>? params;

  final WorkersScriptBindingsOutboundWorker? worker;

  Map<String, Object?> encode() => {
    if (params != null) 'params': params!.toTfJson(),
    if (worker != null) 'worker': worker!.encode(),
  };
}

/// Typed helper for the `bindings.outbound.worker` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptBindingsOutboundWorker {
  const WorkersScriptBindingsOutboundWorker({this.environment, this.service});

  final TfArg<String>? environment;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (environment != null) 'environment': environment!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `bindings.simple` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptBindingsSimple {
  const WorkersScriptBindingsSimple({
    required this.limit,
    this.mitigationTimeout,
    required this.period,
  });

  final TfArg<num> limit;

  final TfArg<num>? mitigationTimeout;

  final TfArg<num> period;

  Map<String, Object?> encode() => {
    'limit': limit.toTfJson(),
    if (mitigationTimeout != null)
      'mitigation_timeout': mitigationTimeout!.toTfJson(),
    'period': period.toTfJson(),
  };
}

/// Typed helper for the `cache_options` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptCacheOptions {
  const WorkersScriptCacheOptions({this.crossVersionCache, this.enabled});

  final TfArg<bool>? crossVersionCache;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (crossVersionCache != null)
      'cross_version_cache': crossVersionCache!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `exports` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptExports {
  const WorkersScriptExports({required this.type, this.cache});

  final TfArg<String> type;

  final WorkersScriptExportsCache? cache;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (cache != null) 'cache': cache!.encode(),
  };
}

/// Typed helper for the `exports.cache` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptExportsCache {
  const WorkersScriptExportsCache({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `limits` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptLimits {
  const WorkersScriptLimits({this.cpuMs, this.subrequests});

  final TfArg<num>? cpuMs;

  final TfArg<num>? subrequests;

  Map<String, Object?> encode() => {
    if (cpuMs != null) 'cpu_ms': cpuMs!.toTfJson(),
    if (subrequests != null) 'subrequests': subrequests!.toTfJson(),
  };
}

/// Typed helper for the `migrations` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrations {
  const WorkersScriptMigrations({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.newTag,
    this.oldTag,
    this.renamedClasses,
    this.steps,
    this.transferredClasses,
  });

  final TfArg<List<Object?>>? deletedClasses;

  final TfArg<List<Object?>>? newClasses;

  final TfArg<List<Object?>>? newSqliteClasses;

  final TfArg<String>? newTag;

  final TfArg<String>? oldTag;

  final List<WorkersScriptMigrationsRenamedClasses>? renamedClasses;

  final List<WorkersScriptMigrationsSteps>? steps;

  final List<WorkersScriptMigrationsTransferredClasses>? transferredClasses;

  Map<String, Object?> encode() => {
    if (deletedClasses != null) 'deleted_classes': deletedClasses!.toTfJson(),
    if (newClasses != null) 'new_classes': newClasses!.toTfJson(),
    if (newSqliteClasses != null)
      'new_sqlite_classes': newSqliteClasses!.toTfJson(),
    if (newTag != null) 'new_tag': newTag!.toTfJson(),
    if (oldTag != null) 'old_tag': oldTag!.toTfJson(),
    if (renamedClasses != null)
      'renamed_classes': [for (final e in renamedClasses!) e.encode()],
    if (steps != null) 'steps': [for (final e in steps!) e.encode()],
    if (transferredClasses != null)
      'transferred_classes': [for (final e in transferredClasses!) e.encode()],
  };
}

/// Typed helper for the `migrations.renamed_classes` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsRenamedClasses {
  const WorkersScriptMigrationsRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `migrations.steps` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsSteps {
  const WorkersScriptMigrationsSteps({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.renamedClasses,
    this.transferredClasses,
  });

  final TfArg<List<Object?>>? deletedClasses;

  final TfArg<List<Object?>>? newClasses;

  final TfArg<List<Object?>>? newSqliteClasses;

  final List<WorkersScriptMigrationsStepsRenamedClasses>? renamedClasses;

  final List<WorkersScriptMigrationsStepsTransferredClasses>?
  transferredClasses;

  Map<String, Object?> encode() => {
    if (deletedClasses != null) 'deleted_classes': deletedClasses!.toTfJson(),
    if (newClasses != null) 'new_classes': newClasses!.toTfJson(),
    if (newSqliteClasses != null)
      'new_sqlite_classes': newSqliteClasses!.toTfJson(),
    if (renamedClasses != null)
      'renamed_classes': [for (final e in renamedClasses!) e.encode()],
    if (transferredClasses != null)
      'transferred_classes': [for (final e in transferredClasses!) e.encode()],
  };
}

/// Typed helper for the `migrations.steps.renamed_classes` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsStepsRenamedClasses {
  const WorkersScriptMigrationsStepsRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `migrations.steps.transferred_classes` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsStepsTransferredClasses {
  const WorkersScriptMigrationsStepsTransferredClasses({
    this.from,
    this.fromScript,
    this.to,
  });

  final TfArg<String>? from;

  final TfArg<String>? fromScript;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (fromScript != null) 'from_script': fromScript!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `migrations.transferred_classes` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsTransferredClasses {
  const WorkersScriptMigrationsTransferredClasses({
    this.from,
    this.fromScript,
    this.to,
  });

  final TfArg<String>? from;

  final TfArg<String>? fromScript;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (fromScript != null) 'from_script': fromScript!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `observability` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptObservability {
  const WorkersScriptObservability({
    required this.enabled,
    this.headSamplingRate,
    this.logs,
    this.traces,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? headSamplingRate;

  final WorkersScriptObservabilityLogs? logs;

  final WorkersScriptObservabilityTraces? traces;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (logs != null) 'logs': logs!.encode(),
    if (traces != null) 'traces': traces!.encode(),
  };
}

/// Typed helper for the `observability.logs` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptObservabilityLogs {
  const WorkersScriptObservabilityLogs({
    this.destinations,
    required this.enabled,
    this.headSamplingRate,
    required this.invocationLogs,
    this.persist,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool> enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool> invocationLogs;

  final TfArg<bool>? persist;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    'invocation_logs': invocationLogs.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
  };
}

/// Typed helper for the `observability.traces` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptObservabilityTraces {
  const WorkersScriptObservabilityTraces({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.persist,
    this.propagationPolicy,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? persist;

  final TfArg<String>? propagationPolicy;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
    if (propagationPolicy != null)
      'propagation_policy': propagationPolicy!.toTfJson(),
  };
}

/// Typed helper for the `package_dependencies` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptPackageDependencies {
  const WorkersScriptPackageDependencies({
    required this.installedVersion,
    required this.name,
    required this.packageJsonVersion,
  });

  final TfArg<String> installedVersion;

  final TfArg<String> name;

  final TfArg<String> packageJsonVersion;

  Map<String, Object?> encode() => {
    'installed_version': installedVersion.toTfJson(),
    'name': name.toTfJson(),
    'package_json_version': packageJsonVersion.toTfJson(),
  };
}

/// Typed helper for the `placement` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptPlacement {
  const WorkersScriptPlacement({this.mode});

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {if (mode != null) 'mode': mode!.toTfJson()};
}

/// Typed helper for the `tail_consumers` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptTailConsumers {
  const WorkersScriptTailConsumers({
    this.environment,
    this.namespace,
    required this.service,
  });

  final TfArg<String>? environment;

  final TfArg<String>? namespace;

  final TfArg<String> service;

  Map<String, Object?> encode() => {
    if (environment != null) 'environment': environment!.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    'service': service.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workers_script`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorkersScript extends Resource {
  static const String tfType = 'cloudflare_workers_script';

  CloudflareWorkersScript({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? bodyPart,
    TfArg<String>? compatibilityDate,
    TfArg<List<String>>? compatibilityFlags,
    TfArg<String>? content,
    TfArg<String>? contentFile,
    TfArg<String>? contentSha256,
    TfArg<String>? contentType,
    TfArg<bool>? keepAssets,
    TfArg<List<String>>? keepBindings,
    TfArg<bool>? logpush,
    TfArg<String>? mainModule,
    required TfArg<String> scriptName,
    TfArg<String>? usageModel,
    WorkersScriptAnnotations? annotations,
    WorkersScriptAssets? assets,
    List<WorkersScriptBindings>? bindings,
    WorkersScriptCacheOptions? cacheOptions,
    WorkersScriptExports? exports,
    WorkersScriptLimits? limits,
    WorkersScriptMigrations? migrations,
    WorkersScriptObservability? observability,
    List<WorkersScriptPackageDependencies>? packageDependencies,
    WorkersScriptPlacement? placement,
    List<WorkersScriptTailConsumers>? tailConsumers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (bodyPart != null) 'body_part': bodyPart,
           if (compatibilityDate != null)
             'compatibility_date': compatibilityDate,
           if (compatibilityFlags != null)
             'compatibility_flags': compatibilityFlags,
           if (content != null) 'content': content,
           if (contentFile != null) 'content_file': contentFile,
           if (contentSha256 != null) 'content_sha256': contentSha256,
           if (contentType != null) 'content_type': contentType,
           if (keepAssets != null) 'keep_assets': keepAssets,
           if (keepBindings != null) 'keep_bindings': keepBindings,
           if (logpush != null) 'logpush': logpush,
           if (mainModule != null) 'main_module': mainModule,
           'script_name': scriptName,
           if (usageModel != null) 'usage_model': usageModel,
           if (annotations != null)
             'annotations': TfArg.literal(annotations.encode()),
           if (assets != null) 'assets': TfArg.literal(assets.encode()),
           if (bindings != null)
             'bindings': TfArg.literal([for (final e in bindings) e.encode()]),
           if (cacheOptions != null)
             'cache_options': TfArg.literal(cacheOptions.encode()),
           if (exports != null) 'exports': TfArg.literal(exports.encode()),
           if (limits != null) 'limits': TfArg.literal(limits.encode()),
           if (migrations != null)
             'migrations': TfArg.literal(migrations.encode()),
           if (observability != null)
             'observability': TfArg.literal(observability.encode()),
           if (packageDependencies != null)
             'package_dependencies': TfArg.literal([
               for (final e in packageDependencies) e.encode(),
             ]),
           if (placement != null)
             'placement': TfArg.literal(placement.encode()),
           if (tailConsumers != null)
             'tail_consumers': TfArg.literal([
               for (final e in tailConsumers) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `handlers` attribute.
  TfRef<List<String>> get handlers =>
      TfRef.attribute<List<String>>(this, 'handlers');

  /// Reference to `has_assets` attribute.
  TfRef<bool> get hasAssets => TfRef.attribute<bool>(this, 'has_assets');

  /// Reference to `has_modules` attribute.
  TfRef<bool> get hasModules => TfRef.attribute<bool>(this, 'has_modules');

  /// Reference to `last_deployed_from` attribute.
  TfRef<String> get lastDeployedFrom =>
      TfRef.attribute<String>(this, 'last_deployed_from');

  /// Reference to `migration_tag` attribute.
  TfRef<String> get migrationTag =>
      TfRef.attribute<String>(this, 'migration_tag');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `placement_mode` attribute.
  TfRef<String> get placementMode =>
      TfRef.attribute<String>(this, 'placement_mode');

  /// Reference to `placement_status` attribute.
  TfRef<String> get placementStatus =>
      TfRef.attribute<String>(this, 'placement_status');

  /// Reference to `startup_time_ms` attribute.
  TfRef<num> get startupTimeMs => TfRef.attribute<num>(this, 'startup_time_ms');
}
