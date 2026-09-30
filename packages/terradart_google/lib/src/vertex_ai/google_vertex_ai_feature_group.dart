// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_group`.
const Set<String> _googleVertexAiFeatureGroupSensitive = <String>{};

/// Typed helper for the `big_query` block of
/// `google_vertex_ai_feature_group` (derived from provider schema).
@immutable
final class VertexAiFeatureGroupBigQuery {
  const VertexAiFeatureGroupBigQuery({
    this.entityIdColumns,
    required this.bigQuerySource,
  });

  final TfArg<List<String>>? entityIdColumns;

  final VertexAiFeatureGroupBigQueryBigQuerySource bigQuerySource;

  Map<String, Object?> encode() => {
    'entity_id_columns': ?entityIdColumns?.toTfJson(),
    'big_query_source': bigQuerySource.encode(),
  };
}

/// Typed helper for the `big_query.big_query_source` block of
/// `google_vertex_ai_feature_group` (derived from provider schema).
@immutable
final class VertexAiFeatureGroupBigQueryBigQuerySource {
  const VertexAiFeatureGroupBigQueryBigQuerySource({required this.inputUri});

  final TfArg<String> inputUri;

  Map<String, Object?> encode() => {'input_uri': inputUri.toTfJson()};
}

/// Factory wrapper for `google_vertex_ai_feature_group`.
///
/// Vertex AI Feature Group.
final class GoogleVertexAiFeatureGroup extends Resource {
  static const String tfType = 'google_vertex_ai_feature_group';

  GoogleVertexAiFeatureGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    VertexAiFeatureGroupBigQuery? bigQuery,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           if (bigQuery != null) 'big_query': TfArg.literal(bigQuery.encode()),
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiFeatureGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiFeatureGroup>`.
  RefTo<GoogleVertexAiFeatureGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
