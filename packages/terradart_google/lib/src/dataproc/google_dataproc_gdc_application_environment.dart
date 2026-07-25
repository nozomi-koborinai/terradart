// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_gdc_application_environment`.
const Set<String> _googleDataprocGdcApplicationEnvironmentSensitive =
    <String>{};

/// Typed helper for the `spark_application_environment_config` block of
/// `google_dataproc_gdc_application_environment` (derived from provider schema).
@immutable
final class DataprocGdcApplicationEnvironmentSparkApplicationEnvironmentConfig {
  const DataprocGdcApplicationEnvironmentSparkApplicationEnvironmentConfig({
    this.defaultProperties,
    this.defaultVersion,
  });

  final TfArg<Map<String, String>>? defaultProperties;

  final TfArg<String>? defaultVersion;

  Map<String, Object?> encode() => {
    if (defaultProperties != null)
      'default_properties': defaultProperties!.toTfJson(),
    if (defaultVersion != null) 'default_version': defaultVersion!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_gdc_application_environment`.
///
/// An ApplicationEnvironment contains shared configuration that may be
/// referenced by multiple SparkApplications.
///
/// Dataproc on GDC **application environment** — Spark defaults scoped to
/// a [GoogleDataprocGdcServiceInstance].
///
/// **Cost / apply:** gcp-cost: no dedicated application-environment SKU
/// under Dataproc `363B-8851-170D` (list_skus keyword template → 0);
/// parent [GoogleDataprocGdcServiceInstance] is never_apply (GKE
/// Enterprise / GDC `9186-F79E-3871` Bare Metal SKU `297F-4642-B7A1`
/// **$0.03288/h**). billing-behavior: requires a real GDCE-backed
/// service instance that `terradart-validate` cannot host. Debt-only.
/// **Never** wire into apply-smoke.
///
/// Enable `dataprocgdc.googleapis.com` before apply.
final class GoogleDataprocGdcApplicationEnvironment extends Resource {
  static const String tfType = 'google_dataproc_gdc_application_environment';

  GoogleDataprocGdcApplicationEnvironment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> serviceinstance,
    TfArg<String>? applicationEnvironmentId,
    TfArg<String>? displayName,
    TfArg<String>? namespace,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    DataprocGdcApplicationEnvironmentSparkApplicationEnvironmentConfig?
    sparkApplicationEnvironmentConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'serviceinstance': serviceinstance,
           if (applicationEnvironmentId != null)
             'application_environment_id': applicationEnvironmentId,
           if (displayName != null) 'display_name': displayName,
           if (namespace != null) 'namespace': namespace,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (sparkApplicationEnvironmentConfig != null)
             'spark_application_environment_config': TfArg.literal(
               sparkApplicationEnvironmentConfig.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocGdcApplicationEnvironmentSensitive;

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

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `application_environment_id` attribute.
  TfRef<String> get applicationEnvironmentIdRef =>
      TfRef.attribute<String>(this, 'application_environment_id');
}
