// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_script`.
const Set<String> _cloudflareWorkersScriptSensitive = <String>{
  'assets.jwt',
  'bindings.key_base64',
  'bindings.key_jwk',
  'bindings.text',
};

/// Workers Script Content enum for `content_type`.
enum WorkersScriptContentType implements TerraformEnum {
  applicationJavascriptModule('application/javascript+module'),
  applicationJavascript('application/javascript'),
  textJavascriptModule('text/javascript+module'),
  textJavascript('text/javascript'),
  textXPython('text/x-python');

  const WorkersScriptContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Workers Script Usage enum for `usage_model`.
enum WorkersScriptUsageModel implements TerraformEnum {
  standard('standard'),
  bundled('bundled'),
  unbound('unbound');

  const WorkersScriptUsageModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `content`, `content_file` on `cloudflare_workers_script`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class WorkersScriptContent {
  const WorkersScriptContent();

  /// Sets `content`.
  const factory WorkersScriptContent.content(TfArg<String> content) =
      WorkersScriptContentContent;

  /// Sets `content_file`.
  const factory WorkersScriptContent.contentFile(TfArg<String> contentFile) =
      WorkersScriptContentContentFile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [WorkersScriptContent.content] choice: sets `content`.
final class WorkersScriptContentContent extends WorkersScriptContent {
  const WorkersScriptContentContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [WorkersScriptContent.contentFile] choice: sets `content_file`.
final class WorkersScriptContentContentFile extends WorkersScriptContent {
  const WorkersScriptContentContentFile(this.contentFile);

  final TfArg<String> contentFile;

  @override
  String get blockKey => 'content_file';

  @override
  Map<String, Object?> encode() => {'content_file': contentFile.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content_file': contentFile};
}

/// Typed helper for the `annotations` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAnnotations {
  const WorkersScriptAnnotations({this.workersMessage, this.workersTag});

  final TfArg<String>? workersMessage;

  final TfArg<String>? workersTag;

  Map<String, Object?> encode() => {
    'workers_message': ?workersMessage?.toTfJson(),
    'workers_tag': ?workersTag?.toTfJson(),
  };
}

/// Typed helper for the `assets` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAssets {
  const WorkersScriptAssets({this.source, this.config});

  final WorkersScriptAssetsSource? source;

  final WorkersScriptAssetsConfig? config;

  Map<String, Object?> encode() => {
    ...?source?.encode(),
    'config': ?config?.encode(),
  };
}

/// At most one of `directory`, `jwt` on the `assets` block of `cloudflare_workers_script`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.directory(...)`.
sealed class WorkersScriptAssetsSource {
  const WorkersScriptAssetsSource();

  /// Sets `directory`.
  const factory WorkersScriptAssetsSource.directory(TfArg<String> directory) =
      WorkersScriptAssetsSourceDirectory;

  /// Sets `jwt`.
  const factory WorkersScriptAssetsSource.jwt(TfArg<String> jwt) =
      WorkersScriptAssetsSourceJwt;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkersScriptAssetsSource.directory] choice: sets `directory`.
final class WorkersScriptAssetsSourceDirectory
    extends WorkersScriptAssetsSource {
  const WorkersScriptAssetsSourceDirectory(this.directory);

  final TfArg<String> directory;

  @override
  String get blockKey => 'directory';

  @override
  Map<String, Object?> encode() => {'directory': directory.toTfJson()};
}

/// The [WorkersScriptAssetsSource.jwt] choice: sets `jwt`.
final class WorkersScriptAssetsSourceJwt extends WorkersScriptAssetsSource {
  const WorkersScriptAssetsSourceJwt(this.jwt);

  final TfArg<String> jwt;

  @override
  String get blockKey => 'jwt';

  @override
  Map<String, Object?> encode() => {'jwt': jwt.toTfJson()};
}

/// Typed helper for the `assets.config` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptAssetsConfig {
  const WorkersScriptAssetsConfig({
    this.basePath,
    this.headers,
    this.htmlHandling,
    this.notFoundHandling,
    this.redirects,
    this.runWorkerFirst,
    this.serveDirectly,
  });

  final TfArg<String>? basePath;

  final TfArg<String>? headers;

  final TfArg<WorkersScriptAssetsConfigHtmlHandling>? htmlHandling;

  final TfArg<WorkersScriptAssetsConfigNotFoundHandling>? notFoundHandling;

  final TfArg<String>? redirects;

  final TfArg<Object?>? runWorkerFirst;

  final TfArg<bool>? serveDirectly;

  Map<String, Object?> encode() => {
    'base_path': ?basePath?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'html_handling': ?htmlHandling?.toTfJson(),
    'not_found_handling': ?notFoundHandling?.toTfJson(),
    'redirects': ?redirects?.toTfJson(),
    'run_worker_first': ?runWorkerFirst?.toTfJson(),
    'serve_directly': ?serveDirectly?.toTfJson(),
  };
}

/// `html_handling` — derived from the provider schema description.
enum WorkersScriptAssetsConfigHtmlHandling implements TerraformEnum {
  autoTrailingSlash('auto-trailing-slash'),
  forceTrailingSlash('force-trailing-slash'),
  dropTrailingSlash('drop-trailing-slash'),
  none('none');

