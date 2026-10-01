// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vector_search_data_object`.
const Set<String> _googleVectorSearchDataObjectSensitive = <String>{};

/// Typed helper for the `vectors` block of
/// `google_vector_search_data_object` (derived from provider schema).
@immutable
final class VectorSearchDataObjectVectors {
  const VectorSearchDataObjectVectors({
    required this.fieldName,
    this.dense,
    this.sparse,
  });

  final TfArg<String> fieldName;

  final VectorSearchDataObjectDense? dense;

  final VectorSearchDataObjectSparse? sparse;

  Map<String, Object?> encode() => {
    'field_name': fieldName.toTfJson(),
    'dense': ?dense?.encode(),
    'sparse': ?sparse?.encode(),
  };
}

/// Typed helper for the `vectors.dense` block of
/// `google_vector_search_data_object` (derived from provider schema).
@immutable
final class VectorSearchDataObjectDense {
  const VectorSearchDataObjectDense({required this.values});

  final TfArg<List<num>> values;

  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `vectors.sparse` block of
/// `google_vector_search_data_object` (derived from provider schema).
@immutable
final class VectorSearchDataObjectSparse {
  const VectorSearchDataObjectSparse({
    required this.indices,
    required this.values,
  });

  final TfArg<List<num>> indices;

  final TfArg<List<num>> values;

  Map<String, Object?> encode() => {
    'indices': indices.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `google_vector_search_data_object`.
///
/// A DataObject is a single item of data (with optional vectors) stored in a
/// Vector Search Collection. Each DataObject conforms to the parent
/// Collection's `data_schema` and `vector_schema`.
///
/// This resource always issues one `CreateDataObject` request per Terraform
/// resource block. It does NOT use the `batchCreate` REST endpoint --
/// Terraform's resource lifecycle is inherently per-object, so batching across
/// resources is not modeled. When you use `for_each` or `count`, Terraform will
/// still issue individual requests, up to `-parallelism` in parallel.
///
/// For ingesting more than a few hundred items, prefer one of the following
/// out-of-band paths instead of Terraform:
///
/// * `importDataObjects` (bulk ingest from Cloud Storage) -- highest
/// throughput, but only available *before* any Index is created on the
/// Collection. * `batchCreate` (up to ~1000 items per call) -- available at any
/// time, but must be driven from your own client code, not Terraform.
///
/// Once an Index exists on the Collection, `importDataObjects` is no longer
/// available and DataObjects must be created via `CreateDataObject` (as this
/// resource does) or via `batchCreate`.
///
/// Vector Search 2.0 **data object** — one JSON row (optional dense/sparse
/// vectors) stored in a parent [GoogleVectorSearchCollection].
///
/// **Cost / apply:** Payload storage and write ops meter while the object
/// exists (Cloud Billing Catalog service `0181-3AAD-0CB9` Data Stored SKU
/// `1AE9-553C-C219` **$0.3/GiBy.mo**, Write Operations `C1E5-1A7F-E9B3`
/// **$0.18/count**). No index-serving capacity units. Ships without a
/// quickstart extension (`tool/example_debt.yaml`) — `vector_quickstart`
/// covers the parent collection only.
///
/// Requires [location], [collectionId], and [dataObjectId]. Prefer
/// bulk `importDataObjects` / `batchCreate` outside Terraform for large
/// ingest. Enable `vectorsearch.googleapis.com` via [GoogleProjectService]
/// before apply.
final class GoogleVectorSearchDataObject extends Resource {
  static const String tfType = 'google_vector_search_data_object';

  GoogleVectorSearchDataObject({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> dataObjectId,
    TfArg<String>? data,
    List<VectorSearchDataObjectVectors>? vectors,
    TfArg<String>? etag,
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
           'data_object_id': dataObjectId,
           'data': ?data,
           if (vectors != null)
             'vectors': TfArg.literal([for (final e in vectors) e.encode()]),
           'etag': ?etag,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVectorSearchDataObjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVectorSearchDataObject>`.
  RefTo<GoogleVectorSearchDataObject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `data` attribute.
  TfRef<String> get dataRef => TfRef.attribute<String>(this, 'data');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etagRef => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `data_object_id` attribute.
  TfRef<String> get dataObjectIdRef =>
      TfRef.attribute<String>(this, 'data_object_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
