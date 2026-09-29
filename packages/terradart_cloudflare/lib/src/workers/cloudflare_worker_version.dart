// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_worker_version`.
const Set<String> _cloudflareWorkerVersionSensitive = <String>{
  'assets.jwt',
  'bindings.key_base64',
  'bindings.key_jwk',
  'bindings.text',
};

/// Worker Version enum for `include`.
enum WorkerVersionInclude implements TerraformEnum {
  modules('modules');

  const WorkerVersionInclude(this.terraformValue);
  @override
  final String terraformValue;
}

/// Worker Version Usage enum for `usage_model`.
enum WorkerVersionUsageModel implements TerraformEnum {
  standard('standard'),
  bundled('bundled'),
  unbound('unbound');

  const WorkerVersionUsageModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `annotations` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionAnnotations {
  const WorkerVersionAnnotations({this.workersMessage, this.workersTag});

  final TfArg<String>? workersMessage;

  final TfArg<String>? workersTag;

  Map<String, Object?> encode() => {
    if (workersMessage != null) 'workers_message': workersMessage!.toTfJson(),
    if (workersTag != null) 'workers_tag': workersTag!.toTfJson(),
  };
}

/// Typed helper for the `assets` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionAssets {
  const WorkerVersionAssets({this.source, this.config});

  final WorkerVersionAssetsSource? source;

  final WorkerVersionAssetsConfig? config;

  Map<String, Object?> encode() => {
    ...?source?.encode(),
    if (config != null) 'config': config!.encode(),
  };
}

/// At most one of `directory`, `jwt` on the `assets` block of `cloudflare_worker_version`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.directory(...)`.
sealed class WorkerVersionAssetsSource {
  const WorkerVersionAssetsSource();

  /// Sets `directory`.
  const factory WorkerVersionAssetsSource.directory(TfArg<String> directory) =
      WorkerVersionAssetsSourceDirectory;

  /// Sets `jwt`.
  const factory WorkerVersionAssetsSource.jwt(TfArg<String> jwt) =
      WorkerVersionAssetsSourceJwt;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkerVersionAssetsSource.directory] choice: sets `directory`.
final class WorkerVersionAssetsSourceDirectory
    extends WorkerVersionAssetsSource {
  const WorkerVersionAssetsSourceDirectory(this.directory);

  final TfArg<String> directory;

  @override
  String get blockKey => 'directory';

  @override
  Map<String, Object?> encode() => {'directory': directory.toTfJson()};
}

/// The [WorkerVersionAssetsSource.jwt] choice: sets `jwt`.
final class WorkerVersionAssetsSourceJwt extends WorkerVersionAssetsSource {
  const WorkerVersionAssetsSourceJwt(this.jwt);

  final TfArg<String> jwt;

  @override
  String get blockKey => 'jwt';

  @override
  Map<String, Object?> encode() => {'jwt': jwt.toTfJson()};
}

/// Typed helper for the `assets.config` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionAssetsConfig {
  const WorkerVersionAssetsConfig({
    this.basePath,
    this.htmlHandling,
    this.notFoundHandling,
    this.runWorkerFirst,
  });

  final TfArg<String>? basePath;

  final TfArg<WorkerVersionAssetsConfigHtmlHandling>? htmlHandling;

  final TfArg<WorkerVersionAssetsConfigNotFoundHandling>? notFoundHandling;

  final TfArg<Object?>? runWorkerFirst;

  Map<String, Object?> encode() => {
    if (basePath != null) 'base_path': basePath!.toTfJson(),
    if (htmlHandling != null) 'html_handling': htmlHandling!.toTfJson(),
    if (notFoundHandling != null)
      'not_found_handling': notFoundHandling!.toTfJson(),
    if (runWorkerFirst != null) 'run_worker_first': runWorkerFirst!.toTfJson(),
  };
}

/// `html_handling` — derived from the provider schema description.
enum WorkerVersionAssetsConfigHtmlHandling implements TerraformEnum {
  autoTrailingSlash('auto-trailing-slash'),
  forceTrailingSlash('force-trailing-slash'),
  dropTrailingSlash('drop-trailing-slash'),
  none('none');

  const WorkerVersionAssetsConfigHtmlHandling(this.terraformValue);
  @override
  final String terraformValue;
}

/// `not_found_handling` — derived from the provider schema description.
enum WorkerVersionAssetsConfigNotFoundHandling implements TerraformEnum {
  none('none'),
  v404Page('404-page'),
  singlePageApplication('single-page-application');