  const WorkersScriptAssetsConfigHtmlHandling(this.terraformValue);
  @override
  final String terraformValue;
}

/// `not_found_handling` — derived from the provider schema description.
enum WorkersScriptAssetsConfigNotFoundHandling implements TerraformEnum {
  none('none'),
  v404Page('404-page'),
  singlePageApplication('single-page-application');

  const WorkersScriptAssetsConfigNotFoundHandling(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<WorkersScriptBindingsFormat>? format;

  final TfArg<String>? id;

  final TfArg<String>? indexName;

  final TfArg<String>? instanceName;

  final TfArg<String>? json;

  final TfArg<WorkersScriptBindingsJurisdiction>? jurisdiction;

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

  final TfArg<WorkersScriptBindingsType> type;

  final List<TfArg<WorkersScriptBindingsUsages>>? usages;

  final TfArg<String>? versionId;

  final TfArg<String>? workflowName;

  final WorkersScriptBindingsOutbound? outbound;

  final WorkersScriptBindingsSimple? simple;

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
    if (usages != null) 'usages': [for (final e in usages!) e.toTfJson()],
    'version_id': ?versionId?.toTfJson(),
    'workflow_name': ?workflowName?.toTfJson(),
    'outbound': ?outbound?.encode(),
    'simple': ?simple?.encode(),
  };
}

/// `format` — derived from the provider schema description.
enum WorkersScriptBindingsFormat implements TerraformEnum {
  raw('raw'),
  pkcs8('pkcs8'),
  spki('spki'),
  jwk('jwk');

  const WorkersScriptBindingsFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `jurisdiction` — derived from the provider schema description.
enum WorkersScriptBindingsJurisdiction implements TerraformEnum {
  eu('eu'),
  fedramp('fedramp'),
  fedrampHigh('fedramp-high');

