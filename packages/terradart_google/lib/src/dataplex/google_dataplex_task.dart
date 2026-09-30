// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
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

  final DataplexTaskNotebookInfrastructureSpec? infrastructureSpec;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'notebook': notebook.toTfJson(),
    'infrastructure_spec': ?infrastructureSpec?.encode(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskNotebookInfrastructureSpec {
  const DataplexTaskNotebookInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  final DataplexTaskNotebookInfrastructureSpecBatch? batch;

  final DataplexTaskNotebookInfrastructureSpecContainerImage? containerImage;

  final DataplexTaskNotebookInfrastructureSpecVpcNetwork? vpcNetwork;

  Map<String, Object?> encode() => {
    'batch': ?batch?.encode(),
    'container_image': ?containerImage?.encode(),
    'vpc_network': ?vpcNetwork?.encode(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec.batch` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskNotebookInfrastructureSpecBatch {
  const DataplexTaskNotebookInfrastructureSpecBatch({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  final TfArg<num>? executorsCount;

  final TfArg<num>? maxExecutorsCount;

  Map<String, Object?> encode() => {
    'executors_count': ?executorsCount?.toTfJson(),
    'max_executors_count': ?maxExecutorsCount?.toTfJson(),
  };
}

/// Typed helper for the `notebook.infrastructure_spec.container_image` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskNotebookInfrastructureSpecContainerImage {
  const DataplexTaskNotebookInfrastructureSpecContainerImage({
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
@immutable
final class DataplexTaskNotebookInfrastructureSpecVpcNetwork {
  const DataplexTaskNotebookInfrastructureSpecVpcNetwork({
    required this.target,
    this.networkTags,
  });

  final DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget target;

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
sealed class DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget();

  /// Sets `network`.
  const factory DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget.network(
    RefTo<GoogleComputeNetwork> network,
  ) = DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetNetwork;

  /// Sets `sub_network`.
  const factory DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget.subNetwork(
    TfArg<String> subNetwork,
  ) = DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetSubNetwork;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget.network] choice: sets `network`.
final class DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetNetwork
    extends DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetNetwork(
    this.network,
  );

  final RefTo<GoogleComputeNetwork> network;

  @override
  String get blockKey => 'network';

  @override
  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };
}

/// The [DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget.subNetwork] choice: sets `sub_network`.
final class DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetSubNetwork
    extends DataplexTaskNotebookInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskNotebookInfrastructureSpecVpcNetworkTargetSubNetwork(
    this.subNetwork,
  );

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

  final DataplexTaskSparkDriver driver;

  final DataplexTaskSparkInfrastructureSpec? infrastructureSpec;

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
sealed class DataplexTaskSparkDriver {
  const DataplexTaskSparkDriver();

  /// Sets `main_jar_file_uri`.
  const factory DataplexTaskSparkDriver.mainJarFileUri(
    TfArg<String> mainJarFileUri,
  ) = DataplexTaskSparkDriverMainJarFileUri;

  /// Sets `main_class`.
  const factory DataplexTaskSparkDriver.mainClass(TfArg<String> mainClass) =
      DataplexTaskSparkDriverMainClass;

  /// Sets `python_script_file`.
  const factory DataplexTaskSparkDriver.pythonScriptFile(
    TfArg<String> pythonScriptFile,
  ) = DataplexTaskSparkDriverPythonScriptFile;

  /// Sets `sql_script_file`.
  const factory DataplexTaskSparkDriver.sqlScriptFile(
    TfArg<String> sqlScriptFile,
  ) = DataplexTaskSparkDriverSqlScriptFile;

  /// Sets `sql_script`.
  const factory DataplexTaskSparkDriver.sqlScript(TfArg<String> sqlScript) =
      DataplexTaskSparkDriverSqlScript;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexTaskSparkDriver.mainJarFileUri] choice: sets `main_jar_file_uri`.
final class DataplexTaskSparkDriverMainJarFileUri
    extends DataplexTaskSparkDriver {
  const DataplexTaskSparkDriverMainJarFileUri(this.mainJarFileUri);

  final TfArg<String> mainJarFileUri;

  @override
  String get blockKey => 'main_jar_file_uri';

  @override
  Map<String, Object?> encode() => {
    'main_jar_file_uri': mainJarFileUri.toTfJson(),
  };
}

/// The [DataplexTaskSparkDriver.mainClass] choice: sets `main_class`.
final class DataplexTaskSparkDriverMainClass extends DataplexTaskSparkDriver {
  const DataplexTaskSparkDriverMainClass(this.mainClass);

  final TfArg<String> mainClass;

  @override
  String get blockKey => 'main_class';

  @override
  Map<String, Object?> encode() => {'main_class': mainClass.toTfJson()};
}

/// The [DataplexTaskSparkDriver.pythonScriptFile] choice: sets `python_script_file`.
final class DataplexTaskSparkDriverPythonScriptFile
    extends DataplexTaskSparkDriver {
  const DataplexTaskSparkDriverPythonScriptFile(this.pythonScriptFile);

  final TfArg<String> pythonScriptFile;

  @override
  String get blockKey => 'python_script_file';

  @override
  Map<String, Object?> encode() => {
    'python_script_file': pythonScriptFile.toTfJson(),
  };
}

/// The [DataplexTaskSparkDriver.sqlScriptFile] choice: sets `sql_script_file`.
final class DataplexTaskSparkDriverSqlScriptFile
    extends DataplexTaskSparkDriver {
  const DataplexTaskSparkDriverSqlScriptFile(this.sqlScriptFile);

  final TfArg<String> sqlScriptFile;

  @override
  String get blockKey => 'sql_script_file';

  @override
  Map<String, Object?> encode() => {
    'sql_script_file': sqlScriptFile.toTfJson(),
  };
}

/// The [DataplexTaskSparkDriver.sqlScript] choice: sets `sql_script`.
final class DataplexTaskSparkDriverSqlScript extends DataplexTaskSparkDriver {
  const DataplexTaskSparkDriverSqlScript(this.sqlScript);

  final TfArg<String> sqlScript;

  @override
  String get blockKey => 'sql_script';

  @override
  Map<String, Object?> encode() => {'sql_script': sqlScript.toTfJson()};
}

/// Typed helper for the `spark.infrastructure_spec` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskSparkInfrastructureSpec {
  const DataplexTaskSparkInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  final DataplexTaskSparkInfrastructureSpecBatch? batch;

  final DataplexTaskSparkInfrastructureSpecContainerImage? containerImage;

  final DataplexTaskSparkInfrastructureSpecVpcNetwork? vpcNetwork;

  Map<String, Object?> encode() => {
    'batch': ?batch?.encode(),
    'container_image': ?containerImage?.encode(),
    'vpc_network': ?vpcNetwork?.encode(),
  };
}

/// Typed helper for the `spark.infrastructure_spec.batch` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskSparkInfrastructureSpecBatch {
  const DataplexTaskSparkInfrastructureSpecBatch({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  final TfArg<num>? executorsCount;

  final TfArg<num>? maxExecutorsCount;

  Map<String, Object?> encode() => {
    'executors_count': ?executorsCount?.toTfJson(),
    'max_executors_count': ?maxExecutorsCount?.toTfJson(),
  };
}

/// Typed helper for the `spark.infrastructure_spec.container_image` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskSparkInfrastructureSpecContainerImage {
  const DataplexTaskSparkInfrastructureSpecContainerImage({
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

/// Typed helper for the `spark.infrastructure_spec.vpc_network` block of
/// `google_dataplex_task` (derived from provider schema).
@immutable
final class DataplexTaskSparkInfrastructureSpecVpcNetwork {
  const DataplexTaskSparkInfrastructureSpecVpcNetwork({
    required this.target,
    this.networkTags,
  });

  final DataplexTaskSparkInfrastructureSpecVpcNetworkTarget target;

  final TfArg<List<String>>? networkTags;

  Map<String, Object?> encode() => {
    ...target.encode(),
    'network_tags': ?networkTags?.toTfJson(),
  };
}

/// Exactly one of `network`, `sub_network` on the `spark.infrastructure_spec.vpc_network` block of `google_dataplex_task`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.network(...)`.
sealed class DataplexTaskSparkInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskSparkInfrastructureSpecVpcNetworkTarget();

  /// Sets `network`.
  const factory DataplexTaskSparkInfrastructureSpecVpcNetworkTarget.network(
    RefTo<GoogleComputeNetwork> network,
  ) = DataplexTaskSparkInfrastructureSpecVpcNetworkTargetNetwork;

  /// Sets `sub_network`.
  const factory DataplexTaskSparkInfrastructureSpecVpcNetworkTarget.subNetwork(
    TfArg<String> subNetwork,
  ) = DataplexTaskSparkInfrastructureSpecVpcNetworkTargetSubNetwork;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataplexTaskSparkInfrastructureSpecVpcNetworkTarget.network] choice: sets `network`.
final class DataplexTaskSparkInfrastructureSpecVpcNetworkTargetNetwork
    extends DataplexTaskSparkInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskSparkInfrastructureSpecVpcNetworkTargetNetwork(
    this.network,
  );

  final RefTo<GoogleComputeNetwork> network;

  @override
  String get blockKey => 'network';

  @override
  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };
}

/// The [DataplexTaskSparkInfrastructureSpecVpcNetworkTarget.subNetwork] choice: sets `sub_network`.
final class DataplexTaskSparkInfrastructureSpecVpcNetworkTargetSubNetwork
    extends DataplexTaskSparkInfrastructureSpecVpcNetworkTarget {
  const DataplexTaskSparkInfrastructureSpecVpcNetworkTargetSubNetwork(
    this.subNetwork,
  );

  final TfArg<String> subNetwork;

  @override
  String get blockKey => 'sub_network';

  @override
  Map<String, Object?> encode() => {'sub_network': subNetwork.toTfJson()};
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
