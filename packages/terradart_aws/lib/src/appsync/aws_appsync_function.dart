// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_function`.
const Set<String> _awsAppsyncFunctionSensitive = <String>{};

/// Appsync Function enum for `function_version`.
extension type const AppsyncFunctionVersion._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncFunctionVersion.variable(String name) : this._(TfArg.variable(name));
  AppsyncFunctionVersion.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncFunctionVersion.arg(TfArg<String> arg) : this._(arg);

  static const v2018x05x29 = AppsyncFunctionVersion._(
    TfArgLiteral('2018-05-29'),
  );

  static const List<AppsyncFunctionVersion> values = [v2018x05x29];
}

/// Typed helper for the `runtime` block of
/// `aws_appsync_function` (derived from provider schema).
@immutable
final class AppsyncFunctionRuntime {
  const AppsyncFunctionRuntime({
    required this.name,
    required this.runtimeVersion,
  });

  final AppsyncFunctionRuntimeName name;

  final TfArg<String> runtimeVersion;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'runtime_version': runtimeVersion.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const AppsyncFunctionRuntimeName._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncFunctionRuntimeName.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncFunctionRuntimeName.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncFunctionRuntimeName.arg(TfArg<String> arg) : this._(arg);

  static const appsyncJs = AppsyncFunctionRuntimeName._(
    TfArgLiteral('APPSYNC_JS'),
  );

  static const List<AppsyncFunctionRuntimeName> values = [appsyncJs];
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

  final AppsyncFunctionConflictDetection? conflictDetection;

  final AppsyncFunctionConflictHandler? conflictHandler;

  final AppsyncFunctionLambdaConflictHandlerConfig? lambdaConflictHandlerConfig;

  @internal
  Map<String, Object?> encode() => {
    'conflict_detection': ?conflictDetection?.toTfJson(),
    'conflict_handler': ?conflictHandler?.toTfJson(),
    'lambda_conflict_handler_config': ?lambdaConflictHandlerConfig?.encode(),
  };
}

/// `conflict_detection` — derived from the provider schema description.
extension type const AppsyncFunctionConflictDetection._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncFunctionConflictDetection.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncFunctionConflictDetection.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncFunctionConflictDetection.arg(TfArg<String> arg) : this._(arg);

  static const version = AppsyncFunctionConflictDetection._(
    TfArgLiteral('VERSION'),
  );
  static const none = AppsyncFunctionConflictDetection._(TfArgLiteral('NONE'));

  static const List<AppsyncFunctionConflictDetection> values = [version, none];
}

/// `conflict_handler` — derived from the provider schema description.
extension type const AppsyncFunctionConflictHandler._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncFunctionConflictHandler.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncFunctionConflictHandler.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncFunctionConflictHandler.arg(TfArg<String> arg) : this._(arg);

  static const optimisticConcurrency = AppsyncFunctionConflictHandler._(
    TfArgLiteral('OPTIMISTIC_CONCURRENCY'),
  );
  static const lambda = AppsyncFunctionConflictHandler._(
    TfArgLiteral('LAMBDA'),
  );
  static const automerge = AppsyncFunctionConflictHandler._(
    TfArgLiteral('AUTOMERGE'),
  );
  static const none = AppsyncFunctionConflictHandler._(TfArgLiteral('NONE'));

  static const List<AppsyncFunctionConflictHandler> values = [
    optimisticConcurrency,
    lambda,
    automerge,
    none,
  ];
}

/// Typed helper for the `sync_config.lambda_conflict_handler_config` block of
/// `aws_appsync_function` (derived from provider schema).
@immutable
final class AppsyncFunctionLambdaConflictHandlerConfig {
  const AppsyncFunctionLambdaConflictHandlerConfig({
    this.lambdaConflictHandlerArn,
  });

  final TfArg<String>? lambdaConflictHandlerArn;

  @internal
  Map<String, Object?> encode() => {
    'lambda_conflict_handler_arn': ?lambdaConflictHandlerArn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_function`.
final class AwsAppsyncFunction extends Resource {
  static const String tfType = 'aws_appsync_function';

  AwsAppsyncFunction(
    super.localName, {
    required TfArg<String> apiId,
    TfArg<String>? code,
    required TfArg<String> dataSource,
    TfArg<String>? description,
    AppsyncFunctionVersion? functionVersion,
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
           'code': ?code,
           'data_source': dataSource,
           'description': ?description,
           'function_version': ?functionVersion,
           'max_batch_size': ?maxBatchSize,
           'name': name,
           'region': ?region,
           'request_mapping_template': ?requestMappingTemplate,
           'response_mapping_template': ?responseMappingTemplate,
           if (runtime != null) 'runtime': TfArg.literal(runtime.encode()),
           if (syncConfig != null)
             'sync_config': TfArg.literal(syncConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncFunctionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncFunction>`.
  RefTo<AwsAppsyncFunction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `function_id` attribute.
  TfRef<String> get functionId => TfRef.attribute<String>(this, 'function_id');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `code` attribute.
  TfRef<String> get code => TfRef.attribute<String>(this, 'code');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `function_version` attribute.
  TfRef<String> get functionVersion =>
      TfRef.attribute<String>(this, 'function_version');

  /// Reference to `max_batch_size` attribute.
  TfRef<num> get maxBatchSize => TfRef.attribute<num>(this, 'max_batch_size');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_mapping_template` attribute.
  TfRef<String> get requestMappingTemplate =>
      TfRef.attribute<String>(this, 'request_mapping_template');

  /// Reference to `response_mapping_template` attribute.
  TfRef<String> get responseMappingTemplate =>
      TfRef.attribute<String>(this, 'response_mapping_template');
}
