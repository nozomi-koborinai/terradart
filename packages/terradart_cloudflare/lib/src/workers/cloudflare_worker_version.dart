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
extension type const WorkerVersionInclude._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionInclude.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionInclude.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionInclude.arg(TfArg<String> arg) : this._(arg);

  static const modules = WorkerVersionInclude._(TfArgLiteral('modules'));

  static const List<WorkerVersionInclude> values = [modules];
}

/// Worker Version Usage enum for `usage_model`.
extension type const WorkerVersionUsageModel._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionUsageModel.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionUsageModel.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionUsageModel.arg(TfArg<String> arg) : this._(arg);

  static const standard = WorkerVersionUsageModel._(TfArgLiteral('standard'));
  static const bundled = WorkerVersionUsageModel._(TfArgLiteral('bundled'));
  static const unbound = WorkerVersionUsageModel._(TfArgLiteral('unbound'));

  static const List<WorkerVersionUsageModel> values = [
    standard,
    bundled,
    unbound,
  ];
}

/// Typed helper for the `annotations` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionAnnotations {
  const WorkerVersionAnnotations({this.workersMessage, this.workersTag});

  final TfArg<String>? workersMessage;

  final TfArg<String>? workersTag;

  @internal
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

  @internal
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
  const factory WorkerVersionAssetsSource.jwt(Sensitive<String> jwt) =
      WorkerVersionAssetsSourceJwt;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WorkerVersionAssetsSource.directory] choice: sets `directory`.
final class WorkerVersionAssetsSourceDirectory
    extends WorkerVersionAssetsSource {
  const WorkerVersionAssetsSourceDirectory(this.directory);

  final TfArg<String> directory;

  @internal
  @override
  String get blockKey => 'directory';

  @internal
  @override
  Map<String, Object?> encode() => {'directory': directory.toTfJson()};
}

/// The [WorkerVersionAssetsSource.jwt] choice: sets `jwt`.
final class WorkerVersionAssetsSourceJwt extends WorkerVersionAssetsSource {
  const WorkerVersionAssetsSourceJwt(this.jwt);

  final Sensitive<String> jwt;

  @internal
  @override
  String get blockKey => 'jwt';

  @internal
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

  final WorkerVersionHtmlHandling? htmlHandling;

  final WorkerVersionNotFoundHandling? notFoundHandling;

  final TfArg<Object?>? runWorkerFirst;

  @internal
  Map<String, Object?> encode() => {
    'base_path': ?basePath?.toTfJson(),
    'html_handling': ?htmlHandling?.toTfJson(),
    'not_found_handling': ?notFoundHandling?.toTfJson(),
    'run_worker_first': ?runWorkerFirst?.toTfJson(),
  };
}

/// `html_handling` — derived from the provider schema description.
extension type const WorkerVersionHtmlHandling._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionHtmlHandling.variable(String name)
    : this._(TfArg.variable(name));
  WorkerVersionHtmlHandling.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionHtmlHandling.arg(TfArg<String> arg) : this._(arg);

  static const autoTrailingSlash = WorkerVersionHtmlHandling._(
    TfArgLiteral('auto-trailing-slash'),
  );
  static const forceTrailingSlash = WorkerVersionHtmlHandling._(
    TfArgLiteral('force-trailing-slash'),
  );
  static const dropTrailingSlash = WorkerVersionHtmlHandling._(
    TfArgLiteral('drop-trailing-slash'),
  );
  static const none = WorkerVersionHtmlHandling._(TfArgLiteral('none'));

  static const List<WorkerVersionHtmlHandling> values = [
    autoTrailingSlash,
    forceTrailingSlash,
    dropTrailingSlash,
    none,
  ];
}

