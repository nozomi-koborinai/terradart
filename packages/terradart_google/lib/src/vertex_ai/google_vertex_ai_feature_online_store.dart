// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store`.
const Set<String> _googleVertexAiFeatureOnlineStoreSensitive = <String>{};

// ===========================================================================
// VertexAiFeatureOnlineStoreStorage — sealed (Bigtable | Optimized)
// ===========================================================================

/// Online serving storage for [GoogleVertexAiFeatureOnlineStore]. Sealed so
/// the MM `exactly_one_of` (`bigtable` / `optimized`) is exhaustive at the
/// type level.
sealed class VertexAiFeatureOnlineStoreStorage {
  const VertexAiFeatureOnlineStoreStorage();

  /// Terraform nested-block key (`bigtable` or `optimized`).
  String get blockKey;

  /// Encoded as a single-element list (`nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `bigtable` storage — Cloud Bigtable instance with required autoscaling.
@immutable
final class VertexAiFeatureOnlineStoreBigtable
    extends VertexAiFeatureOnlineStoreStorage {
  const VertexAiFeatureOnlineStoreBigtable({
    required this.autoScaling,
    this.enableDirectBigtableAccess,
    this.zone,
  });

  final VertexAiFeatureOnlineStoreBigtableAutoScaling autoScaling;
  final TfArg<bool>? enableDirectBigtableAccess;
  final TfArg<String>? zone;

  @override
  String get blockKey => 'bigtable';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'auto_scaling': autoScaling.encode(),
      if (enableDirectBigtableAccess != null)
        'enable_direct_bigtable_access': enableDirectBigtableAccess!.toTfJson(),
      if (zone != null) 'zone': zone!.toTfJson(),
    },
  ];
}

/// Autoscaling config under [VertexAiFeatureOnlineStoreBigtable]
/// (`auto_scaling` list max 1).
@immutable
final class VertexAiFeatureOnlineStoreBigtableAutoScaling {
  const VertexAiFeatureOnlineStoreBigtableAutoScaling({
    required this.minNodeCount,
    required this.maxNodeCount,
    this.cpuUtilizationTarget,
  });

  final TfArg<int> minNodeCount;
  final TfArg<int> maxNodeCount;
  final TfArg<int>? cpuUtilizationTarget;

  List<Map<String, Object?>> encode() => [
    {
      'min_node_count': minNodeCount.toTfJson(),
      'max_node_count': maxNodeCount.toTfJson(),
      if (cpuUtilizationTarget != null)
        'cpu_utilization_target': cpuUtilizationTarget!.toTfJson(),
    },
  ];
}

/// `optimized` storage — empty object (`allow_empty_object` in MM).
@immutable
final class VertexAiFeatureOnlineStoreOptimized
    extends VertexAiFeatureOnlineStoreStorage {
  const VertexAiFeatureOnlineStoreOptimized();

  @override
  String get blockKey => 'optimized';

  @override
  List<Map<String, Object?>> encode() => const [<String, Object?>{}];
}

/// Factory wrapper for `google_vertex_ai_feature_online_store`.
///
/// Vertex AI Feature Online Store provides a centralized repository for serving
/// ML features and embedding indexes at low latency. The Feature Online Store
/// is a top-level container.
///
/// Vertex AI Feature Registry **Feature Online Store** — online serving
/// backend for FeatureViews (Bigtable or Optimized storage).
///
/// Choose exactly one [VertexAiFeatureOnlineStoreStorage]:
/// - [VertexAiFeatureOnlineStoreBigtable] — Bigtable autoscaling nodes.
/// - [VertexAiFeatureOnlineStoreOptimized] — empty Optimized storage block.
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` bills Feature
/// Store online serving while the store exists (optimized us-central1 SKU
/// `565E-845D-9FC2` **$0.3/h**; Bigtable online node e.g. us-east1
/// `2EA3-C6D3-6BFF` **$1.06/h**; legacy online-node SKUs `74D1-6081-582A`
/// **$0.94/h** / `6875-441B-3793` **$1.11/h**). Bigtable requires
/// `autoScaling.minNodeCount` ≥ 1. Too expensive for apply-smoke —
/// factories ship without a quickstart.
///
/// Pair with [GoogleVertexAiFeatureOnlineStoreFeatureview]. Enable
/// `aiplatform.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example (Optimized):
/// ```dart
/// GoogleVertexAiFeatureOnlineStore(
///   localName: 'fos',
///   name: TfArg.literal('terradart_fos'),
///   region: TfArg.literal('us-central1'),
///   storage: const VertexAiFeatureOnlineStoreOptimized(),
/// );
/// ```
///
/// Example (Bigtable):
/// ```dart
/// GoogleVertexAiFeatureOnlineStore(
///   localName: 'fos_bt',
///   name: TfArg.literal('terradart_fos_bt'),
///   region: TfArg.literal('us-central1'),
///   storage: VertexAiFeatureOnlineStoreBigtable(
///     autoScaling: VertexAiFeatureOnlineStoreBigtableAutoScaling(
///       minNodeCount: TfArg.literal(1),
///       maxNodeCount: TfArg.literal(3),
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiFeatureOnlineStore extends Resource {
  static const String tfType = 'google_vertex_ai_feature_online_store';

  GoogleVertexAiFeatureOnlineStore({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required VertexAiFeatureOnlineStoreStorage storage,
    TfArg<bool>? forceDestroy,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           storage.blockKey: TfArg.literal(storage.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiFeatureOnlineStoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

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
