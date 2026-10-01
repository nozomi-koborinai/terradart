// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'workers_message': ?workersMessage?.toTfJson(),
    'workers_tag': ?workersTag?.toTfJson(),
  };
}

/// Typed helper for the `assets` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionAssets {
  const WorkerVersionAssets({this.source, this.config});

  final WorkerVersionAssetsSource? source;

  final WorkerVersionConfig? config;

  Map<String, Object?> encode() => {
    ...?source?.encode(),
    'config': ?config?.encode(),
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
final class WorkerVersionConfig {
  const WorkerVersionConfig({
    this.basePath,
    this.htmlHandling,
    this.notFoundHandling,
    this.runWorkerFirst,
  });

  final TfArg<String>? basePath;

  final TfArg<WorkerVersionHtmlHandling>? htmlHandling;

  final TfArg<WorkerVersionNotFoundHandling>? notFoundHandling;

  final TfArg<Object?>? runWorkerFirst;

  Map<String, Object?> encode() => {
    'base_path': ?basePath?.toTfJson(),
    'html_handling': ?htmlHandling?.toTfJson(),
    'not_found_handling': ?notFoundHandling?.toTfJson(),
    'run_worker_first': ?runWorkerFirst?.toTfJson(),
  };
}

/// `html_handling` — derived from the provider schema description.
enum WorkerVersionHtmlHandling implements TerraformEnum {
  autoTrailingSlash('auto-trailing-slash'),
  forceTrailingSlash('force-trailing-slash'),
  dropTrailingSlash('drop-trailing-slash'),
  none('none');

  const WorkerVersionHtmlHandling(this.terraformValue);
  @override
  final String terraformValue;
}

/// `not_found_handling` — derived from the provider schema description.
enum WorkerVersionNotFoundHandling implements TerraformEnum {
  none('none'),
  v404Page('404-page'),
  singlePageApplication('single-page-application');

  const WorkerVersionNotFoundHandling(this.terraformValue);
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

  final TfArg<List<String>>? allowedDestinationAddresses;

  final TfArg<List<String>>? allowedSenderAddresses;

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

  final TfArg<WorkerVersionFormat>? format;

  final TfArg<String>? id;

  final TfArg<WorkerVersionIdentity>? identity;

  final TfArg<String>? indexName;

  final TfArg<String>? instanceName;

  final TfArg<String>? json;

  final TfArg<WorkerVersionJurisdiction>? jurisdiction;

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

  final TfArg<List<String>>? usages;

  final TfArg<String>? versionId;

  final TfArg<String>? workflowName;

  final WorkerVersionOutbound? outbound;

  final WorkerVersionSimple? simple;

  Map<String, Object?> encode() => {
    'algorithm': ?algorithm?.toTfJson(),
    'allowed_destination_addresses': ?allowedDestinationAddresses?.toTfJson(),
    'allowed_sender_addresses': ?allowedSenderAddresses?.toTfJson(),
    'app_id': ?appId?.toTfJson(),
    'bucket_name': ?bucketName?.toTfJson(),
    'certificate_id': ?certificateId?.toTfJson(),
    'class_name': ?className?.toTfJson(),
    'database_id': ?databaseId?.toTfJson(),
    'dataset': ?dataset?.toTfJson(),
    'destination_address': ?destinationAddress?.toTfJson(),
    'dispatch_namespace': ?dispatchNamespace?.toTfJson(),
    'entrypoint': ?entrypoint?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'format': ?format?.toTfJson(),
    'id': ?id?.toTfJson(),
    'identity': ?identity?.toTfJson(),
    'index_name': ?indexName?.toTfJson(),
    'instance_name': ?instanceName?.toTfJson(),
    'json': ?json?.toTfJson(),
    'jurisdiction': ?jurisdiction?.toTfJson(),
    'key_base64': ?keyBase64?.toTfJson(),
    'key_jwk': ?keyJwk?.toTfJson(),
    'name': name.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    'namespace_id': ?namespaceId?.toTfJson(),
    'network_id': ?networkId?.toTfJson(),
    'old_name': ?oldName?.toTfJson(),
    'part': ?part?.toTfJson(),
    'pipeline': ?pipeline?.toTfJson(),
    'queue_name': ?queueName?.toTfJson(),
    'script_name': ?scriptName?.toTfJson(),
    'secret_name': ?secretName?.toTfJson(),
    'service': ?service?.toTfJson(),
    'service_id': ?serviceId?.toTfJson(),
    'store_id': ?storeId?.toTfJson(),
    'stream': ?stream?.toTfJson(),
    'text': ?text?.toTfJson(),
    'tunnel_id': ?tunnelId?.toTfJson(),
    'type': type.toTfJson(),
    'usages': ?usages?.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
    'workflow_name': ?workflowName?.toTfJson(),
    'outbound': ?outbound?.encode(),
    'simple': ?simple?.encode(),
  };
}

/// `format` — derived from the provider schema description.
enum WorkerVersionFormat implements TerraformEnum {
  raw('raw'),
  pkcs8('pkcs8'),
  spki('spki'),
  jwk('jwk');

  const WorkerVersionFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `identity` — derived from the provider schema description.
enum WorkerVersionIdentity implements TerraformEnum {
  runtimeEmailAlpha('runtime-email-alpha');

  const WorkerVersionIdentity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `jurisdiction` — derived from the provider schema description.
enum WorkerVersionJurisdiction implements TerraformEnum {
  eu('eu'),
  fedramp('fedramp'),
  fedrampHigh('fedramp-high'),
  us('us');

  const WorkerVersionJurisdiction(this.terraformValue);
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
final class WorkerVersionOutbound {
  const WorkerVersionOutbound({this.params, this.worker});

  final List<WorkerVersionParams>? params;

  final WorkerVersionWorker? worker;

  Map<String, Object?> encode() => {
    if (params != null) 'params': [for (final e in params!) e.encode()],
    'worker': ?worker?.encode(),
  };
}

/// Typed helper for the `bindings.outbound.params` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionParams {
  const WorkerVersionParams({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `bindings.outbound.worker` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionWorker {
  const WorkerVersionWorker({this.entrypoint, this.environment, this.service});

  final TfArg<String>? entrypoint;

  final TfArg<String>? environment;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'entrypoint': ?entrypoint?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `bindings.simple` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionSimple {
  const WorkerVersionSimple({
    required this.limit,
    this.mitigationTimeout,
    required this.period,
  });

  final TfArg<num> limit;

  final TfArg<num>? mitigationTimeout;

  final TfArg<num> period;

  Map<String, Object?> encode() => {
    'limit': limit.toTfJson(),
    'mitigation_timeout': ?mitigationTimeout?.toTfJson(),
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
    'cross_version_cache': ?crossVersionCache?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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

  final TfArg<WorkerVersionState>? state;

  final TfArg<WorkerVersionStorage>? storage;

  final TfArg<String>? transferFrom;

  final TfArg<String>? transferredTo;

  final TfArg<WorkerVersionExportsType> type;

  final WorkerVersionCache? cache;

  Map<String, Object?> encode() => {
    'renamed_to': ?renamedTo?.toTfJson(),
    'state': ?state?.toTfJson(),
    'storage': ?storage?.toTfJson(),
    'transfer_from': ?transferFrom?.toTfJson(),
    'transferred_to': ?transferredTo?.toTfJson(),
    'type': type.toTfJson(),
    'cache': ?cache?.encode(),
  };
}

/// `state` — derived from the provider schema description.
enum WorkerVersionState implements TerraformEnum {
  created('created'),
  deleted('deleted'),
  renamed('renamed'),
  transferred('transferred'),
  expectingTransfer('expecting-transfer');

  const WorkerVersionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// `storage` — derived from the provider schema description.
enum WorkerVersionStorage implements TerraformEnum {
  sqlite('sqlite'),
  legacyKv('legacy-kv');

  const WorkerVersionStorage(this.terraformValue);
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
final class WorkerVersionCache {
  const WorkerVersionCache({required this.enabled});

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
    'cpu_ms': ?cpuMs?.toTfJson(),
    'subrequests': ?subrequests?.toTfJson(),
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

  final TfArg<List<String>>? deletedClasses;

  final TfArg<List<String>>? newClasses;

  final TfArg<List<String>>? newSqliteClasses;

  final TfArg<String>? newTag;

  final TfArg<String>? oldTag;

  final List<WorkerVersionRenamedClasses>? renamedClasses;

  final List<WorkerVersionSteps>? steps;

  final List<WorkerVersionTransferredClasses>? transferredClasses;

  Map<String, Object?> encode() => {
    'deleted_classes': ?deletedClasses?.toTfJson(),
    'new_classes': ?newClasses?.toTfJson(),
    'new_sqlite_classes': ?newSqliteClasses?.toTfJson(),
    'new_tag': ?newTag?.toTfJson(),
    'old_tag': ?oldTag?.toTfJson(),
    if (renamedClasses != null)
      'renamed_classes': [for (final e in renamedClasses!) e.encode()],
    if (steps != null) 'steps': [for (final e in steps!) e.encode()],
    if (transferredClasses != null)
      'transferred_classes': [for (final e in transferredClasses!) e.encode()],
  };
}

/// Typed helper for the `migrations.renamed_classes` block of
/// `cloudflare_worker_version` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkerVersionRenamedClasses {
  const WorkerVersionRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `migrations.steps` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionSteps {
  const WorkerVersionSteps({
    this.deletedClasses,
    this.newClasses,
    this.newSqliteClasses,
    this.renamedClasses,
    this.transferredClasses,
  });

  final TfArg<List<String>>? deletedClasses;

  final TfArg<List<String>>? newClasses;

  final TfArg<List<String>>? newSqliteClasses;

  final List<WorkerVersionRenamedClasses>? renamedClasses;

  final List<WorkerVersionTransferredClasses>? transferredClasses;

  Map<String, Object?> encode() => {
    'deleted_classes': ?deletedClasses?.toTfJson(),
    'new_classes': ?newClasses?.toTfJson(),
    'new_sqlite_classes': ?newSqliteClasses?.toTfJson(),
    if (renamedClasses != null)
      'renamed_classes': [for (final e in renamedClasses!) e.encode()],
    if (transferredClasses != null)
      'transferred_classes': [for (final e in transferredClasses!) e.encode()],
  };
}

/// Typed helper for the `migrations.transferred_classes` block of
/// `cloudflare_worker_version` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkerVersionTransferredClasses {
  const WorkerVersionTransferredClasses({this.from, this.fromScript, this.to});

  final TfArg<String>? from;

  final TfArg<String>? fromScript;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'from_script': ?fromScript?.toTfJson(),
    'to': ?to?.toTfJson(),
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

  final WorkerVersionContent content;

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
sealed class WorkerVersionContent {
  const WorkerVersionContent();

  /// Sets `content_base64`.
  const factory WorkerVersionContent.contentBase64(
    TfArg<String> contentBase64,
  ) = WorkerVersionContentBase64;

  /// Sets `content_file`.
  const factory WorkerVersionContent.contentFile(TfArg<String> contentFile) =
      WorkerVersionContentFile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkerVersionContent.contentBase64] choice: sets `content_base64`.
final class WorkerVersionContentBase64 extends WorkerVersionContent {
  const WorkerVersionContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};
}

/// The [WorkerVersionContent.contentFile] choice: sets `content_file`.
final class WorkerVersionContentFile extends WorkerVersionContent {
  const WorkerVersionContentFile(this.contentFile);

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

  final TfArg<WorkerVersionMode>? mode;

  final TfArg<String>? region;

  final List<WorkerVersionTarget>? target;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'region': ?region?.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum WorkerVersionMode implements TerraformEnum {
  smart('smart'),
  targeted('targeted');

  const WorkerVersionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `placement.target` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionTarget {
  const WorkerVersionTarget({this.host, this.hostname, this.region});

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'region': ?region?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
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
           'account_id': accountId.encodeAs('id'),
           'compatibility_date': ?compatibilityDate,
           'compatibility_flags': ?compatibilityFlags,
           'deploy': ?deploy,
           'include': ?include,
           'main_module': ?mainModule,
           'usage_model': ?usageModel,
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `compatibility_date` attribute.
  TfRef<String> get compatibilityDate =>
      TfRef.attribute<String>(this, 'compatibility_date');

  /// Reference to `compatibility_flags` attribute.
  TfRef<List<String>> get compatibilityFlags =>
      TfRef.attribute<List<String>>(this, 'compatibility_flags');

  /// Reference to `deploy` attribute.
  TfRef<bool> get deploy => TfRef.attribute<bool>(this, 'deploy');

  /// Reference to `include` attribute.
  TfRef<String> get include => TfRef.attribute<String>(this, 'include');

  /// Reference to `main_module` attribute.
  TfRef<String> get mainModule => TfRef.attribute<String>(this, 'main_module');

  /// Reference to `usage_model` attribute.
  TfRef<String> get usageModel => TfRef.attribute<String>(this, 'usage_model');

  /// Reference to `worker_id` attribute.
  TfRef<String> get workerId => TfRef.attribute<String>(this, 'worker_id');
}
