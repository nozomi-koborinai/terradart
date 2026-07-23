// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore_entitytype`.
const Set<String> _googleVertexAiFeaturestoreEntitytypeSensitive = <String>{};

/// Typed helper for the `monitoring_config` block of
/// `google_vertex_ai_featurestore_entitytype` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeMonitoringConfig {
  const VertexAiFeaturestoreEntitytypeMonitoringConfig({
    this.categoricalThresholdConfig,
    this.importFeaturesAnalysis,
    this.numericalThresholdConfig,
    this.snapshotAnalysis,
  });

  final VertexAiFeaturestoreEntitytypeMonitoringConfigCategoricalThresholdConfig?
  categoricalThresholdConfig;

  final VertexAiFeaturestoreEntitytypeMonitoringConfigImportFeaturesAnalysis?
  importFeaturesAnalysis;

  final VertexAiFeaturestoreEntitytypeMonitoringConfigNumericalThresholdConfig?
  numericalThresholdConfig;

  final VertexAiFeaturestoreEntitytypeMonitoringConfigSnapshotAnalysis?
  snapshotAnalysis;

  Map<String, Object?> encode() => {
    if (categoricalThresholdConfig != null)
      'categorical_threshold_config': categoricalThresholdConfig!.encode(),
    if (importFeaturesAnalysis != null)
      'import_features_analysis': importFeaturesAnalysis!.encode(),
    if (numericalThresholdConfig != null)
      'numerical_threshold_config': numericalThresholdConfig!.encode(),
    if (snapshotAnalysis != null)
      'snapshot_analysis': snapshotAnalysis!.encode(),
  };
}

/// Typed helper for the `monitoring_config.categorical_threshold_config` block of
/// `google_vertex_ai_featurestore_entitytype` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeMonitoringConfigCategoricalThresholdConfig {
  const VertexAiFeaturestoreEntitytypeMonitoringConfigCategoricalThresholdConfig({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `monitoring_config.import_features_analysis` block of
/// `google_vertex_ai_featurestore_entitytype` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeMonitoringConfigImportFeaturesAnalysis {
  const VertexAiFeaturestoreEntitytypeMonitoringConfigImportFeaturesAnalysis({
    this.anomalyDetectionBaseline,
    this.state,
  });

  final TfArg<String>? anomalyDetectionBaseline;

  final TfArg<String>? state;

  Map<String, Object?> encode() => {
    if (anomalyDetectionBaseline != null)
      'anomaly_detection_baseline': anomalyDetectionBaseline!.toTfJson(),
    if (state != null) 'state': state!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_config.numerical_threshold_config` block of
/// `google_vertex_ai_featurestore_entitytype` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeMonitoringConfigNumericalThresholdConfig {
  const VertexAiFeaturestoreEntitytypeMonitoringConfigNumericalThresholdConfig({
    required this.value,
  });

  final TfArg<num> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `monitoring_config.snapshot_analysis` block of
/// `google_vertex_ai_featurestore_entitytype` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEntitytypeMonitoringConfigSnapshotAnalysis {
  const VertexAiFeaturestoreEntitytypeMonitoringConfigSnapshotAnalysis({
    this.disabled,
    this.monitoringIntervalDays,
    this.stalenessDays,
  });

  final TfArg<bool>? disabled;

  final TfArg<num>? monitoringIntervalDays;

  final TfArg<num>? stalenessDays;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (monitoringIntervalDays != null)
      'monitoring_interval_days': monitoringIntervalDays!.toTfJson(),
    if (stalenessDays != null) 'staleness_days': stalenessDays!.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_featurestore_entitytype`.
///
/// An entity type is a type of object in a system that needs to be modeled and
/// have stored information about. For example, driver is an entity type, and
/// driver0 is an instance of an entity type driver.
///
/// Vertex AI Feature Store **entity type** — grouping of features under a
/// [GoogleVertexAiFeaturestore].
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// entity-type SKU** after MCP `list_skus` (Feature Store SKUs are store
/// online/offline serving and storage). Billing stays on the parent
/// Featurestore's online serving / storage. Deferred with the never_apply
/// Featurestore Wave (no apply-smoke quickstart).
///
/// Requires [featurestore] (full resource name or id). Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiFeaturestoreEntitytype(
///   localName: 'user',
///   featurestore: store.nameRef,
///   name: TfArg.literal('user'),
/// );
/// ```
final class GoogleVertexAiFeaturestoreEntitytype extends Resource {
  static const String tfType = 'google_vertex_ai_featurestore_entitytype';

  GoogleVertexAiFeaturestoreEntitytype({
    required super.localName,
    required TfArg<String> featurestore,
    TfArg<String>? name,
    TfArg<String>? description,
    VertexAiFeaturestoreEntitytypeMonitoringConfig? monitoringConfig,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'featurestore': featurestore,
           if (name != null) 'name': name,
           if (description != null) 'description': description,
           if (monitoringConfig != null)
             'monitoring_config': TfArg.literal(monitoringConfig.encode()),
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeaturestoreEntitytypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
