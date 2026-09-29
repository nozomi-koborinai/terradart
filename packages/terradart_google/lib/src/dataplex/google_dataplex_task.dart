// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataplex_task`.
const Set<String> _googleDataplexTaskSensitive = <String>{};

/// Spark or Notebook workload block. Exactly one of the provider blocks.
sealed class DataplexTaskWorkload {
  const DataplexTaskWorkload();

  /// `spark` — Dataproc Serverless Spark, Python, or SQL workload.
  const factory DataplexTaskWorkload.spark({
    TfArg<String>? pythonScriptFile,
    TfArg<String>? mainJarFileUri,
    TfArg<String>? mainClass,
    TfArg<String>? sqlScript,
    TfArg<String>? sqlScriptFile,
    TfArg<List<String>>? fileUris,
    TfArg<List<String>>? archiveUris,
    TfArg<Map<String, Object?>>? infrastructureSpec,
  }) = DataplexTaskSparkWorkload;

  /// `notebook` — Vertex AI Workbench or Colab notebook execution.
  const factory DataplexTaskWorkload.notebook({
    required TfArg<String> notebook,
    TfArg<List<String>>? fileUris,
    TfArg<List<String>>? archiveUris,
    TfArg<Map<String, Object?>>? infrastructureSpec,
  }) = DataplexTaskNotebookWorkload;

  String get blockKey;

  Map<String, Object?> encode();
}

/// `spark` — Dataproc Serverless Spark, Python, or SQL workload.
@immutable
final class DataplexTaskSparkWorkload extends DataplexTaskWorkload {
  const DataplexTaskSparkWorkload({
    this.pythonScriptFile,
    this.mainJarFileUri,
    this.mainClass,
    this.sqlScript,
    this.sqlScriptFile,
    this.fileUris,
    this.archiveUris,
    this.infrastructureSpec,
  });

  final TfArg<String>? pythonScriptFile;
  final TfArg<String>? mainJarFileUri;
  final TfArg<String>? mainClass;
  final TfArg<String>? sqlScript;
  final TfArg<String>? sqlScriptFile;
  final TfArg<List<String>>? fileUris;
  final TfArg<List<String>>? archiveUris;
  final TfArg<Map<String, Object?>>? infrastructureSpec;

  @override
  String get blockKey => 'spark';

  @override
  Map<String, Object?> encode() => {
    if (pythonScriptFile != null)
      'python_script_file': pythonScriptFile!.toTfJson(),
    if (mainJarFileUri != null) 'main_jar_file_uri': mainJarFileUri!.toTfJson(),
    if (mainClass != null) 'main_class': mainClass!.toTfJson(),
    if (sqlScript != null) 'sql_script': sqlScript!.toTfJson(),
    if (sqlScriptFile != null) 'sql_script_file': sqlScriptFile!.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (infrastructureSpec != null)
      'infrastructure_spec': infrastructureSpec!.toTfJson(),
  };
}

/// `notebook` — Vertex AI Workbench or Colab notebook execution.
@immutable
final class DataplexTaskNotebookWorkload extends DataplexTaskWorkload {
  const DataplexTaskNotebookWorkload({
    required this.notebook,
    this.fileUris,
    this.archiveUris,
    this.infrastructureSpec,
  });

  final TfArg<String> notebook;
  final TfArg<List<String>>? fileUris;
  final TfArg<List<String>>? archiveUris;
  final TfArg<Map<String, Object?>>? infrastructureSpec;

  @override
  String get blockKey => 'notebook';

  @override
  Map<String, Object?> encode() => {
    'notebook': notebook.toTfJson(),
    if (fileUris != null) 'file_uris': fileUris!.toTfJson(),
    if (archiveUris != null) 'archive_uris': archiveUris!.toTfJson(),
    if (infrastructureSpec != null)
      'infrastructure_spec': infrastructureSpec!.toTfJson(),
  };
}

/// Typed helper for the `execution_spec` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskExecutionSpec {
  const DataplexTaskExecutionSpec({
    this.args,
    this.kmsKey,
    this.maxJobExecutionLifetime,
    this.project,
    required this.serviceAccount,
  });

  final TfArg<Map<String, String>>? args;

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final TfArg<String>? maxJobExecutionLifetime;

  final TfArg<String>? project;

  final RefTo<GoogleServiceAccount> serviceAccount;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'max_job_execution_lifetime': ?maxJobExecutionLifetime?.toTfJson(),
    'project': ?project?.toTfJson(),
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `trigger_spec` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskTriggerSpec {
  const DataplexTaskTriggerSpec({
    this.disabled,
    this.maxRetries,
    this.schedule,
    this.startTime,
    required this.type,
  });

  final TfArg<bool>? disabled;

  final TfArg<num>? maxRetries;

  final TfArg<String>? schedule;

  final TfArg<String>? startTime;

  final TfArg<DataplexTaskTriggerSpecType> type;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'max_retries': ?maxRetries?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DataplexTaskTriggerSpecType implements TerraformEnum {
  onDemand('ON_DEMAND'),
  recurring('RECURRING');

  const DataplexTaskTriggerSpecType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataplex_task`.
///
/// A Dataplex task represents the work that you want Dataplex to do on a
/// schedule. It encapsulates code, parameters, and the schedule.
///
/// A Dataplex lake task (scheduled Spark or Notebook workload).
///
/// Choose exactly one [DataplexTaskWorkload] via [workload]. Provide
/// [triggerSpec] and optional [executionSpec] as literal maps matching the
/// provider nested blocks (`trigger_spec`, `execution_spec`).
final class GoogleDataplexTask extends Resource {
  static const String tfType = 'google_dataplex_task';

  GoogleDataplexTask({
    required super.localName,
    TfArg<String>? taskId,
    TfArg<String>? location,
    TfArg<String>? lake,
    required DataplexTaskWorkload workload,
    required DataplexTaskTriggerSpec triggerSpec,
    required DataplexTaskExecutionSpec executionSpec,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'task_id': ?taskId,
           'location': ?location,
           'lake': ?lake,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'trigger_spec': TfArg.literal(triggerSpec.encode()),
           'execution_spec': TfArg.literal(executionSpec.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           workload.blockKey: TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexTaskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexTask>`.
  RefTo<GoogleDataplexTask> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `execution_status` attribute.
  TfRef<List<Map<String, Object?>>> get executionStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'execution_status');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `task_id` for IAM bindings and cross-stack refs.
  TfRef<String> get taskIdRef => TfRef.attribute<String>(this, 'task_id');
}
