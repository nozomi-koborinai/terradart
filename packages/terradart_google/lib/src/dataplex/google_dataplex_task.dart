// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../dataplex/google_dataplex_lake.dart' show GoogleDataplexLake;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataplex_task`.
const Set<String> _googleDataplexTaskSensitive = <String>{};

/// Exactly one of `spark`, `notebook` on `google_dataplex_task`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.spark(...)`.
sealed class DataplexTaskWorkload {
  const DataplexTaskWorkload();

  /// Sets `spark`.
  const factory DataplexTaskWorkload.spark(DataplexTaskSpark spark) =
      DataplexTaskWorkloadSpark;

  /// Sets `notebook`.
  const factory DataplexTaskWorkload.notebook(DataplexTaskNotebook notebook) =
      DataplexTaskWorkloadNotebook;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataplexTaskWorkload.spark] choice: sets `spark`.
final class DataplexTaskWorkloadSpark extends DataplexTaskWorkload {
  const DataplexTaskWorkloadSpark(this.spark);

  final DataplexTaskSpark spark;

  @override
  String get blockKey => 'spark';

  @override
  Map<String, Object?> encode() => {'spark': spark.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'spark': TfArg.literal(spark.encode()),
  };
}

/// The [DataplexTaskWorkload.notebook] choice: sets `notebook`.
final class DataplexTaskWorkloadNotebook extends DataplexTaskWorkload {
  const DataplexTaskWorkloadNotebook(this.notebook);

  final DataplexTaskNotebook notebook;

  @override
  String get blockKey => 'notebook';

  @override
  Map<String, Object?> encode() => {'notebook': notebook.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'notebook': TfArg.literal(notebook.encode()),
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

/// Typed helper for the `notebook` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskNotebook {
  const DataplexTaskNotebook({
    this.archiveUris,
    this.fileUris,
    required this.notebook,
    this.infrastructureSpec,
  });

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? fileUris;

  final TfArg<String> notebook;

  final DataplexTaskInfrastructureSpec? infrastructureSpec;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'notebook': notebook.toTfJson(),
    'infrastructure_spec': ?infrastructureSpec?.encode(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec` block of
/// `google_dataplex_task` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataplexTaskInfrastructureSpec {
  const DataplexTaskInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  final DataplexTaskBatch? batch;

  final DataplexTaskContainerImage? containerImage;

  final DataplexTaskVpcNetwork? vpcNetwork;

  Map<String, Object?> encode() => {
    'batch': ?batch?.encode(),
    'container_image': ?containerImage?.encode(),
    'vpc_network': ?vpcNetwork?.encode(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec.batch` block of
/// `google_dataplex_task` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataplexTaskBatch {
  const DataplexTaskBatch({this.executorsCount, this.maxExecutorsCount});

  final TfArg<num>? executorsCount;

  final TfArg<num>? maxExecutorsCount;

  Map<String, Object?> encode() => {
    'executors_count': ?executorsCount?.toTfJson(),
    'max_executors_count': ?maxExecutorsCount?.toTfJson(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec.container_image` block of
/// `google_dataplex_task` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataplexTaskContainerImage {
  const DataplexTaskContainerImage({
    this.image,
    this.javaJars,
    this.properties,
    this.pythonPackages,
  });

  final TfArg<String>? image;

  final TfArg<List<String>>? javaJars;

  final TfArg<Map<String, String>>? properties;

  final TfArg<List<String>>? pythonPackages;

  Map<String, Object?> encode() => {
    'image': ?image?.toTfJson(),
    'java_jars': ?javaJars?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'python_packages': ?pythonPackages?.toTfJson(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec.vpc_network` block of
/// `google_dataplex_task` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataplexTaskVpcNetwork {
  const DataplexTaskVpcNetwork({required this.target, this.networkTags});

  final DataplexTaskTarget target;

  final TfArg<List<String>>? networkTags;

  Map<String, Object?> encode() => {
    ...target.encode(),
    'network_tags': ?networkTags?.toTfJson(),
  };
}

/// Exactly one of `network`, `sub_network` on the `notebook.infrastructure_spec.vpc_network` block of `google_dataplex_task`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.network(...)`.
sealed class DataplexTaskTarget {
  const DataplexTaskTarget();

  /// Sets `network`.
  const factory DataplexTaskTarget.network(
    RefTo<GoogleComputeNetwork> network,
  ) = DataplexTaskTargetNetwork;

  /// Sets `sub_network`.
  const factory DataplexTaskTarget.subNetwork(TfArg<String> subNetwork) =
      DataplexTaskTargetSubNetwork;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexTaskTarget.network] choice: sets `network`.
final class DataplexTaskTargetNetwork extends DataplexTaskTarget {
  const DataplexTaskTargetNetwork(this.network);

  final RefTo<GoogleComputeNetwork> network;

  @override
  String get blockKey => 'network';

  @override
  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };
}

/// The [DataplexTaskTarget.subNetwork] choice: sets `sub_network`.
final class DataplexTaskTargetSubNetwork extends DataplexTaskTarget {
  const DataplexTaskTargetSubNetwork(this.subNetwork);

  final TfArg<String> subNetwork;

  @override
  String get blockKey => 'sub_network';

  @override
  Map<String, Object?> encode() => {'sub_network': subNetwork.toTfJson()};
}

/// Typed helper for the `spark` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskSpark {
  const DataplexTaskSpark({
    this.archiveUris,
    this.fileUris,
    required this.driver,
    this.infrastructureSpec,
  });

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? fileUris;

  final DataplexTaskDriver driver;

  final DataplexTaskInfrastructureSpec? infrastructureSpec;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    ...driver.encode(),
    'infrastructure_spec': ?infrastructureSpec?.encode(),
  };
}

/// Exactly one of `main_jar_file_uri`, `main_class`, `python_script_file`, `sql_script_file`, `sql_script` on the `spark` block of `google_dataplex_task`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.mainJarFileUri(...)`.
sealed class DataplexTaskDriver {
  const DataplexTaskDriver();

