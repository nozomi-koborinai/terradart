// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ces_tool`.
const Set<String> _googleCesToolSensitive = <String>{};

/// Typed helper for the `agent_tool` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolAgentTool {
  const CesToolAgentTool({this.agent, this.description, required this.name});

  final TfArg<String>? agent;

  final TfArg<String>? description;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'agent': ?agent?.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `client_function` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolClientFunction {
  const CesToolClientFunction({
    this.description,
    required this.name,
    this.parameters,
    this.response,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final CesToolParameters? parameters;

  final CesToolResponse? response;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'parameters': ?parameters?.encode(),
    'response': ?response?.encode(),
  };
}

/// Typed helper for the `client_function.parameters` block of
/// `google_ces_tool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolParameters {
  const CesToolParameters({
    this.additionalProperties,
    this.anyOf,
    this.defaultCase,
    this.defs,
    this.description,
    this.enumCase,
    this.items,
    this.maxItems,
    this.maximum,
    this.minItems,
    this.minimum,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.required,
    this.title,
    required this.type,
    this.uniqueItems,
  });

  final TfArg<String>? additionalProperties;

  final TfArg<String>? anyOf;

  final TfArg<String>? defaultCase;

  final TfArg<String>? defs;

  final TfArg<String>? description;

  final TfArg<List<String>>? enumCase;

  final TfArg<String>? items;

  final TfArg<num>? maxItems;

  final TfArg<num>? maximum;

  final TfArg<num>? minItems;

  final TfArg<num>? minimum;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<String>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    'additional_properties': ?additionalProperties?.toTfJson(),
    'any_of': ?anyOf?.toTfJson(),
    'default': ?defaultCase?.toTfJson(),
    'defs': ?defs?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enum': ?enumCase?.toTfJson(),
    'items': ?items?.toTfJson(),
    'max_items': ?maxItems?.toTfJson(),
    'maximum': ?maximum?.toTfJson(),
    'min_items': ?minItems?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
    'nullable': ?nullable?.toTfJson(),
    'prefix_items': ?prefixItems?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'ref': ?ref?.toTfJson(),
    'required': ?required?.toTfJson(),
    'title': ?title?.toTfJson(),
    'type': type.toTfJson(),
    'unique_items': ?uniqueItems?.toTfJson(),
  };
}

/// Typed helper for the `client_function.response` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolResponse {
  const CesToolResponse({
    this.additionalProperties,
    this.anyOf,
    this.defaultCase,
    this.defs,
    this.description,
    this.enumCase,
    this.items,
    this.maxItems,
    this.maximum,
    this.minItems,
    this.minimum,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.required,
    this.title,
    required this.type,
    this.uniqueItems,
  });

  final TfArg<String>? additionalProperties;

  final TfArg<String>? anyOf;

  final TfArg<String>? defaultCase;

  final TfArg<String>? defs;

  final TfArg<String>? description;

  final TfArg<List<String>>? enumCase;

  final TfArg<String>? items;

  final TfArg<num>? maxItems;

  final TfArg<num>? maximum;

  final TfArg<num>? minItems;

  final TfArg<num>? minimum;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<String>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    'additional_properties': ?additionalProperties?.toTfJson(),
    'any_of': ?anyOf?.toTfJson(),
    'default': ?defaultCase?.toTfJson(),
    'defs': ?defs?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enum': ?enumCase?.toTfJson(),
    'items': ?items?.toTfJson(),
    'max_items': ?maxItems?.toTfJson(),
    'maximum': ?maximum?.toTfJson(),
    'min_items': ?minItems?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
    'nullable': ?nullable?.toTfJson(),
    'prefix_items': ?prefixItems?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'ref': ?ref?.toTfJson(),
    'required': ?required?.toTfJson(),
    'title': ?title?.toTfJson(),
    'type': type.toTfJson(),
    'unique_items': ?uniqueItems?.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreTool {
  const CesToolDataStoreTool({
    this.description,
    this.filterParameterBehavior,
    this.maxResults,
    required this.name,
    this.boostSpecs,
    this.source,
    this.modalityConfigs,
  });

  final TfArg<String>? description;

  final TfArg<CesToolFilterParameterBehavior>? filterParameterBehavior;

  final TfArg<num>? maxResults;

  final TfArg<String> name;

  final List<CesToolBoostSpecs>? boostSpecs;

  final CesToolSource? source;

  final List<CesToolModalityConfigs>? modalityConfigs;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'filter_parameter_behavior': ?filterParameterBehavior?.toTfJson(),
    'max_results': ?maxResults?.toTfJson(),
    'name': name.toTfJson(),
    if (boostSpecs != null)
      'boost_specs': [for (final e in boostSpecs!) e.encode()],
    ...?source?.encode(),
    if (modalityConfigs != null)
      'modality_configs': [for (final e in modalityConfigs!) e.encode()],
  };
}