/// `not_found_handling` — derived from the provider schema description.
extension type const WorkerVersionNotFoundHandling._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionNotFoundHandling.variable(String name)
    : this._(TfArg.variable(name));
  WorkerVersionNotFoundHandling.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionNotFoundHandling.arg(TfArg<String> arg) : this._(arg);

  static const none = WorkerVersionNotFoundHandling._(TfArgLiteral('none'));
  static const v404Page = WorkerVersionNotFoundHandling._(
    TfArgLiteral('404-page'),
  );
  static const singlePageApplication = WorkerVersionNotFoundHandling._(
    TfArgLiteral('single-page-application'),
  );

  static const List<WorkerVersionNotFoundHandling> values = [
    none,
    v404Page,
    singlePageApplication,
  ];
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

  final WorkerVersionFormat? format;

  final TfArg<String>? id;

  final WorkerVersionIdentity? identity;

  final TfArg<String>? indexName;

  final TfArg<String>? instanceName;

  final TfArg<String>? json;

  final WorkerVersionJurisdiction? jurisdiction;

  final Sensitive<String>? keyBase64;

  final Sensitive<String>? keyJwk;

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

  final Sensitive<String>? text;

  final TfArg<String>? tunnelId;

  final WorkerVersionBindingsType type;

  final TfArg<List<String>>? usages;

  final TfArg<String>? versionId;

  final TfArg<String>? workflowName;

  final WorkerVersionOutbound? outbound;

  final WorkerVersionSimple? simple;

  @internal
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
extension type const WorkerVersionFormat._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionFormat.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionFormat.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionFormat.arg(TfArg<String> arg) : this._(arg);

  static const raw = WorkerVersionFormat._(TfArgLiteral('raw'));
  static const pkcs8 = WorkerVersionFormat._(TfArgLiteral('pkcs8'));
  static const spki = WorkerVersionFormat._(TfArgLiteral('spki'));
  static const jwk = WorkerVersionFormat._(TfArgLiteral('jwk'));

  static const List<WorkerVersionFormat> values = [raw, pkcs8, spki, jwk];
}

/// `identity` — derived from the provider schema description.
extension type const WorkerVersionIdentity._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionIdentity.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionIdentity.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionIdentity.arg(TfArg<String> arg) : this._(arg);

  static const runtimeEmailAlpha = WorkerVersionIdentity._(
    TfArgLiteral('runtime-email-alpha'),
  );

  static const List<WorkerVersionIdentity> values = [runtimeEmailAlpha];
}

/// `jurisdiction` — derived from the provider schema description.
extension type const WorkerVersionJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  WorkerVersionJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const eu = WorkerVersionJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = WorkerVersionJurisdiction._(TfArgLiteral('fedramp'));
  static const fedrampHigh = WorkerVersionJurisdiction._(
    TfArgLiteral('fedramp-high'),
  );
  static const us = WorkerVersionJurisdiction._(TfArgLiteral('us'));

  static const List<WorkerVersionJurisdiction> values = [
    eu,
    fedramp,
    fedrampHigh,
    us,
  ];
}

