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
    if (agent != null) 'agent': agent!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
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

  final CesToolClientFunctionParameters? parameters;

  final CesToolClientFunctionResponse? response;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (parameters != null) 'parameters': parameters!.encode(),
    if (response != null) 'response': response!.encode(),
  };
}

/// Typed helper for the `client_function.parameters` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolClientFunctionParameters {
  const CesToolClientFunctionParameters({
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

  final TfArg<List<Object?>>? enumCase;

  final TfArg<String>? items;

  final TfArg<num>? maxItems;

  final TfArg<num>? maximum;

  final TfArg<num>? minItems;

  final TfArg<num>? minimum;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<Object?>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    if (additionalProperties != null)
      'additional_properties': additionalProperties!.toTfJson(),
    if (anyOf != null) 'any_of': anyOf!.toTfJson(),
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    if (defs != null) 'defs': defs!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enumCase != null) 'enum': enumCase!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
    if (maxItems != null) 'max_items': maxItems!.toTfJson(),
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minItems != null) 'min_items': minItems!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (prefixItems != null) 'prefix_items': prefixItems!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    'type': type.toTfJson(),
    if (uniqueItems != null) 'unique_items': uniqueItems!.toTfJson(),
  };
}

/// Typed helper for the `client_function.response` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolClientFunctionResponse {
  const CesToolClientFunctionResponse({
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

  final TfArg<List<Object?>>? enumCase;

  final TfArg<String>? items;

  final TfArg<num>? maxItems;

  final TfArg<num>? maximum;

  final TfArg<num>? minItems;

  final TfArg<num>? minimum;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<Object?>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    if (additionalProperties != null)
      'additional_properties': additionalProperties!.toTfJson(),
    if (anyOf != null) 'any_of': anyOf!.toTfJson(),
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    if (defs != null) 'defs': defs!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enumCase != null) 'enum': enumCase!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
    if (maxItems != null) 'max_items': maxItems!.toTfJson(),
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minItems != null) 'min_items': minItems!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (prefixItems != null) 'prefix_items': prefixItems!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    'type': type.toTfJson(),
    if (uniqueItems != null) 'unique_items': uniqueItems!.toTfJson(),
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
    this.dataStoreSource,
    this.engineSource,
    this.modalityConfigs,
  });

  final TfArg<String>? description;

  final TfArg<CesToolDataStoreToolFilterParameterBehavior>?
  filterParameterBehavior;

  final TfArg<num>? maxResults;

  final TfArg<String> name;

  final List<CesToolDataStoreToolBoostSpecs>? boostSpecs;

  final CesToolDataStoreToolDataStoreSource? dataStoreSource;

  final CesToolDataStoreToolEngineSource? engineSource;

  final List<CesToolDataStoreToolModalityConfigs>? modalityConfigs;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (filterParameterBehavior != null)
      'filter_parameter_behavior': filterParameterBehavior!.toTfJson(),
    if (maxResults != null) 'max_results': maxResults!.toTfJson(),
    'name': name.toTfJson(),
    if (boostSpecs != null)
      'boost_specs': [for (final e in boostSpecs!) e.encode()],
    if (dataStoreSource != null) 'data_store_source': dataStoreSource!.encode(),
    if (engineSource != null) 'engine_source': engineSource!.encode(),
    if (modalityConfigs != null)
      'modality_configs': [for (final e in modalityConfigs!) e.encode()],
  };
}

/// `filter_parameter_behavior` — derived from the provider schema description.
enum CesToolDataStoreToolFilterParameterBehavior implements TerraformEnum {
  filterParameterBehaviorUnspecified('FILTER_PARAMETER_BEHAVIOR_UNSPECIFIED'),
  alwaysInclude('ALWAYS_INCLUDE'),
  neverInclude('NEVER_INCLUDE');

  const CesToolDataStoreToolFilterParameterBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_store_tool.boost_specs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolBoostSpecs {
  const CesToolDataStoreToolBoostSpecs({
    required this.dataStores,
    required this.spec,
  });

  final TfArg<List<Object?>> dataStores;

  final List<CesToolDataStoreToolBoostSpecsSpec> spec;

  Map<String, Object?> encode() => {
    'data_stores': dataStores.toTfJson(),
    'spec': [for (final e in spec) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolBoostSpecsSpec {
  const CesToolDataStoreToolBoostSpecsSpec({required this.conditionBoostSpecs});

  final List<CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecs>
  conditionBoostSpecs;

  Map<String, Object?> encode() => {
    'condition_boost_specs': [for (final e in conditionBoostSpecs) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecs {
  const CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecs({
    this.boost,
    required this.condition,
    this.boostControlSpec,
  });

  final TfArg<num>? boost;

  final TfArg<String> condition;

  final CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpec?
  boostControlSpec;

  Map<String, Object?> encode() => {
    if (boost != null) 'boost': boost!.toTfJson(),
    'condition': condition.toTfJson(),
    if (boostControlSpec != null)
      'boost_control_spec': boostControlSpec!.encode(),
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs.boost_control_spec` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpec {
  const CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpec({
    this.attributeType,
    this.fieldName,
    this.interpolationType,
    this.controlPoints,
  });

  final TfArg<String>? attributeType;

  final TfArg<String>? fieldName;

  final TfArg<String>? interpolationType;

  final List<
    CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpecControlPoints
  >?
  controlPoints;

  Map<String, Object?> encode() => {
    if (attributeType != null) 'attribute_type': attributeType!.toTfJson(),
    if (fieldName != null) 'field_name': fieldName!.toTfJson(),
    if (interpolationType != null)
      'interpolation_type': interpolationType!.toTfJson(),
    if (controlPoints != null)
      'control_points': [for (final e in controlPoints!) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.boost_specs.spec.condition_boost_specs.boost_control_spec.control_points` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpecControlPoints {
  const CesToolDataStoreToolBoostSpecsSpecConditionBoostSpecsBoostControlSpecControlPoints({
    this.attributeValue,
    this.boostAmount,
  });

  final TfArg<String>? attributeValue;

  final TfArg<num>? boostAmount;

  Map<String, Object?> encode() => {
    if (attributeValue != null) 'attribute_value': attributeValue!.toTfJson(),
    if (boostAmount != null) 'boost_amount': boostAmount!.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.data_store_source` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolDataStoreSource {
  const CesToolDataStoreToolDataStoreSource({this.filter, this.dataStore});

  final TfArg<String>? filter;

  final CesToolDataStoreToolDataStoreSourceDataStore? dataStore;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': filter!.toTfJson(),
    if (dataStore != null) 'data_store': dataStore!.encode(),
  };
}

/// Typed helper for the `data_store_tool.data_store_source.data_store` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolDataStoreSourceDataStore {
  const CesToolDataStoreToolDataStoreSourceDataStore({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `data_store_tool.engine_source` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolEngineSource {
  const CesToolDataStoreToolEngineSource({
    required this.engine,
    this.filter,
    this.dataStoreSources,
  });

  final TfArg<String> engine;

  final TfArg<String>? filter;

  final List<CesToolDataStoreToolEngineSourceDataStoreSources>?
  dataStoreSources;

  Map<String, Object?> encode() => {
    'engine': engine.toTfJson(),
    if (filter != null) 'filter': filter!.toTfJson(),
    if (dataStoreSources != null)
      'data_store_sources': [for (final e in dataStoreSources!) e.encode()],
  };
}

/// Typed helper for the `data_store_tool.engine_source.data_store_sources` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolEngineSourceDataStoreSources {
  const CesToolDataStoreToolEngineSourceDataStoreSources({
    this.filter,
    this.dataStore,
  });

  final TfArg<String>? filter;

  final CesToolDataStoreToolEngineSourceDataStoreSourcesDataStore? dataStore;

  Map<String, Object?> encode() => {
    if (filter != null) 'filter': filter!.toTfJson(),
    if (dataStore != null) 'data_store': dataStore!.encode(),
  };
}

/// Typed helper for the `data_store_tool.engine_source.data_store_sources.data_store` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolEngineSourceDataStoreSourcesDataStore {
  const CesToolDataStoreToolEngineSourceDataStoreSourcesDataStore({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `data_store_tool.modality_configs` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigs {
  const CesToolDataStoreToolModalityConfigs({
    required this.modalityType,
    this.groundingConfig,
    this.rewriterConfig,
    this.snippetsConfig,
    this.summarizationConfig,
  });

  final TfArg<String> modalityType;

  final CesToolDataStoreToolModalityConfigsGroundingConfig? groundingConfig;

  final CesToolDataStoreToolModalityConfigsRewriterConfig? rewriterConfig;

  final CesToolDataStoreToolModalityConfigsSnippetsConfig? snippetsConfig;

  final CesToolDataStoreToolModalityConfigsSummarizationConfig?
  summarizationConfig;

  Map<String, Object?> encode() => {
    'modality_type': modalityType.toTfJson(),
    if (groundingConfig != null) 'grounding_config': groundingConfig!.encode(),
    if (rewriterConfig != null) 'rewriter_config': rewriterConfig!.encode(),
    if (snippetsConfig != null) 'snippets_config': snippetsConfig!.encode(),
    if (summarizationConfig != null)
      'summarization_config': summarizationConfig!.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.grounding_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsGroundingConfig {
  const CesToolDataStoreToolModalityConfigsGroundingConfig({
    this.disabled,
    this.groundingLevel,
  });

  final TfArg<bool>? disabled;

  final TfArg<num>? groundingLevel;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (groundingLevel != null) 'grounding_level': groundingLevel!.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.rewriter_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsRewriterConfig {
  const CesToolDataStoreToolModalityConfigsRewriterConfig({
    this.disabled,
    this.prompt,
    required this.modelSettings,
  });

  final TfArg<bool>? disabled;

  final TfArg<String>? prompt;

  final CesToolDataStoreToolModalityConfigsRewriterConfigModelSettings
  modelSettings;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (prompt != null) 'prompt': prompt!.toTfJson(),
    'model_settings': modelSettings.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.rewriter_config.model_settings` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsRewriterConfigModelSettings {
  const CesToolDataStoreToolModalityConfigsRewriterConfigModelSettings({
    this.model,
    this.temperature,
  });

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.snippets_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsSnippetsConfig {
  const CesToolDataStoreToolModalityConfigsSnippetsConfig({
    this.enableSnippets,
  });

  final TfArg<bool>? enableSnippets;

  Map<String, Object?> encode() => {
    if (enableSnippets != null) 'enable_snippets': enableSnippets!.toTfJson(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.summarization_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsSummarizationConfig {
  const CesToolDataStoreToolModalityConfigsSummarizationConfig({
    this.disabled,
    this.prompt,
    this.modelSettings,
  });

  final TfArg<bool>? disabled;

  final TfArg<String>? prompt;

  final CesToolDataStoreToolModalityConfigsSummarizationConfigModelSettings?
  modelSettings;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (prompt != null) 'prompt': prompt!.toTfJson(),
    if (modelSettings != null) 'model_settings': modelSettings!.encode(),
  };
}

/// Typed helper for the `data_store_tool.modality_configs.summarization_config.model_settings` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolDataStoreToolModalityConfigsSummarizationConfigModelSettings {
  const CesToolDataStoreToolModalityConfigsSummarizationConfigModelSettings({
    this.model,
    this.temperature,
  });

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
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

  final TfArg<CesToolFileSearchToolCorpusType>? corpusType;

  final TfArg<String>? description;

  final TfArg<String>? fileCorpus;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (corpusType != null) 'corpus_type': corpusType!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (fileCorpus != null) 'file_corpus': fileCorpus!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `corpus_type` — derived from the provider schema description.
enum CesToolFileSearchToolCorpusType implements TerraformEnum {
  corpusTypeUnspecified('CORPUS_TYPE_UNSPECIFIED'),
  userOwned('USER_OWNED'),
  fullyManaged('FULLY_MANAGED');

  const CesToolFileSearchToolCorpusType(this.terraformValue);
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

  final TfArg<List<Object?>>? contextUrls;

  final TfArg<String>? description;

  final TfArg<List<Object?>>? excludeDomains;

  final TfArg<String> name;

  final TfArg<List<Object?>>? preferredDomains;

  final CesToolGoogleSearchToolPromptConfig? promptConfig;

  Map<String, Object?> encode() => {
    if (contextUrls != null) 'context_urls': contextUrls!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (excludeDomains != null) 'exclude_domains': excludeDomains!.toTfJson(),
    'name': name.toTfJson(),
    if (preferredDomains != null)
      'preferred_domains': preferredDomains!.toTfJson(),
    if (promptConfig != null) 'prompt_config': promptConfig!.encode(),
  };
}

/// Typed helper for the `google_search_tool.prompt_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolGoogleSearchToolPromptConfig {
  const CesToolGoogleSearchToolPromptConfig({
    this.textPrompt,
    this.voicePrompt,
  });

  final TfArg<String>? textPrompt;

  final TfArg<String>? voicePrompt;

  Map<String, Object?> encode() => {
    if (textPrompt != null) 'text_prompt': textPrompt!.toTfJson(),
    if (voicePrompt != null) 'voice_prompt': voicePrompt!.toTfJson(),
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

  final CesToolPythonFunctionServiceDirectoryConfig? serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (pythonCode != null) 'python_code': pythonCode!.toTfJson(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `python_function.service_directory_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolPythonFunctionServiceDirectoryConfig {
  const CesToolPythonFunctionServiceDirectoryConfig({required this.service});

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `tool_fake_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolToolFakeConfig {
  const CesToolToolFakeConfig({this.enableFakeMode, this.codeBlock});

  final TfArg<bool>? enableFakeMode;

  final CesToolToolFakeConfigCodeBlock? codeBlock;

  Map<String, Object?> encode() => {
    if (enableFakeMode != null) 'enable_fake_mode': enableFakeMode!.toTfJson(),
    if (codeBlock != null) 'code_block': codeBlock!.encode(),
  };
}

/// Typed helper for the `tool_fake_config.code_block` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolToolFakeConfigCodeBlock {
  const CesToolToolFakeConfigCodeBlock({required this.pythonCode});

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

  final TfArg<CesToolWidgetToolWidgetType>? widgetType;

  final CesToolWidgetToolDataMapping? dataMapping;

  final CesToolWidgetToolParameters? parameters;

  final CesToolWidgetToolTextResponseConfig? textResponseConfig;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (uiConfig != null) 'ui_config': uiConfig!.toTfJson(),
    if (widgetType != null) 'widget_type': widgetType!.toTfJson(),
    if (dataMapping != null) 'data_mapping': dataMapping!.encode(),
    if (parameters != null) 'parameters': parameters!.encode(),
    if (textResponseConfig != null)
      'text_response_config': textResponseConfig!.encode(),
  };
}

/// `widget_type` — derived from the provider schema description.
enum CesToolWidgetToolWidgetType implements TerraformEnum {
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

  const CesToolWidgetToolWidgetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `widget_tool.data_mapping` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolWidgetToolDataMapping {
  const CesToolWidgetToolDataMapping({
    this.fieldMappings,
    this.mode,
    this.sourceToolName,
    this.pythonFunction,
  });

  final TfArg<Map<String, String>>? fieldMappings;

  final TfArg<CesToolWidgetToolDataMappingMode>? mode;

  final TfArg<String>? sourceToolName;

  final CesToolWidgetToolDataMappingPythonFunction? pythonFunction;

  Map<String, Object?> encode() => {
    if (fieldMappings != null) 'field_mappings': fieldMappings!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (sourceToolName != null) 'source_tool_name': sourceToolName!.toTfJson(),
    if (pythonFunction != null) 'python_function': pythonFunction!.encode(),
  };
}

/// `mode` — derived from the provider schema description.
enum CesToolWidgetToolDataMappingMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  fieldMapping('FIELD_MAPPING'),
  pythonScript('PYTHON_SCRIPT');

  const CesToolWidgetToolDataMappingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `widget_tool.data_mapping.python_function` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolWidgetToolDataMappingPythonFunction {
  const CesToolWidgetToolDataMappingPythonFunction({
    this.name,
    this.pythonCode,
  });

  final TfArg<String>? name;

  final TfArg<String>? pythonCode;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (pythonCode != null) 'python_code': pythonCode!.toTfJson(),
  };
}

/// Typed helper for the `widget_tool.parameters` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolWidgetToolParameters {
  const CesToolWidgetToolParameters({
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

  final TfArg<List<Object?>>? enumCase;

  final TfArg<String>? items;

  final TfArg<num>? maxItems;

  final TfArg<num>? maximum;

  final TfArg<num>? minItems;

  final TfArg<num>? minimum;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<Object?>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    if (additionalProperties != null)
      'additional_properties': additionalProperties!.toTfJson(),
    if (anyOf != null) 'any_of': anyOf!.toTfJson(),
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    if (defs != null) 'defs': defs!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enumCase != null) 'enum': enumCase!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
    if (maxItems != null) 'max_items': maxItems!.toTfJson(),
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minItems != null) 'min_items': minItems!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (prefixItems != null) 'prefix_items': prefixItems!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    'type': type.toTfJson(),
    if (uniqueItems != null) 'unique_items': uniqueItems!.toTfJson(),
  };
}

/// Typed helper for the `widget_tool.text_response_config` block of
/// `google_ces_tool` (derived from provider schema).
@immutable
final class CesToolWidgetToolTextResponseConfig {
  const CesToolWidgetToolTextResponseConfig({
    this.staticText,
    this.textResponseInstruction,
    this.type,
  });

  final TfArg<String>? staticText;

  final TfArg<String>? textResponseInstruction;

  final TfArg<CesToolWidgetToolTextResponseConfigType>? type;

  Map<String, Object?> encode() => {
    if (staticText != null) 'static_text': staticText!.toTfJson(),
    if (textResponseInstruction != null)
      'text_response_instruction': textResponseInstruction!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CesToolWidgetToolTextResponseConfigType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  none('NONE'),
  llmGenerated('LLM_GENERATED'),
  static('STATIC');

  const CesToolWidgetToolTextResponseConfigType(this.terraformValue);
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
    CesToolToolFakeConfig? toolFakeConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app': app,
           'tool_id': toolId,
           if (executionType != null) 'execution_type': executionType,
           if (timeout != null) 'timeout': timeout,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesToolSensitive;

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
}
