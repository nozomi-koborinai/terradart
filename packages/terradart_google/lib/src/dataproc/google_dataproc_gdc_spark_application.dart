// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_gdc_spark_application`.
const Set<String> _googleDataprocGdcSparkApplicationSensitive = <String>{};

/// Exactly one of `pyspark_application_config`, `spark_application_config`, `spark_sql_application_config`, `spark_r_application_config` on `google_dataproc_gdc_spark_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pysparkApplicationConfig(...)`.
sealed class DataprocGdcSparkApplicationWorkload {
  const DataprocGdcSparkApplicationWorkload();

  /// Sets `pyspark_application_config`.
  const factory DataprocGdcSparkApplicationWorkload.pysparkApplicationConfig(
    DataprocGdcSparkApplicationPysparkApplicationConfig
    pysparkApplicationConfig,
  ) = DataprocGdcSparkApplicationWorkloadPysparkApplicationConfig;

  /// Sets `spark_application_config`.
  const factory DataprocGdcSparkApplicationWorkload.sparkApplicationConfig(
    DataprocGdcSparkApplicationSparkApplicationConfig sparkApplicationConfig,
  ) = DataprocGdcSparkApplicationWorkloadSparkApplicationConfig;

  /// Sets `spark_sql_application_config`.
  const factory DataprocGdcSparkApplicationWorkload.sparkSqlApplicationConfig(
    DataprocGdcSparkApplicationSparkSqlApplicationConfig
    sparkSqlApplicationConfig,
  ) = DataprocGdcSparkApplicationWorkloadSparkSqlApplicationConfig;

  /// Sets `spark_r_application_config`.
  const factory DataprocGdcSparkApplicationWorkload.sparkRApplicationConfig(
    DataprocGdcSparkApplicationSparkRApplicationConfig sparkRApplicationConfig,
  ) = DataprocGdcSparkApplicationWorkloadSparkRApplicationConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataprocGdcSparkApplicationWorkload.pysparkApplicationConfig] choice: sets `pyspark_application_config`.
final class DataprocGdcSparkApplicationWorkloadPysparkApplicationConfig
    extends DataprocGdcSparkApplicationWorkload {
  const DataprocGdcSparkApplicationWorkloadPysparkApplicationConfig(
    this.pysparkApplicationConfig,
  );

  final DataprocGdcSparkApplicationPysparkApplicationConfig
  pysparkApplicationConfig;

  @override
  String get blockKey => 'pyspark_application_config';

  @override
  Map<String, Object?> encode() => {
    'pyspark_application_config': pysparkApplicationConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'pyspark_application_config': TfArg.literal(
      pysparkApplicationConfig.encode(),
    ),
  };
}

/// The [DataprocGdcSparkApplicationWorkload.sparkApplicationConfig] choice: sets `spark_application_config`.
final class DataprocGdcSparkApplicationWorkloadSparkApplicationConfig
    extends DataprocGdcSparkApplicationWorkload {
  const DataprocGdcSparkApplicationWorkloadSparkApplicationConfig(
    this.sparkApplicationConfig,
  );

  final DataprocGdcSparkApplicationSparkApplicationConfig
  sparkApplicationConfig;

  @override
  String get blockKey => 'spark_application_config';

  @override
  Map<String, Object?> encode() => {
    'spark_application_config': sparkApplicationConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'spark_application_config': TfArg.literal(sparkApplicationConfig.encode()),
  };
}

/// The [DataprocGdcSparkApplicationWorkload.sparkSqlApplicationConfig] choice: sets `spark_sql_application_config`.
final class DataprocGdcSparkApplicationWorkloadSparkSqlApplicationConfig
    extends DataprocGdcSparkApplicationWorkload {
  const DataprocGdcSparkApplicationWorkloadSparkSqlApplicationConfig(
    this.sparkSqlApplicationConfig,
  );

  final DataprocGdcSparkApplicationSparkSqlApplicationConfig
  sparkSqlApplicationConfig;

  @override
  String get blockKey => 'spark_sql_application_config';

  @override
  Map<String, Object?> encode() => {
    'spark_sql_application_config': sparkSqlApplicationConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'spark_sql_application_config': TfArg.literal(
      sparkSqlApplicationConfig.encode(),
    ),
  };
}

/// The [DataprocGdcSparkApplicationWorkload.sparkRApplicationConfig] choice: sets `spark_r_application_config`.
final class DataprocGdcSparkApplicationWorkloadSparkRApplicationConfig
    extends DataprocGdcSparkApplicationWorkload {
  const DataprocGdcSparkApplicationWorkloadSparkRApplicationConfig(
    this.sparkRApplicationConfig,
  );

  final DataprocGdcSparkApplicationSparkRApplicationConfig
  sparkRApplicationConfig;

  @override
  String get blockKey => 'spark_r_application_config';

  @override
  Map<String, Object?> encode() => {
    'spark_r_application_config': sparkRApplicationConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'spark_r_application_config': TfArg.literal(
      sparkRApplicationConfig.encode(),
    ),
  };
}

/// Typed helper for the `pyspark_application_config` block of
/// `google_dataproc_gdc_spark_application` (derived from provider schema).
@immutable
final class DataprocGdcSparkApplicationPysparkApplicationConfig {
  const DataprocGdcSparkApplicationPysparkApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    required this.mainPythonFileUri,
    this.pythonFileUris,
  });

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String> mainPythonFileUri;

  final TfArg<List<String>>? pythonFileUris;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'main_python_file_uri': mainPythonFileUri.toTfJson(),
    'python_file_uris': ?pythonFileUris?.toTfJson(),
  };
}

