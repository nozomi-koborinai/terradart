// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_task`.
const Set<String> _googleDataplexTaskSensitive = <String>{};

/// Spark or Notebook workload block. Exactly one of the provider blocks.
sealed class DataplexTaskWorkload {
  const DataplexTaskWorkload();

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
    required TfArg<Map<String, dynamic>> triggerSpec,
    required TfArg<Map<String, dynamic>> executionSpec,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (taskId != null) 'task_id': taskId,
           if (location != null) 'location': location,
           if (lake != null) 'lake': lake,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'trigger_spec': triggerSpec,
           'execution_spec': executionSpec,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           workload.blockKey: TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexTaskSensitive;

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
