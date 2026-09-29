// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vector_search_index`.
const Set<String> _googleVectorSearchIndexSensitive = <String>{};

/// Vector Search Index Distance enum for `distance_metric`.
enum VectorSearchIndexDistanceMetric implements TerraformEnum {
  dotProduct('DOT_PRODUCT'),
  cosineDistance('COSINE_DISTANCE');

  const VectorSearchIndexDistanceMetric(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dedicated_infrastructure` block of
/// `google_vector_search_index` (derived from provider schema).
@immutable
final class VectorSearchIndexDedicatedInfrastructure {
  const VectorSearchIndexDedicatedInfrastructure({
    this.mode,
    this.autoscalingSpec,
  });

  final TfArg<VectorSearchIndexDedicatedInfrastructureMode>? mode;

  final VectorSearchIndexDedicatedInfrastructureAutoscalingSpec?
  autoscalingSpec;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'autoscaling_spec': ?autoscalingSpec?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum VectorSearchIndexDedicatedInfrastructureMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  storageOptimized('STORAGE_OPTIMIZED'),
  performanceOptimized('PERFORMANCE_OPTIMIZED');

  const VectorSearchIndexDedicatedInfrastructureMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dedicated_infrastructure.autoscaling_spec` block of
/// `google_vector_search_index` (derived from provider schema).
@immutable
final class VectorSearchIndexDedicatedInfrastructureAutoscalingSpec {
  const VectorSearchIndexDedicatedInfrastructureAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  final TfArg<num>? maxReplicaCount;

  final TfArg<num>? minReplicaCount;

  Map<String, Object?> encode() => {
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': ?minReplicaCount?.toTfJson(),
  };
}

/// Typed helper for the `dense_scann` block of
/// `google_vector_search_index` (derived from provider schema).
@immutable
final class VectorSearchIndexDenseScann {
  const VectorSearchIndexDenseScann({this.featureNormType});

  final TfArg<VectorSearchIndexDenseScannFeatureNormType>? featureNormType;

  Map<String, Object?> encode() => {
    'feature_norm_type': ?featureNormType?.toTfJson(),
  };
}

/// `feature_norm_type` — derived from the provider schema description.
enum VectorSearchIndexDenseScannFeatureNormType implements TerraformEnum {
  featureNormTypeUnspecified('FEATURE_NORM_TYPE_UNSPECIFIED'),
  none('NONE'),
  unitL2Norm('UNIT_L2_NORM');

  const VectorSearchIndexDenseScannFeatureNormType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_vector_search_index`.
///
/// An Index defines an approximate nearest-neighbor search structure over a
/// field of a Vector Search Collection.
///

/// Vector Search 2.0 **index** — approximate nearest-neighbor structure over
/// one [GoogleVectorSearchCollection] vector field.
///
/// When [dedicatedInfrastructure] is omitted, the API defaults to
/// `PERFORMANCE_OPTIMIZED` with `min_replica_count=2` /
/// `max_replica_count=2`, which bills Vector Search V2 capacity units by
/// the hour. Prefer creating the collection first (and ingesting data)
/// before attaching an index in production workflows.
///
/// Enable `vectorsearch.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleVectorSearchIndex extends Resource {
  static const String tfType = 'google_vector_search_index';

  GoogleVectorSearchIndex({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> indexId,
    required TfArg<String> indexField,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? distanceMetric,
    TfArg<List<String>>? filterFields,
    TfArg<List<String>>? storeFields,
    VectorSearchIndexDenseScann? denseScann,
    VectorSearchIndexDedicatedInfrastructure? dedicatedInfrastructure,
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
           'location': location,
           'collection_id': collectionId,
           'index_id': indexId,
           'index_field': indexField,
           'display_name': ?displayName,
           'description': ?description,
           'distance_metric': ?distanceMetric,
           'filter_fields': ?filterFields,
           'store_fields': ?storeFields,
           if (denseScann != null)
             'dense_scann': TfArg.literal(denseScann.encode()),
           if (dedicatedInfrastructure != null)
             'dedicated_infrastructure': TfArg.literal(
               dedicatedInfrastructure.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVectorSearchIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVectorSearchIndex>`.
  RefTo<GoogleVectorSearchIndex> get ref => RefTo.of(this);

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

  /// Reference to `index_id` attribute.
  TfRef<String> get indexIdRef => TfRef.attribute<String>(this, 'index_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