/// At most one of `data_store_source`, `engine_source` on the `data_store_tool` block of `google_ces_tool`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dataStoreSource(...)`.
sealed class CesToolSource {
  const CesToolSource();

  /// Sets `data_store_source`.
  const factory CesToolSource.dataStoreSource(
    CesToolDataStoreSource dataStoreSource,
  ) = CesToolDataStoreSourceChoice;

  /// Sets `engine_source`.
  const factory CesToolSource.engineSource(CesToolEngineSource engineSource) =
      CesToolEngineSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CesToolSource.dataStoreSource] choice: sets `data_store_source`.
final class CesToolDataStoreSourceChoice extends CesToolSource {
  const CesToolDataStoreSourceChoice(this.dataStoreSource);

  final CesToolDataStoreSource dataStoreSource;

  @override
  String get blockKey => 'data_store_source';

  @override
  Map<String, Object?> encode() => {
    'data_store_source': dataStoreSource.encode(),
  };
}

/// The [CesToolSource.engineSource] choice: sets `engine_source`.
final class CesToolEngineSourceChoice extends CesToolSource {
  const CesToolEngineSourceChoice(this.engineSource);

  final CesToolEngineSource engineSource;

  @override
  String get blockKey => 'engine_source';

  @override
  Map<String, Object?> encode() => {'engine_source': engineSource.encode()};
}

/// `filter_parameter_behavior` — derived from the provider schema description.
enum CesToolFilterParameterBehavior implements TerraformEnum {
  filterParameterBehaviorUnspecified('FILTER_PARAMETER_BEHAVIOR_UNSPECIFIED'),
  alwaysInclude('ALWAYS_INCLUDE'),
  neverInclude('NEVER_INCLUDE');

