// packages/terradart_google/lib/dataplex.dart
/// Dataplex: governed data products, Universal Catalog metadata (entry groups /
/// entry types / aspect types), and their IAM adjuncts.
library;

export 'src/dataplex/google_dataplex_data_product.dart'
    show
        DataplexDataProductAccessApprovalConfig,
        GoogleDataplexDataProduct;
export 'src/dataplex/google_dataplex_data_product_iam_member.dart'
    show GoogleDataplexDataProductIamMember;
export 'src/dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;
export 'src/dataplex/google_dataplex_entry_type.dart'
    show GoogleDataplexEntryType;
export 'src/dataplex/google_dataplex_aspect_type.dart'
    show GoogleDataplexAspectType, DataplexAspectTypeDataClassification;
export 'src/dataplex/google_dataplex_entry_group_iam_member.dart'
    show GoogleDataplexEntryGroupIamMember;
export 'src/dataplex/google_dataplex_entry_type_iam_member.dart'
    show GoogleDataplexEntryTypeIamMember;
export 'src/dataplex/google_dataplex_aspect_type_iam_member.dart'
    show GoogleDataplexAspectTypeIamMember;