  /// Sets `main_jar_file_uri`.
  const factory DataplexTaskDriver.mainJarFileUri(
    TfArg<String> mainJarFileUri,
  ) = DataplexTaskDriverMainJarFileUri;

  /// Sets `main_class`.
  const factory DataplexTaskDriver.mainClass(TfArg<String> mainClass) =
      DataplexTaskDriverMainClass;

  /// Sets `python_script_file`.
  const factory DataplexTaskDriver.pythonScriptFile(
    TfArg<String> pythonScriptFile,
  ) = DataplexTaskDriverPythonScriptFile;

  /// Sets `sql_script_file`.
  const factory DataplexTaskDriver.sqlScriptFile(TfArg<String> sqlScriptFile) =
      DataplexTaskDriverSqlScriptFile;

  /// Sets `sql_script`.
  const factory DataplexTaskDriver.sqlScript(TfArg<String> sqlScript) =
      DataplexTaskDriverSqlScript;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexTaskDriver.mainJarFileUri] choice: sets `main_jar_file_uri`.
final class DataplexTaskDriverMainJarFileUri extends DataplexTaskDriver {
  const DataplexTaskDriverMainJarFileUri(this.mainJarFileUri);

  final TfArg<String> mainJarFileUri;

  @override
  String get blockKey => 'main_jar_file_uri';

  @override
  Map<String, Object?> encode() => {
    'main_jar_file_uri': mainJarFileUri.toTfJson(),
  };
}

/// The [DataplexTaskDriver.mainClass] choice: sets `main_class`.
final class DataplexTaskDriverMainClass extends DataplexTaskDriver {
  const DataplexTaskDriverMainClass(this.mainClass);

  final TfArg<String> mainClass;

  @override
  String get blockKey => 'main_class';

  @override
  Map<String, Object?> encode() => {'main_class': mainClass.toTfJson()};
}

/// The [DataplexTaskDriver.pythonScriptFile] choice: sets `python_script_file`.
final class DataplexTaskDriverPythonScriptFile extends DataplexTaskDriver {
  const DataplexTaskDriverPythonScriptFile(this.pythonScriptFile);

  final TfArg<String> pythonScriptFile;

  @override
  String get blockKey => 'python_script_file';

  @override
  Map<String, Object?> encode() => {
    'python_script_file': pythonScriptFile.toTfJson(),
  };
}

/// The [DataplexTaskDriver.sqlScriptFile] choice: sets `sql_script_file`.
final class DataplexTaskDriverSqlScriptFile extends DataplexTaskDriver {
  const DataplexTaskDriverSqlScriptFile(this.sqlScriptFile);

  final TfArg<String> sqlScriptFile;

  @override
  String get blockKey => 'sql_script_file';

  @override
  Map<String, Object?> encode() => {
    'sql_script_file': sqlScriptFile.toTfJson(),
  };
}

/// The [DataplexTaskDriver.sqlScript] choice: sets `sql_script`.
final class DataplexTaskDriverSqlScript extends DataplexTaskDriver {
  const DataplexTaskDriverSqlScript(this.sqlScript);

  final TfArg<String> sqlScript;

  @override
  String get blockKey => 'sql_script';

  @override
  Map<String, Object?> encode() => {'sql_script': sqlScript.toTfJson()};
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

  final TfArg<DataplexTaskType> type;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'max_retries': ?maxRetries?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DataplexTaskType implements TerraformEnum {
  onDemand('ON_DEMAND'),
  recurring('RECURRING');

  const DataplexTaskType(this.terraformValue);
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
    RefTo<GoogleDataplexLake>? lake,
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
           'lake': ?lake?.encodeAs('name'),
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'trigger_spec': TfArg.literal(triggerSpec.encode()),
           'execution_spec': TfArg.literal(executionSpec.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           ...workload.argMap,
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lake` attribute.
  TfRef<String> get lakeRef => TfRef.attribute<String>(this, 'lake');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `task_id` for IAM bindings and cross-stack refs.
  TfRef<String> get taskIdRef => TfRef.attribute<String>(this, 'task_id');
}