/// `type` — derived from the provider schema description.
extension type const WorkerVersionBindingsType._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionBindingsType.variable(String name)
    : this._(TfArg.variable(name));
  WorkerVersionBindingsType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionBindingsType.arg(TfArg<String> arg) : this._(arg);

  static const ai = WorkerVersionBindingsType._(TfArgLiteral('ai'));
  static const aiSearch = WorkerVersionBindingsType._(
    TfArgLiteral('ai_search'),
  );
  static const aiSearchNamespace = WorkerVersionBindingsType._(
    TfArgLiteral('ai_search_namespace'),
  );
  static const messaging = WorkerVersionBindingsType._(
    TfArgLiteral('messaging'),
  );
  static const analyticsEngine = WorkerVersionBindingsType._(
    TfArgLiteral('analytics_engine'),
  );
  static const assets = WorkerVersionBindingsType._(TfArgLiteral('assets'));
  static const browser = WorkerVersionBindingsType._(TfArgLiteral('browser'));
  static const d1 = WorkerVersionBindingsType._(TfArgLiteral('d1'));
  static const dataBlob = WorkerVersionBindingsType._(
    TfArgLiteral('data_blob'),
  );
  static const dispatchNamespace = WorkerVersionBindingsType._(
    TfArgLiteral('dispatch_namespace'),
  );
  static const durableObjectNamespace = WorkerVersionBindingsType._(
    TfArgLiteral('durable_object_namespace'),
  );
  static const hyperdrive = WorkerVersionBindingsType._(
    TfArgLiteral('hyperdrive'),
  );
  static const inherit = WorkerVersionBindingsType._(TfArgLiteral('inherit'));
  static const images = WorkerVersionBindingsType._(TfArgLiteral('images'));
  static const json = WorkerVersionBindingsType._(TfArgLiteral('json'));
  static const kvNamespace = WorkerVersionBindingsType._(
    TfArgLiteral('kv_namespace'),
  );
  static const media = WorkerVersionBindingsType._(TfArgLiteral('media'));
  static const mtlsCertificate = WorkerVersionBindingsType._(
    TfArgLiteral('mtls_certificate'),
  );
  static const plainText = WorkerVersionBindingsType._(
    TfArgLiteral('plain_text'),
  );
  static const pipelines = WorkerVersionBindingsType._(
    TfArgLiteral('pipelines'),
  );
  static const k2 = WorkerVersionBindingsType._(TfArgLiteral('k2'));
  static const queue = WorkerVersionBindingsType._(TfArgLiteral('queue'));
  static const ratelimit = WorkerVersionBindingsType._(
    TfArgLiteral('ratelimit'),
  );
  static const r2Bucket = WorkerVersionBindingsType._(
    TfArgLiteral('r2_bucket'),
  );
  static const secretText = WorkerVersionBindingsType._(
    TfArgLiteral('secret_text'),
  );
  static const sendEmail = WorkerVersionBindingsType._(
    TfArgLiteral('send_email'),
  );
  static const service = WorkerVersionBindingsType._(TfArgLiteral('service'));
  static const textBlob = WorkerVersionBindingsType._(
    TfArgLiteral('text_blob'),
  );
  static const vectorize = WorkerVersionBindingsType._(
    TfArgLiteral('vectorize'),
  );
  static const versionMetadata = WorkerVersionBindingsType._(
    TfArgLiteral('version_metadata'),
  );
  static const secretsStoreSecret = WorkerVersionBindingsType._(
    TfArgLiteral('secrets_store_secret'),
  );
  static const flagship = WorkerVersionBindingsType._(TfArgLiteral('flagship'));
  static const secretKey = WorkerVersionBindingsType._(
    TfArgLiteral('secret_key'),
  );
  static const workflow = WorkerVersionBindingsType._(TfArgLiteral('workflow'));
  static const wasmModule = WorkerVersionBindingsType._(
    TfArgLiteral('wasm_module'),
  );
  static const vpcService = WorkerVersionBindingsType._(
    TfArgLiteral('vpc_service'),
  );
  static const vpcNetwork = WorkerVersionBindingsType._(
    TfArgLiteral('vpc_network'),
  );

  static const List<WorkerVersionBindingsType> values = [
    ai,
    aiSearch,
    aiSearchNamespace,
    messaging,
    analyticsEngine,
    assets,
    browser,
    d1,
    dataBlob,
    dispatchNamespace,
    durableObjectNamespace,
    hyperdrive,
    inherit,
    images,
    json,
    kvNamespace,
    media,
    mtlsCertificate,
    plainText,
    pipelines,
    k2,
    queue,
    ratelimit,
    r2Bucket,
    secretText,
    sendEmail,
    service,
    textBlob,
    vectorize,
    versionMetadata,
    secretsStoreSecret,
    flagship,
    secretKey,
    workflow,
    wasmModule,
    vpcService,
    vpcNetwork,
  ];
}