  const WorkersScriptBindingsJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum WorkersScriptBindingsType implements TerraformEnum {
  ai('ai'),
  aiSearch('ai_search'),
  aiSearchNamespace('ai_search_namespace'),
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
  queue('queue'),
  ratelimit('ratelimit'),
  r2Bucket('r2_bucket'),
  secretText('secret_text'),
  sendEmail('send_email'),
  service('service'),
  tailConsumer('tail_consumer'),
  textBlob('text_blob'),
  vectorize('vectorize'),
  versionMetadata('version_metadata'),
  secretsStoreSecret('secrets_store_secret'),
  secretKey('secret_key'),
  workflow('workflow'),
  wasmModule('wasm_module'),
  vpcService('vpc_service'),
  vpcNetwork('vpc_network');

  const WorkersScriptBindingsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `usages` — derived from the provider schema description.
enum WorkersScriptBindingsUsages implements TerraformEnum {
  encrypt('encrypt'),
  decrypt('decrypt'),
  sign('sign'),
  verify('verify'),
  derivekey('deriveKey'),
  derivebits('deriveBits'),
  wrapkey('wrapKey'),
  unwrapkey('unwrapKey');

  const WorkersScriptBindingsUsages(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `bindings.outbound` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptBindingsOutbound {
  const WorkersScriptBindingsOutbound({this.params, this.worker});

  final TfArg<List<Object?>>? params;

  final WorkersScriptBindingsOutboundWorker? worker;

  Map<String, Object?> encode() => {
    'params': ?params?.toTfJson(),
    'worker': ?worker?.encode(),
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
    'environment': ?environment?.toTfJson(),
    'service': ?service?.toTfJson(),
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
    'mitigation_timeout': ?mitigationTimeout?.toTfJson(),
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
    'cross_version_cache': ?crossVersionCache?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
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
    'cache': ?cache?.encode(),
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

/// Typed helper for the `files` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptFiles {
  const WorkersScriptFiles({required this.content, required this.contentType});

  final WorkersScriptFilesContent content;

  final TfArg<String> contentType;

  Map<String, Object?> encode() => {
    ...content.encode(),
    'content_type': contentType.toTfJson(),
  };
}

/// Exactly one of `content_base64`, `content_file` on the `files` block of `cloudflare_workers_script`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.contentBase64(...)`.
sealed class WorkersScriptFilesContent {
  const WorkersScriptFilesContent();

  /// Sets `content_base64`.
  const factory WorkersScriptFilesContent.contentBase64(
    TfArg<String> contentBase64,
  ) = WorkersScriptFilesContentContentBase64;

  /// Sets `content_file`.
  const factory WorkersScriptFilesContent.contentFile(
    TfArg<String> contentFile,
  ) = WorkersScriptFilesContentContentFile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkersScriptFilesContent.contentBase64] choice: sets `content_base64`.
final class WorkersScriptFilesContentContentBase64
    extends WorkersScriptFilesContent {
  const WorkersScriptFilesContentContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @override
  String get blockKey => 'content_base64';

  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};
}

/// The [WorkersScriptFilesContent.contentFile] choice: sets `content_file`.
final class WorkersScriptFilesContentContentFile
    extends WorkersScriptFilesContent {
  const WorkersScriptFilesContentContentFile(this.contentFile);

  final TfArg<String> contentFile;

  @override
  String get blockKey => 'content_file';

  @override
  Map<String, Object?> encode() => {'content_file': contentFile.toTfJson()};
}

/// Typed helper for the `limits` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptLimits {
  const WorkersScriptLimits({this.cpuMs, this.subrequests});

  final TfArg<num>? cpuMs;

  final TfArg<num>? subrequests;

  Map<String, Object?> encode() => {
    'cpu_ms': ?cpuMs?.toTfJson(),
    'subrequests': ?subrequests?.toTfJson(),
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
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptMigrationsRenamedClasses {
  const WorkersScriptMigrationsRenamedClasses({this.from, this.to});

  final TfArg<String>? from;

  final TfArg<String>? to;

  Map<String, Object?> encode() => {
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
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
    'deleted_classes': ?deletedClasses?.toTfJson(),
    'new_classes': ?newClasses?.toTfJson(),
    'new_sqlite_classes': ?newSqliteClasses?.toTfJson(),
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
    'from': ?from?.toTfJson(),
    'to': ?to?.toTfJson(),
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
    'from': ?from?.toTfJson(),
    'from_script': ?fromScript?.toTfJson(),
    'to': ?to?.toTfJson(),
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
    'from': ?from?.toTfJson(),
    'from_script': ?fromScript?.toTfJson(),
    'to': ?to?.toTfJson(),
  };
}

/// Typed helper for the `observability` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptObservability {
  const WorkersScriptObservability({
    required this.enabled,
    this.headSamplingRate,
    this.issues,
    this.logs,
    this.traces,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? headSamplingRate;

  final WorkersScriptObservabilityIssues? issues;

  final WorkersScriptObservabilityLogs? logs;

  final WorkersScriptObservabilityTraces? traces;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'head_sampling_rate': ?headSamplingRate?.toTfJson(),
    'issues': ?issues?.encode(),
    'logs': ?logs?.encode(),
    'traces': ?traces?.encode(),
  };
}

/// Typed helper for the `observability.issues` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class WorkersScriptObservabilityIssues {
  const WorkersScriptObservabilityIssues({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'destinations': ?destinations?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'head_sampling_rate': ?headSamplingRate?.toTfJson(),
    'invocation_logs': invocationLogs.toTfJson(),
    'persist': ?persist?.toTfJson(),
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

  final TfArg<WorkersScriptObservabilityTracesPropagationPolicy>?
  propagationPolicy;

  Map<String, Object?> encode() => {
    'destinations': ?destinations?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'head_sampling_rate': ?headSamplingRate?.toTfJson(),
    'persist': ?persist?.toTfJson(),
    'propagation_policy': ?propagationPolicy?.toTfJson(),
  };
}

/// `propagation_policy` — derived from the provider schema description.
enum WorkersScriptObservabilityTracesPropagationPolicy
    implements TerraformEnum {
  authenticated('authenticated'),
  accept('accept');

  const WorkersScriptObservabilityTracesPropagationPolicy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<WorkersScriptPlacementMode>? mode;

  Map<String, Object?> encode() => {'mode': ?mode?.toTfJson()};
}

/// `mode` — derived from the provider schema description.
enum WorkersScriptPlacementMode implements TerraformEnum {
  smart('smart'),
  targeted('targeted');

  const WorkersScriptPlacementMode(this.terraformValue);
  @override
  final String terraformValue;
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
    'environment': ?environment?.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? bodyPart,
    TfArg<String>? compatibilityDate,
    TfArg<List<String>>? compatibilityFlags,
    WorkersScriptContent? content,
    TfArg<String>? contentSha256,
    TfArg<WorkersScriptContentType>? contentType,
    TfArg<bool>? force,
    TfArg<bool>? keepAssets,
    TfArg<List<String>>? keepBindings,
    TfArg<bool>? logpush,
    TfArg<String>? mainModule,
    required TfArg<String> scriptName,
    TfArg<WorkersScriptUsageModel>? usageModel,
    WorkersScriptAnnotations? annotations,
    WorkersScriptAssets? assets,
    List<WorkersScriptBindings>? bindings,
    WorkersScriptCacheOptions? cacheOptions,
    Map<String, WorkersScriptExports>? exports,
    Map<String, WorkersScriptFiles>? files,
    WorkersScriptLimits? limits,
    WorkersScriptMigrations? migrations,
    WorkersScriptObservability? observability,
    List<WorkersScriptPackageDependencies>? packageDependencies,
    WorkersScriptPlacement? placement,
    List<WorkersScriptTailConsumers>? tailConsumers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'body_part': ?bodyPart,
           'compatibility_date': ?compatibilityDate,
           'compatibility_flags': ?compatibilityFlags,
           ...?content?.argMap,
           'content_sha256': ?contentSha256,
           'content_type': ?contentType,
           'force': ?force,
           'keep_assets': ?keepAssets,
           'keep_bindings': ?keepBindings,
           'logpush': ?logpush,
           'main_module': ?mainModule,
           'script_name': scriptName,
           'usage_model': ?usageModel,
           if (annotations != null)
             'annotations': TfArg.literal(annotations.encode()),
           if (assets != null) 'assets': TfArg.literal(assets.encode()),
           if (bindings != null)
             'bindings': TfArg.literal([for (final e in bindings) e.encode()]),
           if (cacheOptions != null)
             'cache_options': TfArg.literal(cacheOptions.encode()),
           if (exports != null)
             'exports': TfArg.literal({
               for (final e in exports.entries) e.key: e.value.encode(),
             }),
           if (files != null)
             'files': TfArg.literal({
               for (final e in files.entries) e.key: e.value.encode(),
             }),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorkersScript>`.
  RefTo<CloudflareWorkersScript> get ref => RefTo.of(this);

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
