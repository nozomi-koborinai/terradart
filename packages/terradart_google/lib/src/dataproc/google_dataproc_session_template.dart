// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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

  final DataprocSessionTemplateExecutionConfig? executionConfig;

  final DataprocSessionTemplatePeripheralsConfig? peripheralsConfig;

  Map<String, Object?> encode() => {
    'execution_config': ?executionConfig?.encode(),
    'peripherals_config': ?peripheralsConfig?.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateExecutionConfig {
  const DataprocSessionTemplateExecutionConfig({
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

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final TfArg<List<String>>? networkTags;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? stagingBucket;

  final RefTo<GoogleComputeSubnetwork>? subnetworkUri;

  final TfArg<String>? ttl;

  final DataprocSessionTemplateAuthenticationConfig? authenticationConfig;

  Map<String, Object?> encode() => {
    'idle_ttl': ?idleTtl?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'network_tags': ?networkTags?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'staging_bucket': ?stagingBucket?.toTfJson(),
    'subnetwork_uri': ?subnetworkUri?.encodeAs('id').toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'authentication_config': ?authenticationConfig?.encode(),
  };
}

/// Typed helper for the `environment_config.execution_config.authentication_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateAuthenticationConfig {
  const DataprocSessionTemplateAuthenticationConfig({
    this.userWorkloadAuthenticationType,
  });

  final DataprocSessionTemplateUserWorkloadAuthenticationType?
  userWorkloadAuthenticationType;

  Map<String, Object?> encode() => {
    'user_workload_authentication_type': ?userWorkloadAuthenticationType
        ?.toTfJson(),
  };
}

/// `user_workload_authentication_type` — derived from the provider schema description.
extension type const DataprocSessionTemplateUserWorkloadAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  DataprocSessionTemplateUserWorkloadAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  DataprocSessionTemplateUserWorkloadAuthenticationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DataprocSessionTemplateUserWorkloadAuthenticationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const serviceAccount =
      DataprocSessionTemplateUserWorkloadAuthenticationType._(
        TfArgLiteral('SERVICE_ACCOUNT'),
      );
  static const endUserCredentials =
      DataprocSessionTemplateUserWorkloadAuthenticationType._(
        TfArgLiteral('END_USER_CREDENTIALS'),
      );

  static const List<DataprocSessionTemplateUserWorkloadAuthenticationType>
  values = [serviceAccount, endUserCredentials];
}

/// Typed helper for the `environment_config.peripherals_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplatePeripheralsConfig {
  const DataprocSessionTemplatePeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  final TfArg<String>? metastoreService;

  final DataprocSessionTemplateSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  Map<String, Object?> encode() => {
    'metastore_service': ?metastoreService?.toTfJson(),
    'spark_history_server_config': ?sparkHistoryServerConfig?.encode(),
  };
}

/// Typed helper for the `environment_config.peripherals_config.spark_history_server_config` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateSparkHistoryServerConfig {
  const DataprocSessionTemplateSparkHistoryServerConfig({this.dataprocCluster});

  final TfArg<String>? dataprocCluster;

  Map<String, Object?> encode() => {
    'dataproc_cluster': ?dataprocCluster?.toTfJson(),
  };
}

/// Typed helper for the `jupyter_session` block of
/// `google_dataproc_session_template` (derived from provider schema).
@immutable
final class DataprocSessionTemplateJupyterSession {
  const DataprocSessionTemplateJupyterSession({this.displayName, this.kernel});

  final TfArg<String>? displayName;

  final DataprocSessionTemplateKernel? kernel;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'kernel': ?kernel?.toTfJson(),
  };
}

/// `kernel` — derived from the provider schema description.
extension type const DataprocSessionTemplateKernel._(TfArg<String> _)
    implements TfArg<String> {
  DataprocSessionTemplateKernel.variable(String name)
    : this._(TfArg.variable(name));
  DataprocSessionTemplateKernel.expression(String template)
    : this._(TfArg.expression(template));
  const DataprocSessionTemplateKernel.arg(TfArg<String> arg) : this._(arg);

  static const python = DataprocSessionTemplateKernel._(TfArgLiteral('PYTHON'));
  static const scala = DataprocSessionTemplateKernel._(TfArgLiteral('SCALA'));

  static const List<DataprocSessionTemplateKernel> values = [python, scala];
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
    'container_image': ?containerImage?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'version': ?version?.toTfJson(),
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

  GoogleDataprocSessionTemplate(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': ?location,
           'labels': ?labels,
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
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocSessionTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocSessionTemplate>`.
  RefTo<GoogleDataprocSessionTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
