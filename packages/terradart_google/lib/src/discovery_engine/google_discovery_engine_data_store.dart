// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_discovery_engine_data_store`.
const Set<String> _googleDiscoveryEngineDataStoreSensitive = <String>{};

/// Discovery Engine Data Store Content enum for `content_config`.
extension type const DiscoveryEngineDataStoreContentConfig._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineDataStoreContentConfig.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataStoreContentConfig.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineDataStoreContentConfig.arg(TfArg<String> arg)
    : this._(arg);

  static const noContent = DiscoveryEngineDataStoreContentConfig._(
    TfArgLiteral('NO_CONTENT'),
  );
  static const contentRequired = DiscoveryEngineDataStoreContentConfig._(
    TfArgLiteral('CONTENT_REQUIRED'),
  );
  static const publicWebsite = DiscoveryEngineDataStoreContentConfig._(
    TfArgLiteral('PUBLIC_WEBSITE'),
  );

  static const List<DiscoveryEngineDataStoreContentConfig> values = [
    noContent,
    contentRequired,
    publicWebsite,
  ];
}

/// Discovery Engine Data Store Industry enum for `industry_vertical`.
extension type const DiscoveryEngineDataStoreIndustryVertical._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineDataStoreIndustryVertical.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineDataStoreIndustryVertical.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineDataStoreIndustryVertical.arg(TfArg<String> arg)
    : this._(arg);

  static const generic = DiscoveryEngineDataStoreIndustryVertical._(
    TfArgLiteral('GENERIC'),
  );
  static const media = DiscoveryEngineDataStoreIndustryVertical._(
    TfArgLiteral('MEDIA'),
  );
  static const healthcareFhir = DiscoveryEngineDataStoreIndustryVertical._(
    TfArgLiteral('HEALTHCARE_FHIR'),
  );

  static const List<DiscoveryEngineDataStoreIndustryVertical> values = [
    generic,
    media,
    healthcareFhir,
  ];
}

/// Typed helper for the `advanced_site_search_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreAdvancedSiteSearchConfig {
  const DiscoveryEngineDataStoreAdvancedSiteSearchConfig({
    this.disableAutomaticRefresh,
    this.disableInitialIndex,
  });

  final TfArg<bool>? disableAutomaticRefresh;

  final TfArg<bool>? disableInitialIndex;

  Map<String, Object?> encode() => {
    'disable_automatic_refresh': ?disableAutomaticRefresh?.toTfJson(),
    'disable_initial_index': ?disableInitialIndex?.toTfJson(),
  };
}

/// Typed helper for the `document_processing_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreDocumentProcessingConfig {
  const DiscoveryEngineDataStoreDocumentProcessingConfig({
    this.chunkingConfig,
    this.defaultParsingConfig,
    this.parsingConfigOverrides,
  });

  final DiscoveryEngineDataStoreChunkingConfig? chunkingConfig;

  final DiscoveryEngineDataStoreDefaultParsingConfig? defaultParsingConfig;

  final List<DiscoveryEngineDataStoreParsingConfigOverrides>?
  parsingConfigOverrides;

  Map<String, Object?> encode() => {
    'chunking_config': ?chunkingConfig?.encode(),
    'default_parsing_config': ?defaultParsingConfig?.encode(),
    if (parsingConfigOverrides != null)
      'parsing_config_overrides': [
        for (final e in parsingConfigOverrides!) e.encode(),
      ],
  };
}

/// Typed helper for the `document_processing_config.chunking_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreChunkingConfig {
  const DiscoveryEngineDataStoreChunkingConfig({
    this.layoutBasedChunkingConfig,
  });

  final DiscoveryEngineDataStoreLayoutBasedChunkingConfig?
  layoutBasedChunkingConfig;

  Map<String, Object?> encode() => {
    'layout_based_chunking_config': ?layoutBasedChunkingConfig?.encode(),
  };
}

/// Typed helper for the `document_processing_config.chunking_config.layout_based_chunking_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreLayoutBasedChunkingConfig {
  const DiscoveryEngineDataStoreLayoutBasedChunkingConfig({
    this.chunkSize,
    this.includeAncestorHeadings,
  });

  final TfArg<num>? chunkSize;

  final TfArg<bool>? includeAncestorHeadings;

  Map<String, Object?> encode() => {
    'chunk_size': ?chunkSize?.toTfJson(),
    'include_ancestor_headings': ?includeAncestorHeadings?.toTfJson(),
  };
}

