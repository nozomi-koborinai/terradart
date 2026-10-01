// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_evaluation_metric`.
const Set<String> _googleVertexAiEvaluationMetricSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_evaluation_metric` (derived from provider schema).
@immutable
final class VertexAiEvaluationMetricEncryptionSpec {
  const VertexAiEvaluationMetricEncryptionSpec({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_evaluation_metric`.
///
/// A reusable metric configuration for Vertex AI evaluation. EvaluationMetrics
/// define how model outputs are scored, supporting predefined metrics,
/// LLM-based metrics, pointwise and pairwise comparisons, and custom code
/// execution metrics.
final class GoogleVertexAiEvaluationMetric extends Resource {
  static const String tfType = 'google_vertex_ai_evaluation_metric';

  GoogleVertexAiEvaluationMetric(
    super.localName, {
    TfArg<String>? evaluationMetricId,
    required TfArg<String> region,
    required TfArg<String> displayName,
    TfArg<String>? metric,
    TfArg<String>? description,
    TfArg<String>? gcsUri,
    TfArg<Map<String, String>>? labels,
    VertexAiEvaluationMetricEncryptionSpec? encryptionSpec,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'evaluation_metric_id': ?evaluationMetricId,
           'region': region,
           'display_name': displayName,
           'metric': ?metric,
           'description': ?description,
           'gcs_uri': ?gcsUri,
           'labels': ?labels,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEvaluationMetricSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEvaluationMetric>`.
  RefTo<GoogleVertexAiEvaluationMetric> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `evaluation_metric_id` attribute.
  TfRef<String> get evaluationMetricId =>
      TfRef.attribute<String>(this, 'evaluation_metric_id');

  /// Reference to `gcs_uri` attribute.
  TfRef<String> get gcsUri => TfRef.attribute<String>(this, 'gcs_uri');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `metric` attribute.
  TfRef<String> get metric => TfRef.attribute<String>(this, 'metric');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