  const WorkerVersionAssetsConfigNotFoundHandling(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `bindings` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionBindings {
  const WorkerVersionBindings({
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
    this.identity,
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
    this.stream,
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

  final TfArg<WorkerVersionBindingsFormat>? format;

  final TfArg<String>? id;

  final TfArg<WorkerVersionBindingsIdentity>? identity;

  final TfArg<String>? indexName;

  final TfArg<String>? instanceName;

  final TfArg<String>? json;

  final TfArg<WorkerVersionBindingsJurisdiction>? jurisdiction;

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

  final TfArg<String>? stream;

  final TfArg<String>? text;

  final TfArg<String>? tunnelId;

  final TfArg<WorkerVersionBindingsType> type;

  final TfArg<List<Object?>>? usages;

  final TfArg<String>? versionId;

  final TfArg<String>? workflowName;

  final WorkerVersionBindingsOutbound? outbound;

  final WorkerVersionBindingsSimple? simple;

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
    if (identity != null) 'identity': identity!.toTfJson(),
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
    if (stream != null) 'stream': stream!.toTfJson(),
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

/// `format` — derived from the provider schema description.
enum WorkerVersionBindingsFormat implements TerraformEnum {
  raw('raw'),
  pkcs8('pkcs8'),
  spki('spki'),
  jwk('jwk');

  const WorkerVersionBindingsFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `identity` — derived from the provider schema description.
enum WorkerVersionBindingsIdentity implements TerraformEnum {
  runtimeEmailAlpha('runtime-email-alpha');

  const WorkerVersionBindingsIdentity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `jurisdiction` — derived from the provider schema description.
enum WorkerVersionBindingsJurisdiction implements TerraformEnum {
  eu('eu'),
  fedramp('fedramp'),
  fedrampHigh('fedramp-high'),
  us('us');

  const WorkerVersionBindingsJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum WorkerVersionBindingsType implements TerraformEnum {
  ai('ai'),
  aiSearch('ai_search'),
  aiSearchNamespace('ai_search_namespace'),
  messaging('messaging'),
  analyticsEngine('analytics_engine'),
  assets('assets'),
  browser('browser'),
  d1('d1'),
  dataBlob('data_blob'),
  dispatchNamespace('dispatch_namespace'),
  durableObjectNamespace('durable_object_namespace'),
  hyperdrive('hyperdrive'),
  inherit('inherit'),
  images('images'),
  json('json'),
  kvNamespace('kv_namespace'),
  media('media'),
  mtlsCertificate('mtls_certificate'),
  plainText('plain_text'),
  pipelines('pipelines'),
  k2('k2'),
  queue('queue'),
  ratelimit('ratelimit'),
  r2Bucket('r2_bucket'),
  secretText('secret_text'),
  sendEmail('send_email'),
  service('service'),
  textBlob('text_blob'),
  vectorize('vectorize'),
  versionMetadata('version_metadata'),
  secretsStoreSecret('secrets_store_secret'),
  flagship('flagship'),
  secretKey('secret_key'),
  workflow('workflow'),
  wasmModule('wasm_module'),
  vpcService('vpc_service'),
  vpcNetwork('vpc_network');

  const WorkerVersionBindingsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `bindings.outbound` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionBindingsOutbound {
  const WorkerVersionBindingsOutbound({this.params, this.worker});

  final List<WorkerVersionBindingsOutboundParams>? params;

  final WorkerVersionBindingsOutboundWorker? worker;

  Map<String, Object?> encode() => {
    if (params != null) 'params': [for (final e in params!) e.encode()],
    if (worker != null) 'worker': worker!.encode(),
  };
}

/// Typed helper for the `bindings.outbound.params` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionBindingsOutboundParams {
  const WorkerVersionBindingsOutboundParams({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `bindings.outbound.worker` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionBindingsOutboundWorker {
  const WorkerVersionBindingsOutboundWorker({
    this.entrypoint,
    this.environment,
    this.service,
  });

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    if (entrypoint != null) 'entrypoint': entrypoint!.toTfJson(),
    if (environment != null) 'environment': environment!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
  };
}

/// Typed helper for the `bindings.simple` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionBindingsSimple {
  const WorkerVersionBindingsSimple({
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
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionCacheOptions {
  const WorkerVersionCacheOptions({this.crossVersionCache, this.enabled});

  final TfArg<bool>? crossVersionCache;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (crossVersionCache != null)
      'cross_version_cache': crossVersionCache!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `containers` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionContainers {
  const WorkerVersionContainers({required this.className});

  final TfArg<String> className;

  Map<String, Object?> encode() => {'class_name': className.toTfJson()};
}

/// Typed helper for the `exports` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionExports {
  const WorkerVersionExports({
    this.renamedTo,
    this.state,
    this.storage,
    this.transferFrom,
    this.transferredTo,
    required this.type,
    this.cache,
  });

  final TfArg<String>? renamedTo;

  final TfArg<WorkerVersionExportsState>? state;

  final TfArg<WorkerVersionExportsStorage>? storage;

  final TfArg<String>? transferFrom;

  final TfArg<String>? transferredTo;

  final TfArg<WorkerVersionExportsType> type;

  final WorkerVersionExportsCache? cache;

  Map<String, Object?> encode() => {
    if (renamedTo != null) 'renamed_to': renamedTo!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
    if (storage != null) 'storage': storage!.toTfJson(),
    if (transferFrom != null) 'transfer_from': transferFrom!.toTfJson(),
    if (transferredTo != null) 'transferred_to': transferredTo!.toTfJson(),
    'type': type.toTfJson(),
    if (cache != null) 'cache': cache!.encode(),
  };
}

/// `state` — derived from the provider schema description.
enum WorkerVersionExportsState implements TerraformEnum {
  created('created'),
  deleted('deleted'),
  renamed('renamed'),
  transferred('transferred'),
  expectingTransfer('expecting-transfer');

  const WorkerVersionExportsState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `storage` — derived from the provider schema description.
enum WorkerVersionExportsStorage implements TerraformEnum {
  sqlite('sqlite'),
  legacyKv('legacy-kv');

  const WorkerVersionExportsStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum WorkerVersionExportsType implements TerraformEnum {
  worker('worker'),
  durableObject('durable-object');

  const WorkerVersionExportsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `exports.cache` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionExportsCache {
  const WorkerVersionExportsCache({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `limits` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionLimits {
  const WorkerVersionLimits({this.cpuMs, this.subrequests});

  final TfArg<num>? cpuMs;

  final TfArg<num>? subrequests;

  Map<String, Object?> encode() => {
    if (cpuMs != null) 'cpu_ms': cpuMs!.toTfJson(),
    if (subrequests != null) 'subrequests': subrequests!.toTfJson(),
  };
}

/// Typed helper for the `migrations` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrations {
  const WorkerVersionMigrations({
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

  final List<WorkerVersionMigrationsRenamedClasses>? renamedClasses;

  final List<WorkerVersionMigrationsSteps>? steps;

  final List<WorkerVersionMigrationsTransferredClasses>? transferredClasses;

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
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrationsRenamedClasses {
  const WorkerVersionMigrationsRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `migrations.steps` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrationsSteps {
  const WorkerVersionMigrationsSteps({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.renamedClasses,
    this.transferredClasses,
  });

  final TfArg<List<Object?>>? deletedClasses;

  final TfArg<List<Object?>>? newClasses;

  final TfArg<List<Object?>>? newSqliteClasses;

  final List<WorkerVersionMigrationsStepsRenamedClasses>? renamedClasses;

  final List<WorkerVersionMigrationsStepsTransferredClasses>?
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
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrationsStepsRenamedClasses {
  const WorkerVersionMigrationsStepsRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    if (from != null) 'from': from!.toTfJson(),
    if (to != null) 'to': to!.toTfJson(),
  };
}

/// Typed helper for the `migrations.steps.transferred_classes` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrationsStepsTransferredClasses {
  const WorkerVersionMigrationsStepsTransferredClasses({
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
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionMigrationsTransferredClasses {
  const WorkerVersionMigrationsTransferredClasses({
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

/// Typed helper for the `modules` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionModules {
  const WorkerVersionModules({
    required this.content,
    required this.contentType,
    required this.name,
  });

  final WorkerVersionModulesContent content;

  final TfArg<String> contentType;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    ...content.encode(),
    'content_type': contentType.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Exactly one of `content_base64`, `content_file` on the `modules` block of `cloudflare_worker_version`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.contentBase64(...)`.
sealed class WorkerVersionModulesContent {
  const WorkerVersionModulesContent();

  /// Sets `content_base64`.
  const factory WorkerVersionModulesContent.contentBase64(
    TfArg<String> contentBase64,
  ) = WorkerVersionModulesContentContentBase64;

  /// Sets `content_file`.
  const factory WorkerVersionModulesContent.contentFile(
    TfArg<String> contentFile,
  ) = WorkerVersionModulesContentContentFile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkerVersionModulesContent.contentBase64] choice: sets `content_base64`.
final class WorkerVersionModulesContentContentBase64
    extends WorkerVersionModulesContent {
  const WorkerVersionModulesContentContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};
}

/// The [WorkerVersionModulesContent.contentFile] choice: sets `content_file`.
final class WorkerVersionModulesContentContentFile
    extends WorkerVersionModulesContent {
  const WorkerVersionModulesContentContentFile(this.contentFile);

  final TfArg<String> contentFile;

  @override
  String get blockKey => 'content_file';

  @override
  Map<String, Object?> encode() => {'content_file': contentFile.toTfJson()};
}

/// Typed helper for the `package_dependencies` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionPackageDependencies {
  const WorkerVersionPackageDependencies({
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
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionPlacement {
  const WorkerVersionPlacement({
    this.host,
    this.hostname,
    this.mode,
    this.region,
    this.target,
  });

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<WorkerVersionPlacementMode>? mode;

  final TfArg<String>? region;

  final List<WorkerVersionPlacementTarget>? target;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum WorkerVersionPlacementMode implements TerraformEnum {
  smart('smart'),
  targeted('targeted');

  const WorkerVersionPlacementMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.target` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionPlacementTarget {
  const WorkerVersionPlacementTarget({this.host, this.hostname, this.region});

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_worker_version`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorkerVersion extends Resource {
  static const String tfType = 'cloudflare_worker_version';

  CloudflareWorkerVersion({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? compatibilityDate,
    TfArg<List<String>>? compatibilityFlags,
    TfArg<bool>? deploy,
    TfArg<WorkerVersionInclude>? include,
    TfArg<String>? mainModule,
    TfArg<WorkerVersionUsageModel>? usageModel,
    required TfArg<String> workerId,
    WorkerVersionAnnotations? annotations,
    WorkerVersionAssets? assets,
    List<WorkerVersionBindings>? bindings,
    WorkerVersionCacheOptions? cacheOptions,
    List<WorkerVersionContainers>? containers,
    Map<String, WorkerVersionExports>? exports,
    WorkerVersionLimits? limits,
    WorkerVersionMigrations? migrations,
    List<WorkerVersionModules>? modules,
    List<WorkerVersionPackageDependencies>? packageDependencies,
    WorkerVersionPlacement? placement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (compatibilityDate != null)
             'compatibility_date': compatibilityDate,
           if (compatibilityFlags != null)
             'compatibility_flags': compatibilityFlags,
           if (deploy != null) 'deploy': deploy,
           if (include != null) 'include': include,
           if (mainModule != null) 'main_module': mainModule,
           if (usageModel != null) 'usage_model': usageModel,
           'worker_id': workerId,
           if (annotations != null)
             'annotations': TfArg.literal(annotations.encode()),
           if (assets != null) 'assets': TfArg.literal(assets.encode()),
           if (bindings != null)
             'bindings': TfArg.literal([for (final e in bindings) e.encode()]),
           if (cacheOptions != null)
             'cache_options': TfArg.literal(cacheOptions.encode()),
           if (containers != null)
             'containers': TfArg.literal([
               for (final e in containers) e.encode(),
             ]),
           if (exports != null)
             'exports': TfArg.literal({
               for (final e in exports.entries) e.key: e.value.encode(),
             }),
           if (limits != null) 'limits': TfArg.literal(limits.encode()),
           if (migrations != null)
             'migrations': TfArg.literal(migrations.encode()),
           if (modules != null)
             'modules': TfArg.literal([for (final e in modules) e.encode()]),
           if (packageDependencies != null)
             'package_dependencies': TfArg.literal([
               for (final e in packageDependencies) e.encode(),
             ]),
           if (placement != null)
             'placement': TfArg.literal(placement.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkerVersion>`.
  RefTo<CloudflareWorkerVersion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `author_email` attribute.
  TfRef<String> get authorEmail =>
      TfRef.attribute<String>(this, 'author_email');

  /// Reference to `author_id` attribute.
  TfRef<String> get authorId => TfRef.attribute<String>(this, 'author_id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `main_script_base64` attribute.
  TfRef<String> get mainScriptBase64 =>
      TfRef.attribute<String>(this, 'main_script_base64');

  /// Reference to `migration_tag` attribute.
  TfRef<String> get migrationTag =>
      TfRef.attribute<String>(this, 'migration_tag');

  /// Reference to `number` attribute.
  TfRef<num> get number => TfRef.attribute<num>(this, 'number');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `startup_time_ms` attribute.
  TfRef<num> get startupTimeMs => TfRef.attribute<num>(this, 'startup_time_ms');

  /// Reference to `urls` attribute.
  TfRef<List<String>> get urls => TfRef.attribute<List<String>>(this, 'urls');
}