/// Typed helper for the `document_processing_config.default_parsing_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreDefaultParsingConfig {
  const DiscoveryEngineDataStoreDefaultParsingConfig({
    this.digitalParsingConfig,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  final DiscoveryEngineDataStoreDigitalParsingConfig? digitalParsingConfig;

  final DiscoveryEngineDataStoreLayoutParsingConfig? layoutParsingConfig;

  final DiscoveryEngineDataStoreOcrParsingConfig? ocrParsingConfig;

  Map<String, Object?> encode() => {
    'digital_parsing_config': ?digitalParsingConfig?.encode(),
    'layout_parsing_config': ?layoutParsingConfig?.encode(),
    'ocr_parsing_config': ?ocrParsingConfig?.encode(),
  };
}

/// Typed helper for the `document_processing_config.default_parsing_config.digital_parsing_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DiscoveryEngineDataStoreDigitalParsingConfig {
  const DiscoveryEngineDataStoreDigitalParsingConfig();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `document_processing_config.default_parsing_config.layout_parsing_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DiscoveryEngineDataStoreLayoutParsingConfig {
  const DiscoveryEngineDataStoreLayoutParsingConfig({
    this.enableGetProcessedDocument,
    this.enableImageAnnotation,
    this.enableLlmLayoutParsing,
    this.enableTableAnnotation,
    this.excludeHtmlClasses,
    this.excludeHtmlElements,
    this.excludeHtmlIds,
    this.structuredContentTypes,
  });

  final TfArg<bool>? enableGetProcessedDocument;

  final TfArg<bool>? enableImageAnnotation;

  final TfArg<bool>? enableLlmLayoutParsing;

  final TfArg<bool>? enableTableAnnotation;

  final TfArg<List<String>>? excludeHtmlClasses;

  final TfArg<List<String>>? excludeHtmlElements;

  final TfArg<List<String>>? excludeHtmlIds;

  final TfArg<List<String>>? structuredContentTypes;

  Map<String, Object?> encode() => {
    'enable_get_processed_document': ?enableGetProcessedDocument?.toTfJson(),
    'enable_image_annotation': ?enableImageAnnotation?.toTfJson(),
    'enable_llm_layout_parsing': ?enableLlmLayoutParsing?.toTfJson(),
    'enable_table_annotation': ?enableTableAnnotation?.toTfJson(),
    'exclude_html_classes': ?excludeHtmlClasses?.toTfJson(),
    'exclude_html_elements': ?excludeHtmlElements?.toTfJson(),
    'exclude_html_ids': ?excludeHtmlIds?.toTfJson(),
    'structured_content_types': ?structuredContentTypes?.toTfJson(),
  };
}

/// Typed helper for the `document_processing_config.default_parsing_config.ocr_parsing_config` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DiscoveryEngineDataStoreOcrParsingConfig {
  const DiscoveryEngineDataStoreOcrParsingConfig({this.useNativeText});

  final TfArg<bool>? useNativeText;

  Map<String, Object?> encode() => {
    'use_native_text': ?useNativeText?.toTfJson(),
  };
}

/// Typed helper for the `document_processing_config.parsing_config_overrides` block of
/// `google_discovery_engine_data_store` (derived from provider schema).
@immutable
final class DiscoveryEngineDataStoreParsingConfigOverrides {
  const DiscoveryEngineDataStoreParsingConfigOverrides({
    required this.fileType,
    this.digitalParsingConfig,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  final TfArg<String> fileType;

  final DiscoveryEngineDataStoreDigitalParsingConfig? digitalParsingConfig;

  final DiscoveryEngineDataStoreLayoutParsingConfig? layoutParsingConfig;

  final DiscoveryEngineDataStoreOcrParsingConfig? ocrParsingConfig;

  Map<String, Object?> encode() => {
    'file_type': fileType.toTfJson(),
    'digital_parsing_config': ?digitalParsingConfig?.encode(),
    'layout_parsing_config': ?layoutParsingConfig?.encode(),
    'ocr_parsing_config': ?ocrParsingConfig?.encode(),
  };
}

/// Factory wrapper for `google_discovery_engine_data_store`.
///
/// Data store is a collection of websites and documents used to find answers
/// for end-user's questions in Discovery Engine (a.k.a. Vertex AI Search and
/// Conversation).
final class GoogleDiscoveryEngineDataStore extends Resource {
  static const String tfType = 'google_discovery_engine_data_store';

  GoogleDiscoveryEngineDataStore(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> dataStoreId,
    required TfArg<String> displayName,
    required DiscoveryEngineDataStoreIndustryVertical industryVertical,
    DiscoveryEngineDataStoreContentConfig? contentConfig,
    TfArg<List<String>>? solutionTypes,
    TfArg<bool>? skipDefaultSchemaCreation,
    TfArg<String>? project,
    TfArg<bool>? aclEnabled,
    TfArg<bool>? createAdvancedSiteSearch,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    DiscoveryEngineDataStoreAdvancedSiteSearchConfig? advancedSiteSearchConfig,
    DiscoveryEngineDataStoreDocumentProcessingConfig? documentProcessingConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_store_id': dataStoreId,
           'display_name': displayName,
           'industry_vertical': industryVertical,
           'content_config': ?contentConfig,
           'solution_types': ?solutionTypes,
           'skip_default_schema_creation': ?skipDefaultSchemaCreation,
           'project': ?project,
           'acl_enabled': ?aclEnabled,
           'create_advanced_site_search': ?createAdvancedSiteSearch,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           if (advancedSiteSearchConfig != null)
             'advanced_site_search_config': TfArg.literal(
               advancedSiteSearchConfig.encode(),
             ),
           if (documentProcessingConfig != null)
             'document_processing_config': TfArg.literal(
               documentProcessingConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineDataStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineDataStore>`.
  RefTo<GoogleDiscoveryEngineDataStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `default_schema_id` attribute.
  TfRef<String> get defaultSchemaId =>
      TfRef.attribute<String>(this, 'default_schema_id');

  /// Reference to `acl_enabled` attribute.
  TfRef<bool> get aclEnabled => TfRef.attribute<bool>(this, 'acl_enabled');

  /// Reference to `content_config` attribute.
  TfRef<String> get contentConfig =>
      TfRef.attribute<String>(this, 'content_config');

  /// Reference to `create_advanced_site_search` attribute.
  TfRef<bool> get createAdvancedSiteSearch =>
      TfRef.attribute<bool>(this, 'create_advanced_site_search');

  /// Reference to `data_store_id` attribute.
  TfRef<String> get dataStoreId =>
      TfRef.attribute<String>(this, 'data_store_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVertical =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `skip_default_schema_creation` attribute.
  TfRef<bool> get skipDefaultSchemaCreation =>
      TfRef.attribute<bool>(this, 'skip_default_schema_creation');

  /// Reference to `solution_types` attribute.
  TfRef<List<String>> get solutionTypes =>
      TfRef.attribute<List<String>>(this, 'solution_types');
}
