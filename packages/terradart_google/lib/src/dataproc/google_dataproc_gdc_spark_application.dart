// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_gdc_spark_application`.
const Set<String> _googleDataprocGdcSparkApplicationSensitive = <String>{};

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

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<List<Object?>>? jarFileUris;

  final TfArg<String> mainPythonFileUri;

  final TfArg<List<Object?>>? pythonFileUris;

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

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

  final TfArg<List<Object?>>? jarFileUris;

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

  final TfArg<List<Object?>>? archiveUris;

  final TfArg<List<Object?>>? args;

  final TfArg<List<Object?>>? fileUris;

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

  final TfArg<List<Object?>>? jarFileUris;

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

  final TfArg<List<Object?>> queries;

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
    DataprocGdcSparkApplicationSparkApplicationConfig? sparkApplicationConfig,
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
           if (sparkApplicationConfig != null)
             'spark_application_config': TfArg.literal(
               sparkApplicationConfig.encode(),
             ),
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
}
