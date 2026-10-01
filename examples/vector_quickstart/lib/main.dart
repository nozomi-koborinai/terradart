/// Vector Search 2.0 collection + data object quickstart.
///
/// Enables `vectorsearch.googleapis.com` and creates:
/// - a regional [GoogleVectorSearchCollection] with a minimal data schema and
///   a dense vector field (dimensions only — no Vertex embedding config),
/// - one [GoogleVectorSearchDataObject] row (zero vector) in that collection.
///
/// Applying is metered: a data object bills per write operation and for
/// stored payload (see the README's "Before you apply").
///
/// `google_vector_search_index` stays in `tool/example_debt.yaml` (hourly
/// capacity-unit defaults).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/vector.dart';

/// Vector Search stack: schema collection + one payload data object.
final class VectorSearchStack extends Stack {
  VectorSearchStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    const location = 'us-central1';
    // Match collection vector_schema dimensions; zeros avoid inventing content.
    final zeroEmbedding = List<num>.filled(768, 0.0);

    final apiVectorSearch = add(
      GoogleProjectService(
        'api_vectorsearch',
        service: .literal('vectorsearch.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final collection = add(
      GoogleVectorSearchCollection(
        'docs',
        location: .literal(location),
        collectionId: .literal('terradart-docs'),
        displayName: .literal('TerraDart docs'),
        description: .literal('Vector Search collection + data object'),
        dataSchema: .literal(
          '{"type":"object","properties":{"title":{"type":"string"},'
          '"plot":{"type":"string"}}}',
        ),
        vectorSchema: [
          VectorSearchCollectionVectorSchema(
            fieldName: .literal('text_embedding'),
            denseVector: .new(dimensions: .literal(768)),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiVectorSearch],
      ),
    );

    add(
      GoogleVectorSearchDataObject(
        'sample_doc',
        location: .literal(location),
        collectionId: collection.ref,
        dataObjectId: .literal('terradart-sample-doc'),
        data: .literal(
          '{"title":"TerraDart smoke","plot":"Schema coverage only"}',
        ),
        vectors: [
          VectorSearchDataObjectVectors(
            fieldName: .literal('text_embedding'),
            dense: .new(values: .literal(zeroEmbedding)),
          ),
        ],
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiVectorSearch, collection],
      ),
    );
  }
}