/// Typed helper for the `spark_application_config` block of
/// `google_dataproc_gdc_spark_application` (derived from provider schema).
@immutable
final class DataprocGdcSparkApplicationSparkApplicationConfig {
  const DataprocGdcSparkApplicationSparkApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    this.jarFileUris,
    this.mainClass,
    this.mainJarFileUri,
  });

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String>? mainClass;

  final TfArg<String>? mainJarFileUri;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'main_class': ?mainClass?.toTfJson(),
    'main_jar_file_uri': ?mainJarFileUri?.toTfJson(),
  };
}

/// Typed helper for the `spark_r_application_config` block of
/// `google_dataproc_gdc_spark_application` (derived from provider schema).
@immutable
final class DataprocGdcSparkApplicationSparkRApplicationConfig {
  const DataprocGdcSparkApplicationSparkRApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    required this.mainRFileUri,
  });

  final TfArg<List<String>>? archiveUris;

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? fileUris;

  final TfArg<String> mainRFileUri;

  Map<String, Object?> encode() => {
    'archive_uris': ?archiveUris?.toTfJson(),
    'args': ?args?.toTfJson(),
    'file_uris': ?fileUris?.toTfJson(),
    'main_r_file_uri': mainRFileUri.toTfJson(),
  };
}

/// Typed helper for the `spark_sql_application_config` block of
/// `google_dataproc_gdc_spark_application` (derived from provider schema).
@immutable
final class DataprocGdcSparkApplicationSparkSqlApplicationConfig {
  const DataprocGdcSparkApplicationSparkSqlApplicationConfig({
    this.jarFileUris,
    this.queryFileUri,
    this.scriptVariables,
    this.queryList,
  });

  final TfArg<List<String>>? jarFileUris;

  final TfArg<String>? queryFileUri;

  final TfArg<Map<String, String>>? scriptVariables;

  final DataprocGdcSparkApplicationSparkSqlApplicationConfigQueryList?
  queryList;

  Map<String, Object?> encode() => {
    'jar_file_uris': ?jarFileUris?.toTfJson(),
    'query_file_uri': ?queryFileUri?.toTfJson(),
    'script_variables': ?scriptVariables?.toTfJson(),
    'query_list': ?queryList?.encode(),
  };
}

/// Typed helper for the `spark_sql_application_config.query_list` block of
/// `google_dataproc_gdc_spark_application` (derived from provider schema).
@immutable
final class DataprocGdcSparkApplicationSparkSqlApplicationConfigQueryList {
  const DataprocGdcSparkApplicationSparkSqlApplicationConfigQueryList({
    required this.queries,
  });

  final TfArg<List<String>> queries;

  Map<String, Object?> encode() => {'queries': queries.toTfJson()};
}

/// Factory wrapper for `google_dataproc_gdc_spark_application`.
///
/// A Spark application is a single Spark workload run on a GDC cluster.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDataprocGdcSparkApplication extends Resource {
  static const String tfType = 'google_dataproc_gdc_spark_application';

  GoogleDataprocGdcSparkApplication({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? applicationEnvironment,
    TfArg<String>? deletionPolicy,
    TfArg<List<String>>? dependencyImages,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? namespace,
    TfArg<String>? project,
    TfArg<Map<String, String>>? properties,
    required TfArg<String> serviceinstance,
    required TfArg<String> sparkApplicationId,
    TfArg<String>? version,
    required DataprocGdcSparkApplicationWorkload workload,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'application_environment': ?applicationEnvironment,
           'deletion_policy': ?deletionPolicy,
           'dependency_images': ?dependencyImages,
           'display_name': ?displayName,
           'labels': ?labels,
           'location': location,
           'namespace': ?namespace,
           'project': ?project,
           'properties': ?properties,
           'serviceinstance': serviceinstance,
           'spark_application_id': sparkApplicationId,
           'version': ?version,
           ...workload.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocGdcSparkApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocGdcSparkApplication>`.
  RefTo<GoogleDataprocGdcSparkApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `monitoring_endpoint` attribute.
  TfRef<String> get monitoringEndpoint =>
      TfRef.attribute<String>(this, 'monitoring_endpoint');

  /// Reference to `output_uri` attribute.
  TfRef<String> get outputUri => TfRef.attribute<String>(this, 'output_uri');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotationsRef =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `application_environment` attribute.
  TfRef<String> get applicationEnvironmentRef =>
      TfRef.attribute<String>(this, 'application_environment');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `dependency_images` attribute.
  TfRef<List<String>> get dependencyImagesRef =>
      TfRef.attribute<List<String>>(this, 'dependency_images');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get propertiesRef =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `serviceinstance` attribute.
  TfRef<String> get serviceinstanceRef =>
      TfRef.attribute<String>(this, 'serviceinstance');

  /// Reference to `spark_application_id` attribute.
  TfRef<String> get sparkApplicationIdRef =>
      TfRef.attribute<String>(this, 'spark_application_id');

  /// Reference to `version` attribute.
  TfRef<String> get versionRef => TfRef.attribute<String>(this, 'version');
}
