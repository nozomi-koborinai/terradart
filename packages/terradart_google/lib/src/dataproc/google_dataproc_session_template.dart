// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_session_template`.
const Set<String> _googleDataprocSessionTemplateSensitive = <String>{};

/// Typed helper for the `environment_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateEnvironmentConfig {
  const DataprocSessionTemplateEnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  final DataprocSessionTemplateEnvironmentConfigExecutionConfig?
  executionConfig;

  final DataprocSessionTemplateEnvironmentConfigPeripheralsConfig?
  peripheralsConfig;

  Map<String, Object?> encode() => {
    if (executionConfig != null) 'execution_config': executionConfig!.encode(),
    if (peripheralsConfig != null)
      'peripherals_config': peripheralsConfig!.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateEnvironmentConfigExecutionConfig {
  const DataprocSessionTemplateEnvironmentConfigExecutionConfig({
    this.idleTtl,
    this.kmsKey,
    this.networkTags,
    this.serviceAccount,
    this.stagingBucket,
    this.subnetworkUri,
    this.ttl,
    this.authenticationConfig,
  });

  final TfArg<String>? idleTtl;

  final TfArg<String>? kmsKey;

  final TfArg<List<Object?>>? networkTags;

  final TfArg<String>? serviceAccount;

  final TfArg<String>? stagingBucket;

  final TfArg<String>? subnetworkUri;

  final TfArg<String>? ttl;

  final DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig?
  authenticationConfig;

  Map<String, Object?> encode() => {
    if (idleTtl != null) 'idle_ttl': idleTtl!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
    if (networkTags != null) 'network_tags': networkTags!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (stagingBucket != null) 'staging_bucket': stagingBucket!.toTfJson(),
    if (subnetworkUri != null) 'subnetwork_uri': subnetworkUri!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    if (authenticationConfig != null)
      'authentication_config': authenticationConfig!.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config.authentication_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig {
  const DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  final TfArg<
    DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType
  >?
  userWorkloadAuthenticationType;

  Map<String, Object?> encode() => {
    if (userWorkloadAuthenticationType != null)
      'user_workload_authentication_type': userWorkloadAuthenticationType!
          .toTfJson(),
  };
}

/// `user_workload_authentication_type` — derived from the provider schema description.
enum DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType
    implements TerraformEnum {
  serviceAccount('SERVICE_ACCOUNT'),
  endUserCredentials('END_USER_CREDENTIALS');

  const DataprocSessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigUserWorkloadAuthenticationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `environment_config.peripherals_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateEnvironmentConfigPeripheralsConfig {
  const DataprocSessionTemplateEnvironmentConfigPeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  final TfArg<String>? metastoreService;

  final DataprocSessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  Map<String, Object?> encode() => {
    if (metastoreService != null)
      'metastore_service': metastoreService!.toTfJson(),
    if (sparkHistoryServerConfig != null)
      'spark_history_server_config': sparkHistoryServerConfig!.encode(),
  };
}

/// Typed helper for the `environment_config.peripherals_config.spark_history_server_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig {
  const DataprocSessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig({
    this.dataprocCluster,
  });

  final TfArg<String>? dataprocCluster;

  Map<String, Object?> encode() => {
    if (dataprocCluster != null)
      'dataproc_cluster': dataprocCluster!.toTfJson(),
  };
}

/// Typed helper for the `jupyter_session` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateJupyterSession {
  const DataprocSessionTemplateJupyterSession({this.displayName, this.kernel});

  final TfArg<String>? displayName;

  final TfArg<DataprocSessionTemplateJupyterSessionKernel>? kernel;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (kernel != null) 'kernel': kernel!.toTfJson(),
  };
}

/// `kernel` — derived from the provider schema description.
enum DataprocSessionTemplateJupyterSessionKernel implements TerraformEnum {
  python('PYTHON'),
  scala('SCALA');

  const DataprocSessionTemplateJupyterSessionKernel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `runtime_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateRuntimeConfig {
  const DataprocSessionTemplateRuntimeConfig({
    this.containerImage,
    this.properties,
    this.version,
  });

  final TfArg<String>? containerImage;

  final TfArg<Map<String, String>>? properties;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (containerImage != null) 'container_image': containerImage!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `spark_connect_session` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateSparkConnectSession {
  const DataprocSessionTemplateSparkConnectSession();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_dataproc_session_template`.
///
/// A Dataproc Serverless session template defines the configuration settings
/// for creating one or more Dataproc Serverless interactive sessions.
///
/// Dataproc Serverless **session template** — reusable config for
/// Interactive / Jupyter / Spark Connect sessions.
///
/// **Cost / apply:** gcp-cost: Dataproc `363B-8851-170D` Interactive DCU
/// SKU `A486-6040-07FE` **$0.089/h** (us-central1 list; milli-hour SKU
/// priced per DCU-hour). billing-behavior: sessions started from the
/// template burn Interactive DCUs while running; the template metadata
/// alone is not billed, but there is no applyable quickstart without
/// spinning Interactive compute. Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
///
/// Enable `dataproc.googleapis.com` via [GoogleProjectService] before apply.
final class GoogleDataprocSessionTemplate extends Resource {
  static const String tfType = 'google_dataproc_session_template';

  GoogleDataprocSessionTemplate({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<Map<String, String>>? labels,
    DataprocSessionTemplateRuntimeConfig? runtimeConfig,
    DataprocSessionTemplateEnvironmentConfig? environmentConfig,
    DataprocSessionTemplateJupyterSession? jupyterSession,
    DataprocSessionTemplateSparkConnectSession? sparkConnectSession,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (labels != null) 'labels': labels,
           if (runtimeConfig != null)
             'runtime_config': TfArg.literal(runtimeConfig.encode()),
           if (environmentConfig != null)
             'environment_config': TfArg.literal(environmentConfig.encode()),
           if (jupyterSession != null)
             'jupyter_session': TfArg.literal(jupyterSession.encode()),
           if (sparkConnectSession != null)
             'spark_connect_session': TfArg.literal(
               sparkConnectSession.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocSessionTemplateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuidRef => TfRef.attribute<String>(this, 'uuid');
}
