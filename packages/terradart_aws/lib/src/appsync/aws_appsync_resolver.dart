// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_resolver`.
const Set<String> _awsAppsyncResolverSensitive = <String>{};

/// Appsync Resolver enum for `kind`.
enum AppsyncResolverKind implements TerraformEnum {
  unit('UNIT'),
  pipeline('PIPELINE');

  const AppsyncResolverKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `data_source`, `pipeline_config` on `aws_appsync_resolver`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dataSource(...)`.
sealed class AppsyncResolverDataSourceOrPipelineConfig {
  const AppsyncResolverDataSourceOrPipelineConfig();

  /// Sets `data_source`.
  const factory AppsyncResolverDataSourceOrPipelineConfig.dataSource(
    TfArg<String> dataSource,
  ) = AppsyncResolverDataSourceOrPipelineConfigDataSource;

  /// Sets `pipeline_config`.
  const factory AppsyncResolverDataSourceOrPipelineConfig.pipelineConfig(
    AppsyncResolverPipelineConfig pipelineConfig,
  ) = AppsyncResolverDataSourceOrPipelineConfigPipelineConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AppsyncResolverDataSourceOrPipelineConfig.dataSource] choice: sets `data_source`.
final class AppsyncResolverDataSourceOrPipelineConfigDataSource
    extends AppsyncResolverDataSourceOrPipelineConfig {
  const AppsyncResolverDataSourceOrPipelineConfigDataSource(this.dataSource);

  final TfArg<String> dataSource;

  @override
  String get blockKey => 'data_source';

  @override
  Map<String, Object?> encode() => {'data_source': dataSource.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'data_source': dataSource};
}

/// The [AppsyncResolverDataSourceOrPipelineConfig.pipelineConfig] choice: sets `pipeline_config`.
final class AppsyncResolverDataSourceOrPipelineConfigPipelineConfig
    extends AppsyncResolverDataSourceOrPipelineConfig {
  const AppsyncResolverDataSourceOrPipelineConfigPipelineConfig(
    this.pipelineConfig,
  );

  final AppsyncResolverPipelineConfig pipelineConfig;

  @override
  String get blockKey => 'pipeline_config';

  @override
  Map<String, Object?> encode() => {'pipeline_config': pipelineConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pipeline_config': TfArg.literal(pipelineConfig.encode()),
  };
}

/// Typed helper for the `caching_config` block of
/// `aws_appsync_resolver` (derived from provider schema).
@immutable
final class AppsyncResolverCachingConfig {
  const AppsyncResolverCachingConfig({this.cachingKeys, this.ttl});

  final TfArg<List<Object?>>? cachingKeys;

  final TfArg<num>? ttl;

  Map<String, Object?> encode() => {
    if (cachingKeys != null) 'caching_keys': cachingKeys!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
  };
}

/// Typed helper for the `pipeline_config` block of
/// `aws_appsync_resolver` (derived from provider schema).
@immutable
final class AppsyncResolverPipelineConfig {
  const AppsyncResolverPipelineConfig({this.functions});

  final TfArg<List<Object?>>? functions;

  Map<String, Object?> encode() => {
    if (functions != null) 'functions': functions!.toTfJson(),
  };
}

/// Typed helper for the `runtime` block of
/// `aws_appsync_resolver` (derived from provider schema).
@immutable
final class AppsyncResolverRuntime {
  const AppsyncResolverRuntime({
    required this.name,
    required this.runtimeVersion,
  });

  final TfArg<AppsyncResolverRuntimeName> name;

  final TfArg<String> runtimeVersion;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum AppsyncResolverRuntimeName implements TerraformEnum {
  appsyncJs('APPSYNC_JS');

  const AppsyncResolverRuntimeName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sync_config` block of
/// `aws_appsync_resolver` (derived from provider schema).
@immutable
final class AppsyncResolverSyncConfig {
  const AppsyncResolverSyncConfig({
    this.conflictDetection,
    this.conflictHandler,
    this.lambdaConflictHandlerConfig,
  });

  final TfArg<AppsyncResolverSyncConfigConflictDetection>? conflictDetection;

  final TfArg<AppsyncResolverSyncConfigConflictHandler>? conflictHandler;

  final AppsyncResolverSyncConfigLambdaConflictHandlerConfig?
  lambdaConflictHandlerConfig;

  Map<String, Object?> encode() => {
    if (conflictDetection != null)
      'conflict_detection': conflictDetection!.toTfJson(),
    if (conflictHandler != null)
      'conflict_handler': conflictHandler!.toTfJson(),
    if (lambdaConflictHandlerConfig != null)
      'lambda_conflict_handler_config': lambdaConflictHandlerConfig!.encode(),
  };
}

/// `conflict_detection` — derived from the provider schema description.
enum AppsyncResolverSyncConfigConflictDetection implements TerraformEnum {
  version('VERSION'),
  none('NONE');

  const AppsyncResolverSyncConfigConflictDetection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `conflict_handler` — derived from the provider schema description.
enum AppsyncResolverSyncConfigConflictHandler implements TerraformEnum {
  optimisticConcurrency('OPTIMISTIC_CONCURRENCY'),
  lambda('LAMBDA'),
  automerge('AUTOMERGE'),
  none('NONE');

  const AppsyncResolverSyncConfigConflictHandler(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sync_config.lambda_conflict_handler_config` block of
/// `aws_appsync_resolver` (derived from provider schema).
@immutable
final class AppsyncResolverSyncConfigLambdaConflictHandlerConfig {
  const AppsyncResolverSyncConfigLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  final TfArg<String>? lambdaConflictHandlerArn;

  Map<String, Object?> encode() => {
    if (lambdaConflictHandlerArn != null)
      'lambda_conflict_handler_arn': lambdaConflictHandlerArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_resolver`.
final class AwsAppsyncResolver extends Resource {
  static const String tfType = 'aws_appsync_resolver';

  AwsAppsyncResolver({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? code,
    AppsyncResolverDataSourceOrPipelineConfig? dataSourceOrPipelineConfig,
    required TfArg<String> field,
    TfArg<AppsyncResolverKind>? kind,
    TfArg<num>? maxBatchSize,
    TfArg<String>? region,
    TfArg<String>? requestTemplate,
    TfArg<String>? responseTemplate,
    required TfArg<String> type,
    AppsyncResolverCachingConfig? cachingConfig,
    AppsyncResolverRuntime? runtime,
    AppsyncResolverSyncConfig? syncConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (code != null) 'code': code,
           ...?dataSourceOrPipelineConfig?.argMap,
           'field': field,
           if (kind != null) 'kind': kind,
           if (maxBatchSize != null) 'max_batch_size': maxBatchSize,
           if (region != null) 'region': region,
           if (requestTemplate != null) 'request_template': requestTemplate,
           if (responseTemplate != null) 'response_template': responseTemplate,
           'type': type,
           if (cachingConfig != null)
             'caching_config': TfArg.literal(cachingConfig.encode()),
           if (runtime != null) 'runtime': TfArg.literal(runtime.encode()),
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncResolverSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncResolver>`.
  RefTo<AwsAppsyncResolver> get ref => RefTo.of(this);

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