  const CesToolFilterParameterBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_store_tool.boost_specs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolBoostSpecs {
  const CesToolBoostSpecs({required this.dataStores, required this.spec});

  final TfArg<List<String>> dataStores;

  final List<CesToolSpec> spec;

  Map<String, Object?> encode() => {
    'data_stores': dataStores.toTfJson(),
    'spec': [for (final e in spec) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolSpec {
  const CesToolSpec({required this.conditionBoostSpecs});

  final List<CesToolConditionBoostSpecs> conditionBoostSpecs;

  Map<String, Object?> encode() => {
    'condition_boost_specs': [for (final e in conditionBoostSpecs) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolConditionBoostSpecs {
  const CesToolConditionBoostSpecs({
    this.boost,
    required this.condition,
    this.boostControlSpec,
  });

  final TfArg<num>? boost;

  final TfArg<String> condition;

  final CesToolBoostControlSpec? boostControlSpec;

  Map<String, Object?> encode() => {
    'boost': ?boost?.toTfJson(),
    'condition': condition.toTfJson(),
    'boost_control_spec': ?boostControlSpec?.encode(),
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs.boost_control_spec` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolBoostControlSpec {
  const CesToolBoostControlSpec({
    this.attributeType,
    this.fieldName,
    this.interpolationType,
    this.controlPoints,
  });

  final TfArg<String>? attributeType;

  final TfArg<String>? fieldName;

  final TfArg<String>? interpolationType;

  final List<CesToolControlPoints>? controlPoints;

  Map<String, Object?> encode() => {
    'attribute_type': ?attributeType?.toTfJson(),
    'field_name': ?fieldName?.toTfJson(),
    'interpolation_type': ?interpolationType?.toTfJson(),
    if (controlPoints != null)
      'control_points': [for (final e in controlPoints!) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs.boost_control_spec.control_points` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolControlPoints {
  const CesToolControlPoints({this.attributeValue, this.boostAmount});

  final TfArg<String>? attributeValue;

  final TfArg<num>? boostAmount;

  Map<String, Object?> encode() => {
    'attribute_value': ?attributeValue?.toTfJson(),
    'boost_amount': ?boostAmount?.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.data_store_source` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreSource {
  const CesToolDataStoreSource({this.filter, this.dataStore});

  final TfArg<String>? filter;

  final CesToolDataStore? dataStore;

  Map<String, Object?> encode() => {
    'filter': ?filter?.toTfJson(),
    'data_store': ?dataStore?.encode(),
  };
}

/// Typed helper for the `data_store_tool.data_store_source.data_store` block of
/// `google_ces_tool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolDataStore {
  const CesToolDataStore({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `data_store_tool.engine_source` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolEngineSource {
  const CesToolEngineSource({
    required this.engine,
    this.filter,
    this.dataStoreSources,
  });

  final TfArg<String> engine;

  final TfArg<String>? filter;

  final List<CesToolDataStoreSources>? dataStoreSources;

  Map<String, Object?> encode() => {
    'engine': engine.toTfJson(),
    'filter': ?filter?.toTfJson(),
    if (dataStoreSources != null)
      'data_store_sources': [for (final e in dataStoreSources!) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.engine_source.data_store_sources` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreSources {
  const CesToolDataStoreSources({this.filter, this.dataStore});

  final TfArg<String>? filter;

  final CesToolDataStore? dataStore;

  Map<String, Object?> encode() => {
    'filter': ?filter?.toTfJson(),
    'data_store': ?dataStore?.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolModalityConfigs {
  const CesToolModalityConfigs({
    required this.modalityType,
    this.groundingConfig,
    this.rewriterConfig,
    this.snippetsConfig,
    this.summarizationConfig,
  });

  final TfArg<String> modalityType;

  final CesToolGroundingConfig? groundingConfig;

  final CesToolRewriterConfig? rewriterConfig;

  final CesToolSnippetsConfig? snippetsConfig;

  final CesToolSummarizationConfig? summarizationConfig;

  Map<String, Object?> encode() => {
    'modality_type': modalityType.toTfJson(),
    'grounding_config': ?groundingConfig?.encode(),
    'rewriter_config': ?rewriterConfig?.encode(),
    'snippets_config': ?snippetsConfig?.encode(),
    'summarization_config': ?summarizationConfig?.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.grounding_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolGroundingConfig {
  const CesToolGroundingConfig({this.disabled, this.groundingLevel});

  final TfArg<bool>? disabled;

  final TfArg<num>? groundingLevel;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'grounding_level': ?groundingLevel?.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.rewriter_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolRewriterConfig {
  const CesToolRewriterConfig({
    this.disabled,
    this.prompt,
    required this.modelSettings,
  });

  final TfArg<bool>? disabled;

  final TfArg<String>? prompt;

  final CesToolModelSettings modelSettings;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'prompt': ?prompt?.toTfJson(),
    'model_settings': modelSettings.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.rewriter_config.model_settings` block of
/// `google_ces_tool` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CesToolModelSettings {
  const CesToolModelSettings({this.model, this.temperature});

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.snippets_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolSnippetsConfig {
  const CesToolSnippetsConfig({this.enableSnippets});

  final TfArg<bool>? enableSnippets;

  Map<String, Object?> encode() => {
    'enable_snippets': ?enableSnippets?.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.summarization_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolSummarizationConfig {
  const CesToolSummarizationConfig({
    this.disabled,
    this.prompt,
    this.modelSettings,
  });

  final TfArg<bool>? disabled;

  final TfArg<String>? prompt;

  final CesToolModelSettings? modelSettings;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'prompt': ?prompt?.toTfJson(),
    'model_settings': ?modelSettings?.encode(),
  };
}

/// Typed helper for the `file_search_tool` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolFileSearchTool {
  const CesToolFileSearchTool({
    this.corpusType,
    this.description,
    this.fileCorpus,
    required this.name,
  });

  final TfArg<CesToolCorpusType>? corpusType;

  final TfArg<String>? description;

  final TfArg<String>? fileCorpus;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'corpus_type': ?corpusType?.toTfJson(),
    'description': ?description?.toTfJson(),
    'file_corpus': ?fileCorpus?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `corpus_type` — derived from the provider schema description.
enum CesToolCorpusType implements TerraformEnum {
  corpusTypeUnspecified('CORPUS_TYPE_UNSPECIFIED'),
  userOwned('USER_OWNED'),
  fullyManaged('FULLY_MANAGED');

  const CesToolCorpusType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `google_search_tool` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolGoogleSearchTool {
  const CesToolGoogleSearchTool({
    this.contextUrls,
    this.description,
    this.excludeDomains,
    required this.name,
    this.preferredDomains,
    this.promptConfig,
  });

  final TfArg<List<String>>? contextUrls;

  final TfArg<String>? description;

  final TfArg<List<String>>? excludeDomains;

  final TfArg<String> name;

  final TfArg<List<String>>? preferredDomains;

  final CesToolPromptConfig? promptConfig;

  Map<String, Object?> encode() => {
    'context_urls': ?contextUrls?.toTfJson(),
    'description': ?description?.toTfJson(),
    'exclude_domains': ?excludeDomains?.toTfJson(),
    'name': name.toTfJson(),
    'preferred_domains': ?preferredDomains?.toTfJson(),
    'prompt_config': ?promptConfig?.encode(),
  };
}

/// Typed helper for the `google_search_tool.prompt_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolPromptConfig {
  const CesToolPromptConfig({this.textPrompt, this.voicePrompt});

  final TfArg<String>? textPrompt;

  final TfArg<String>? voicePrompt;

  Map<String, Object?> encode() => {
    'text_prompt': ?textPrompt?.toTfJson(),
    'voice_prompt': ?voicePrompt?.toTfJson(),
  };
}

/// Typed helper for the `python_function` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolPythonFunction {
  const CesToolPythonFunction({
    this.name,
    this.pythonCode,
    this.serviceDirectoryConfig,
  });

  final TfArg<String>? name;

  final TfArg<String>? pythonCode;

  final CesToolServiceDirectoryConfig? serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'python_code': ?pythonCode?.toTfJson(),
    'service_directory_config': ?serviceDirectoryConfig?.encode(),
  };
}

/// Typed helper for the `python_function.service_directory_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolServiceDirectoryConfig {
  const CesToolServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `tool_fake_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolFakeConfig {
  const CesToolFakeConfig({this.enableFakeMode, this.codeBlock});

  final TfArg<bool>? enableFakeMode;

  final CesToolCodeBlock? codeBlock;

  Map<String, Object?> encode() => {
    'enable_fake_mode': ?enableFakeMode?.toTfJson(),
    'code_block': ?codeBlock?.encode(),
  };
}

/// Typed helper for the `tool_fake_config.code_block` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolCodeBlock {
  const CesToolCodeBlock({required this.pythonCode});

  final TfArg<String> pythonCode;

  Map<String, Object?> encode() => {'python_code': pythonCode.toTfJson()};
}

/// Typed helper for the `widget_tool` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolWidgetTool {
  const CesToolWidgetTool({
    this.description,
    required this.name,
    this.uiConfig,
    this.widgetType,
    this.dataMapping,
    this.parameters,
    this.textResponseConfig,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<String>? uiConfig;

  final TfArg<CesToolWidgetType>? widgetType;

  final CesToolDataMapping? dataMapping;

  final CesToolParameters? parameters;

  final CesToolTextResponseConfig? textResponseConfig;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'ui_config': ?uiConfig?.toTfJson(),
    'widget_type': ?widgetType?.toTfJson(),
    'data_mapping': ?dataMapping?.encode(),
    'parameters': ?parameters?.encode(),
    'text_response_config': ?textResponseConfig?.encode(),
  };
}

/// `widget_type` — derived from the provider schema description.
enum CesToolWidgetType implements TerraformEnum {
  widgetTypeUnspecified('WIDGET_TYPE_UNSPECIFIED'),
  custom('CUSTOM'),
  productCarousel('PRODUCT_CAROUSEL'),
  productDetails('PRODUCT_DETAILS'),
  quickActions('QUICK_ACTIONS'),
  productComparison('PRODUCT_COMPARISON'),
  advancedProductDetails('ADVANCED_PRODUCT_DETAILS'),
  shortForm('SHORT_FORM'),
  overallSatisfaction('OVERALL_SATISFACTION'),
  orderSummary('ORDER_SUMMARY'),
  appointmentDetails('APPOINTMENT_DETAILS'),
  appointmentScheduler('APPOINTMENT_SCHEDULER'),
  contactForm('CONTACT_FORM');

  const CesToolWidgetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `widget_tool.data_mapping` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataMapping {
  const CesToolDataMapping({
    this.fieldMappings,
    this.mode,
    this.sourceToolName,
    this.pythonFunction,
  });

  final TfArg<Map<String, String>>? fieldMappings;

  final TfArg<CesToolMode>? mode;

  final TfArg<String>? sourceToolName;

  final CesToolDataMappingPythonFunction? pythonFunction;

  Map<String, Object?> encode() => {
    'field_mappings': ?fieldMappings?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'source_tool_name': ?sourceToolName?.toTfJson(),
    'python_function': ?pythonFunction?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum CesToolMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  fieldMapping('FIELD_MAPPING'),
  pythonScript('PYTHON_SCRIPT');

  const CesToolMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `widget_tool.data_mapping.python_function` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataMappingPythonFunction {
  const CesToolDataMappingPythonFunction({this.name, this.pythonCode});

  final TfArg<String>? name;

  final TfArg<String>? pythonCode;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'python_code': ?pythonCode?.toTfJson(),
  };
}

/// Typed helper for the `widget_tool.text_response_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolTextResponseConfig {
  const CesToolTextResponseConfig({
    this.staticText,
    this.textResponseInstruction,
    this.type,
  });

  final TfArg<String>? staticText;

  final TfArg<String>? textResponseInstruction;

  final TfArg<CesToolType>? type;

  Map<String, Object?> encode() => {
    'static_text': ?staticText?.toTfJson(),
    'text_response_instruction': ?textResponseInstruction?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CesToolType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  none('NONE'),
  llmGenerated('LLM_GENERATED'),
  static('STATIC');

  const CesToolType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_ces_tool`.
///
/// Description
///
/// Customer Engagement Suite **tool** — Google Search, Python, client
/// function, data-store, file-search, widget, or agent-tool bound to a
/// [GoogleCesApp]. `open_api_tool` / `mcp_tool` / `connector_tool` /
/// `remote_agent_tool` / `system_tool` are output-only (managed via
/// toolsets or the platform).
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: tools are design-time config —
/// session SKUs fire only on CX Agent Studio chat/voice sessions. Enable
/// `ces.googleapis.com` via [Apis.enable] before apply.
///
/// Example:
/// ```dart
/// GoogleCesTool(
///   localName: 'search',
///   location: TfArg.ref(app.locationRef),
///   app: TfArg.ref(app.appIdRef),
///   toolId: TfArg.literal('terradart-ces-search'),
///   googleSearchTool: CesToolGoogleSearchTool(
///     name: TfArg.literal('google_search'),
///   ),
/// );
/// ```
final class GoogleCesTool extends Resource {
  static const String tfType = 'google_ces_tool';

  GoogleCesTool({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> app,
    required TfArg<String> toolId,
    TfArg<String>? executionType,
    TfArg<String>? timeout,
    CesToolGoogleSearchTool? googleSearchTool,
    CesToolPythonFunction? pythonFunction,
    CesToolClientFunction? clientFunction,
    CesToolDataStoreTool? dataStoreTool,
    CesToolFileSearchTool? fileSearchTool,
    CesToolWidgetTool? widgetTool,
    CesToolAgentTool? agentTool,
    CesToolFakeConfig? toolFakeConfig,
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
           'app': app,
           'tool_id': toolId,
           'execution_type': ?executionType,
           'timeout': ?timeout,
           if (googleSearchTool != null)
             'google_search_tool': TfArg.literal(googleSearchTool.encode()),
           if (pythonFunction != null)
             'python_function': TfArg.literal(pythonFunction.encode()),
           if (clientFunction != null)
             'client_function': TfArg.literal(clientFunction.encode()),
           if (dataStoreTool != null)
             'data_store_tool': TfArg.literal(dataStoreTool.encode()),
           if (fileSearchTool != null)
             'file_search_tool': TfArg.literal(fileSearchTool.encode()),
           if (widgetTool != null)
             'widget_tool': TfArg.literal(widgetTool.encode()),
           if (agentTool != null)
             'agent_tool': TfArg.literal(agentTool.encode()),
           if (toolFakeConfig != null)
             'tool_fake_config': TfArg.literal(toolFakeConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesToolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesTool>`.
  RefTo<GoogleCesTool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connector_tool` attribute.
  TfRef<List<Map<String, Object?>>> get connectorTool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connector_tool');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `generated_summary` attribute.
  TfRef<String> get generatedSummary =>
      TfRef.attribute<String>(this, 'generated_summary');

  /// Reference to `mcp_tool` attribute.
  TfRef<List<Map<String, Object?>>> get mcpTool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mcp_tool');

  /// Reference to `open_api_tool` attribute.
  TfRef<List<Map<String, Object?>>> get openApiTool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'open_api_tool');

  /// Reference to `remote_agent_tool` attribute.
  TfRef<List<Map<String, Object?>>> get remoteAgentTool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'remote_agent_tool');

  /// Reference to `system_tool` attribute.
  TfRef<List<Map<String, Object?>>> get systemTool =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'system_tool');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `app` attribute.
  TfRef<String> get appRef => TfRef.attribute<String>(this, 'app');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `execution_type` attribute.
  TfRef<String> get executionTypeRef =>
      TfRef.attribute<String>(this, 'execution_type');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeoutRef => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `tool_id` attribute.
  TfRef<String> get toolIdRef => TfRef.attribute<String>(this, 'tool_id');
}
