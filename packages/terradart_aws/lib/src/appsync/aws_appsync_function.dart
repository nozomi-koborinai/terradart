// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_function`.
const Set<String> _awsAppsyncFunctionSensitive = <String>{};

/// Appsync Function Function enum for `function_version`.
enum AppsyncFunctionFunctionVersion implements TerraformEnum {
  v2018x05x29('2018-05-29');

  const AppsyncFunctionFunctionVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `runtime` block of
/// `aws_appsync_function` (derived from provider schema).
@immutable
final class AppsyncFunctionRuntime {
  const AppsyncFunctionRuntime({
    required this.name,
    required this.runtimeVersion,
  });

  final TfArg<AppsyncFunctionRuntimeName> name;

  final TfArg<String> runtimeVersion;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum AppsyncFunctionRuntimeName implements TerraformEnum {
  appsyncJs('APPSYNC_JS');

  const AppsyncFunctionRuntimeName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sync_config` block of
/// `aws_appsync_function` (derived from provider schema).
@immutable
final class AppsyncFunctionSyncConfig {
  const AppsyncFunctionSyncConfig({
    this.conflictDetection,
    this.conflictHandler,
    this.lambdaConflictHandlerConfig,
  });

  final TfArg<AppsyncFunctionSyncConfigConflictDetection>? conflictDetection;

  final TfArg<AppsyncFunctionSyncConfigConflictHandler>? conflictHandler;

  final AppsyncFunctionSyncConfigLambdaConflictHandlerConfig?
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
enum AppsyncFunctionSyncConfigConflictDetection implements TerraformEnum {
  version('VERSION'),
  none('NONE');

  const AppsyncFunctionSyncConfigConflictDetection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `conflict_handler` — derived from the provider schema description.
enum AppsyncFunctionSyncConfigConflictHandler implements TerraformEnum {
  optimisticConcurrency('OPTIMISTIC_CONCURRENCY'),
  lambda('LAMBDA'),
  automerge('AUTOMERGE'),
  none('NONE');

  const AppsyncFunctionSyncConfigConflictHandler(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `sync_config.lambda_conflict_handler_config` block of
/// `aws_appsync_function` (derived from provider schema).
@immutable
final class AppsyncFunctionSyncConfigLambdaConflictHandlerConfig {
  const AppsyncFunctionSyncConfigLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  final TfArg<String>? lambdaConflictHandlerArn;

  Map<String, Object?> encode() => {
    if (lambdaConflictHandlerArn != null)
      'lambda_conflict_handler_arn': lambdaConflictHandlerArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_function`.
final class AwsAppsyncFunction extends Resource {
  static const String tfType = 'aws_appsync_function';

  AwsAppsyncFunction({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? code,
    required TfArg<String> dataSource,
    TfArg<String>? description,
    TfArg<AppsyncFunctionFunctionVersion>? functionVersion,
    TfArg<num>? maxBatchSize,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? requestMappingTemplate,
    TfArg<String>? responseMappingTemplate,
    AppsyncFunctionRuntime? runtime,
    AppsyncFunctionSyncConfig? syncConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           if (code != null) 'code': code,
           'data_source': dataSource,
           if (description != null) 'description': description,
           if (functionVersion != null) 'function_version': functionVersion,
           if (maxBatchSize != null) 'max_batch_size': maxBatchSize,
           'name': name,
           if (region != null) 'region': region,
           if (requestMappingTemplate != null)
             'request_mapping_template': requestMappingTemplate,
           if (responseMappingTemplate != null)
             'response_mapping_template': responseMappingTemplate,
           if (runtime != null) 'runtime': TfArg.literal(runtime.encode()),
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncFunctionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `function_id` attribute.
  TfRef<String> get functionId => TfRef.attribute<String>(this, 'function_id');
}
