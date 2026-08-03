// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Vector Search 2.0 — collections (typed data + vector schema) and ANN
/// indexes over a collection field (ScaNN / dedicated infrastructure).
library;

export 'src/vector/google_vector_search_collection.dart'
    show
        GoogleVectorSearchCollection,
        VectorSearchCollectionEncryptionSpec,
        VectorSearchCollectionVectorSchema,
        VectorSearchCollectionVectorSchemaDenseVector,
        VectorSearchCollectionVectorSchemaDenseVectorVertexEmbeddingConfig,
        VectorSearchCollectionVectorSchemaSparseVector;
export 'src/vector/google_vector_search_data_object.dart'
    show
        GoogleVectorSearchDataObject,
        VectorSearchDataObjectVectors,
        VectorSearchDataObjectVectorsDense,
        VectorSearchDataObjectVectorsSparse;
export 'src/vector/google_vector_search_index.dart'
    show
        GoogleVectorSearchIndex,
        VectorSearchIndexDedicatedInfrastructure,
        VectorSearchIndexDedicatedInfrastructureAutoscalingSpec,
        VectorSearchIndexDedicatedInfrastructureMode,
        VectorSearchIndexDenseScann,
        VectorSearchIndexDenseScannFeatureNormType,
        VectorSearchIndexDistanceMetric;