/// Typed helper for the `bindings.outbound` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionOutbound {
  const WorkerVersionOutbound({this.params, this.worker});

  final List<WorkerVersionParams>? params;

  final WorkerVersionWorker? worker;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final WorkerVersionState? state;

  final WorkerVersionStorage? storage;

  final TfArg<String>? transferFrom;

  final TfArg<String>? transferredTo;

  final WorkerVersionExportsType type;

  final WorkerVersionCache? cache;

  @internal
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
extension type const WorkerVersionState._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionState.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionState.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionState.arg(TfArg<String> arg) : this._(arg);

  static const created = WorkerVersionState._(TfArgLiteral('created'));
  static const deleted = WorkerVersionState._(TfArgLiteral('deleted'));
  static const renamed = WorkerVersionState._(TfArgLiteral('renamed'));
  static const transferred = WorkerVersionState._(TfArgLiteral('transferred'));
  static const expectingTransfer = WorkerVersionState._(
    TfArgLiteral('expecting-transfer'),
  );

  static const List<WorkerVersionState> values = [
    created,
    deleted,
    renamed,
    transferred,
    expectingTransfer,
  ];
}

/// `storage` — derived from the provider schema description.
extension type const WorkerVersionStorage._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionStorage.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionStorage.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionStorage.arg(TfArg<String> arg) : this._(arg);

  static const sqlite = WorkerVersionStorage._(TfArgLiteral('sqlite'));
  static const legacyKv = WorkerVersionStorage._(TfArgLiteral('legacy-kv'));

  static const List<WorkerVersionStorage> values = [sqlite, legacyKv];
}

/// `type` — derived from the provider schema description.
extension type const WorkerVersionExportsType._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionExportsType.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionExportsType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionExportsType.arg(TfArg<String> arg) : this._(arg);

  static const worker = WorkerVersionExportsType._(TfArgLiteral('worker'));
  static const durableObject = WorkerVersionExportsType._(
    TfArgLiteral('durable-object'),
  );

  static const List<WorkerVersionExportsType> values = [worker, durableObject];
}

/// Typed helper for the `exports.cache` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionCache {
  const WorkerVersionCache({required this.enabled});

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `limits` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionLimits {
  const WorkerVersionLimits({this.cpuMs, this.subrequests});

  final TfArg<num>? cpuMs;

  final TfArg<num>? subrequests;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WorkerVersionContent.contentBase64] choice: sets `content_base64`.
final class WorkerVersionContentBase64 extends WorkerVersionContent {
  const WorkerVersionContentBase64(this.contentBase64);

  final TfArg<String> contentBase64;

  @internal
  @override
  String get blockKey => 'content_base64';

  @internal
  @override
  Map<String, Object?> encode() => {'content_base64': contentBase64.toTfJson()};
}

/// The [WorkerVersionContent.contentFile] choice: sets `content_file`.
final class WorkerVersionContentFile extends WorkerVersionContent {
  const WorkerVersionContentFile(this.contentFile);

  final TfArg<String> contentFile;

  @internal
  @override
  String get blockKey => 'content_file';

  @internal
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

  @internal
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

  final WorkerVersionMode? mode;

  final TfArg<String>? region;

  final List<WorkerVersionTarget>? target;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'region': ?region?.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
extension type const WorkerVersionMode._(TfArg<String> _)
    implements TfArg<String> {
  WorkerVersionMode.variable(String name) : this._(TfArg.variable(name));
  WorkerVersionMode.expression(String template)
    : this._(TfArg.expression(template));
  const WorkerVersionMode.arg(TfArg<String> arg) : this._(arg);

  static const smart = WorkerVersionMode._(TfArgLiteral('smart'));
  static const targeted = WorkerVersionMode._(TfArgLiteral('targeted'));

  static const List<WorkerVersionMode> values = [smart, targeted];
}

/// Typed helper for the `placement.target` block of
/// `cloudflare_worker_version` (derived from provider schema).
@immutable
final class WorkerVersionTarget {
  const WorkerVersionTarget({this.host, this.hostname, this.region});

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<String>? region;

  @internal
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

  CloudflareWorkerVersion(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? compatibilityDate,
    TfArg<List<String>>? compatibilityFlags,
    TfArg<bool>? deploy,
    WorkerVersionInclude? include,
    TfArg<String>? mainModule,
    WorkerVersionUsageModel? usageModel,
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
