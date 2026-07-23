// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_featurestore`.
const Set<String> _googleVertexAiFeaturestoreSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_featurestore` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreEncryptionSpec {
  const VertexAiFeaturestoreEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `online_serving_config` block of
/// `google_vertex_ai_featurestore` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreOnlineServingConfig {
  const VertexAiFeaturestoreOnlineServingConfig({
    this.fixedNodeCount,
    this.scaling,
  });

  final TfArg<num>? fixedNodeCount;

  final VertexAiFeaturestoreOnlineServingConfigScaling? scaling;

  Map<String, Object?> encode() => {
    if (fixedNodeCount != null) 'fixed_node_count': fixedNodeCount!.toTfJson(),
    if (scaling != null) 'scaling': scaling!.encode(),
  };
}

/// Typed helper for the `online_serving_config.scaling` block of
/// `google_vertex_ai_featurestore` (derived from provider schema).
@immutable
final class VertexAiFeaturestoreOnlineServingConfigScaling {
  const VertexAiFeaturestoreOnlineServingConfigScaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  final TfArg<num> maxNodeCount;

  final TfArg<num> minNodeCount;

  Map<String, Object?> encode() => {
    'max_node_count': maxNodeCount.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_featurestore`.
///
/// A collection of DataItems and Annotations on them.
///
/// Vertex AI **Feature Store** (legacy) — container for entity types and
/// features with optional online serving capacity.
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` bills Feature
/// Store **online serving nodes** while configured (SKU `74D1-6081-582A`
/// **$0.94/h**; alternate online-node SKU `6875-441B-3793` **$1.11/h**;
/// us-central1 optimized online node `565E-845D-9FC2` **$0.3/h**) plus
/// online/offline storage (e.g. online storage `43C6-5652-01F4`
/// **$0.29/GiBy.mo**). Setting [onlineServingConfig] with
/// `fixedNodeCount` / scaling reserves node capacity until destroy.
/// Too expensive for apply-smoke — factories ship without a quickstart.
///
/// Pair with [GoogleVertexAiFeaturestoreEntitytype] and
/// [GoogleVertexAiFeaturestoreEntitytypeFeature]. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiFeaturestore(
///   localName: 'fs',
///   name: TfArg.literal('terradart_fs'),
///   region: TfArg.literal('us-central1'),
///   onlineServingConfig: VertexAiFeaturestoreOnlineServingConfig(
///     fixedNodeCount: TfArg.literal(1),
///   ),
/// );
/// ```
final class GoogleVertexAiFeaturestore extends Resource {
  static const String tfType = 'google_vertex_ai_featurestore';

  GoogleVertexAiFeaturestore({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    VertexAiFeaturestoreOnlineServingConfig? onlineServingConfig,
    VertexAiFeaturestoreEncryptionSpec? encryptionSpec,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? forceDestroy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (onlineServingConfig != null)
             'online_serving_config': TfArg.literal(
               onlineServingConfig.encode(),
             ),
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (labels != null) 'labels': labels,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiFeaturestoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` / self-link attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
