// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_resolver`.
const Set<String> _awsAppsyncResolverSensitive = <String>{};

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

  final TfArg<String> name;

  final TfArg<String> runtimeVersion;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
  };
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

  final TfArg<String>? conflictDetection;

  final TfArg<String>? conflictHandler;

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
    TfArg<String>? dataSource,
    required TfArg<String> field,
    TfArg<String>? kind,
    TfArg<num>? maxBatchSize,
    TfArg<String>? region,
    TfArg<String>? requestTemplate,
    TfArg<String>? responseTemplate,
    required TfArg<String> type,
    AppsyncResolverCachingConfig? cachingConfig,
    AppsyncResolverPipelineConfig? pipelineConfig,
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
           if (dataSource != null) 'data_source': dataSource,
           'field': field,
           if (kind != null) 'kind': kind,
           if (maxBatchSize != null) 'max_batch_size': maxBatchSize,
           if (region != null) 'region': region,
           if (requestTemplate != null) 'request_template': requestTemplate,
           if (responseTemplate != null) 'response_template': responseTemplate,
           'type': type,
           if (cachingConfig != null)
             'caching_config': TfArg.literal(cachingConfig.encode()),
           if (pipelineConfig != null)
             'pipeline_config': TfArg.literal(pipelineConfig.encode()),
           if (runtime != null) 'runtime': TfArg.literal(runtime.encode()),
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncResolverSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
