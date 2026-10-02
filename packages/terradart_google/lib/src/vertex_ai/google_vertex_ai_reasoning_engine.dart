// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_reasoning_engine`.
const Set<String> _googleVertexAiReasoningEngineSensitive = <String>{};

/// Typed helper for the `context_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpec {
  const VertexAiReasoningEngineContextSpec({this.memoryBankConfig});

  final VertexAiReasoningEngineMemoryBankConfig? memoryBankConfig;

  @internal
  Map<String, Object?> encode() => {
    'memory_bank_config': ?memoryBankConfig?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineMemoryBankConfig {
  const VertexAiReasoningEngineMemoryBankConfig({
    this.disableMemoryRevisions,
    this.customizationConfigs,
    this.generationConfig,
    this.similaritySearchConfig,
    this.structuredMemoryConfigs,
    this.ttlConfig,
  });

  final TfArg<bool>? disableMemoryRevisions;

  final List<VertexAiReasoningEngineCustomizationConfigs>? customizationConfigs;

  final VertexAiReasoningEngineGenerationConfig? generationConfig;

  final VertexAiReasoningEngineSimilaritySearchConfig? similaritySearchConfig;

  final List<VertexAiReasoningEngineStructuredMemoryConfigs>?
  structuredMemoryConfigs;

  final VertexAiReasoningEngineTtlConfig? ttlConfig;

  @internal
  Map<String, Object?> encode() => {
    'disable_memory_revisions': ?disableMemoryRevisions?.toTfJson(),
    if (customizationConfigs != null)
      'customization_configs': [
        for (final e in customizationConfigs!) e.encode(),
      ],
    'generation_config': ?generationConfig?.encode(),
    'similarity_search_config': ?similaritySearchConfig?.encode(),
    if (structuredMemoryConfigs != null)
      'structured_memory_configs': [
        for (final e in structuredMemoryConfigs!) e.encode(),
      ],
    'ttl_config': ?ttlConfig?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineCustomizationConfigs {
  const VertexAiReasoningEngineCustomizationConfigs({
    this.disableNaturalLanguageMemories,
    this.enableThirdPersonMemories,
    this.scopeKeys,
    this.consolidationConfig,
    this.generateMemoriesExamples,
    this.memoryTopics,
  });

  final TfArg<bool>? disableNaturalLanguageMemories;

  final TfArg<bool>? enableThirdPersonMemories;

  final TfArg<List<String>>? scopeKeys;

  final VertexAiReasoningEngineConsolidationConfig? consolidationConfig;

  final List<VertexAiReasoningEngineGenerateMemoriesExamples>?
  generateMemoriesExamples;

  final List<VertexAiReasoningEngineMemoryTopics>? memoryTopics;

  @internal
  Map<String, Object?> encode() => {
    'disable_natural_language_memories': ?disableNaturalLanguageMemories
        ?.toTfJson(),
    'enable_third_person_memories': ?enableThirdPersonMemories?.toTfJson(),
    'scope_keys': ?scopeKeys?.toTfJson(),
    'consolidation_config': ?consolidationConfig?.encode(),
    if (generateMemoriesExamples != null)
      'generate_memories_examples': [
        for (final e in generateMemoriesExamples!) e.encode(),
      ],
    if (memoryTopics != null)
      'memory_topics': [for (final e in memoryTopics!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.consolidation_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineConsolidationConfig {
  const VertexAiReasoningEngineConsolidationConfig({
    this.revisionsPerCandidateCount,
  });

  final TfArg<num>? revisionsPerCandidateCount;

  @internal
  Map<String, Object?> encode() => {
    'revisions_per_candidate_count': ?revisionsPerCandidateCount?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGenerateMemoriesExamples {
  const VertexAiReasoningEngineGenerateMemoriesExamples({
    this.conversationSource,
    this.generatedMemories,
  });

  final VertexAiReasoningEngineConversationSource? conversationSource;

  final List<VertexAiReasoningEngineGeneratedMemories>? generatedMemories;

  @internal
  Map<String, Object?> encode() => {
    'conversation_source': ?conversationSource?.encode(),
    if (generatedMemories != null)
      'generated_memories': [for (final e in generatedMemories!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineConversationSource {
  const VertexAiReasoningEngineConversationSource({this.events});

  final List<VertexAiReasoningEngineEvents>? events;

  @internal
  Map<String, Object?> encode() => {
    if (events != null) 'events': [for (final e in events!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineEvents {
  const VertexAiReasoningEngineEvents({required this.content});

  final VertexAiReasoningEngineContent content;

  @internal
  Map<String, Object?> encode() => {'content': content.encode()};
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContent {
  const VertexAiReasoningEngineContent({this.role, required this.parts});

  final TfArg<String>? role;

  final List<VertexAiReasoningEngineParts> parts;

  @internal
  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    'parts': [for (final e in parts) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineParts {
  const VertexAiReasoningEngineParts({
    this.text,
    this.thought,
    this.audioTranscription,
    this.codeExecutionResult,
    this.executableCode,
    this.fileData,
    this.functionCall,
    this.functionResponse,
    this.inlineData,
    this.videoMetadata,
  });

  final TfArg<String>? text;

  final TfArg<bool>? thought;

  final VertexAiReasoningEngineAudioTranscription? audioTranscription;

  final VertexAiReasoningEngineCodeExecutionResult? codeExecutionResult;

  final VertexAiReasoningEngineExecutableCode? executableCode;

  final VertexAiReasoningEngineFileData? fileData;

  final VertexAiReasoningEngineFunctionCall? functionCall;

  final VertexAiReasoningEngineFunctionResponse? functionResponse;

  final VertexAiReasoningEngineInlineData? inlineData;

  final VertexAiReasoningEngineVideoMetadata? videoMetadata;

  @internal
  Map<String, Object?> encode() => {
    'text': ?text?.toTfJson(),
    'thought': ?thought?.toTfJson(),
    'audio_transcription': ?audioTranscription?.encode(),
    'code_execution_result': ?codeExecutionResult?.encode(),
    'executable_code': ?executableCode?.encode(),
    'file_data': ?fileData?.encode(),
    'function_call': ?functionCall?.encode(),
    'function_response': ?functionResponse?.encode(),
    'inline_data': ?inlineData?.encode(),
    'video_metadata': ?videoMetadata?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.audio_transcription` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAudioTranscription {
  const VertexAiReasoningEngineAudioTranscription({
    this.speakerLabel,
    required this.text,
    this.words,
  });

  final TfArg<String>? speakerLabel;

  final TfArg<String> text;

  final List<VertexAiReasoningEngineWords>? words;

  @internal
  Map<String, Object?> encode() => {
    'speaker_label': ?speakerLabel?.toTfJson(),
    'text': text.toTfJson(),
    if (words != null) 'words': [for (final e in words!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.audio_transcription.words` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineWords {
  const VertexAiReasoningEngineWords({
    this.endOffset,
    this.startOffset,
    required this.word,
  });

  final TfArg<String>? endOffset;

  final TfArg<String>? startOffset;

  final TfArg<String> word;

  @internal
  Map<String, Object?> encode() => {
    'end_offset': ?endOffset?.toTfJson(),
    'start_offset': ?startOffset?.toTfJson(),
    'word': word.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.code_execution_result` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineCodeExecutionResult {
  const VertexAiReasoningEngineCodeExecutionResult({
    this.id,
    required this.outcome,
    this.output,
  });

  final TfArg<String>? id;

  final VertexAiReasoningEngineOutcome outcome;

  final TfArg<String>? output;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'outcome': outcome.toTfJson(),
    'output': ?output?.toTfJson(),
  };
}

/// `outcome` — derived from the provider schema description.
extension type const VertexAiReasoningEngineOutcome._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiReasoningEngineOutcome.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiReasoningEngineOutcome.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiReasoningEngineOutcome.arg(TfArg<String> arg) : this._(arg);

  static const outcomeUnspecified = VertexAiReasoningEngineOutcome._(
    TfArgLiteral('OUTCOME_UNSPECIFIED'),
  );
  static const outcomeOk = VertexAiReasoningEngineOutcome._(
    TfArgLiteral('OUTCOME_OK'),
  );
  static const outcomeFailed = VertexAiReasoningEngineOutcome._(
    TfArgLiteral('OUTCOME_FAILED'),
  );
  static const outcomeDeadlineExceeded = VertexAiReasoningEngineOutcome._(
    TfArgLiteral('OUTCOME_DEADLINE_EXCEEDED'),
  );

  static const List<VertexAiReasoningEngineOutcome> values = [
    outcomeUnspecified,
    outcomeOk,
    outcomeFailed,
    outcomeDeadlineExceeded,
  ];
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.executable_code` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineExecutableCode {
  const VertexAiReasoningEngineExecutableCode({
    required this.code,
    this.id,
    required this.language,
  });

  final TfArg<String> code;

  final TfArg<String>? id;

  final VertexAiReasoningEngineLanguage language;

  @internal
  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'id': ?id?.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// `language` — derived from the provider schema description.
extension type const VertexAiReasoningEngineLanguage._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiReasoningEngineLanguage.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiReasoningEngineLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiReasoningEngineLanguage.arg(TfArg<String> arg) : this._(arg);

  static const languageUnspecified = VertexAiReasoningEngineLanguage._(
    TfArgLiteral('LANGUAGE_UNSPECIFIED'),
  );
  static const python = VertexAiReasoningEngineLanguage._(
    TfArgLiteral('PYTHON'),
  );
  static const bash = VertexAiReasoningEngineLanguage._(TfArgLiteral('BASH'));

  static const List<VertexAiReasoningEngineLanguage> values = [
    languageUnspecified,
    python,
    bash,
  ];
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.file_data` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineFileData {
  const VertexAiReasoningEngineFileData({
    required this.fileUri,
    required this.mimeType,
  });

  final TfArg<String> fileUri;

  final TfArg<String> mimeType;

  @internal
  Map<String, Object?> encode() => {
    'file_uri': fileUri.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.function_call` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineFunctionCall {
  const VertexAiReasoningEngineFunctionCall({this.args, this.id, this.name});

  final TfArg<String>? args;

  final TfArg<String>? id;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.function_response` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineFunctionResponse {
  const VertexAiReasoningEngineFunctionResponse({
    this.id,
    required this.name,
    this.response,
  });

  final TfArg<String>? id;

  final TfArg<String> name;

  final TfArg<String>? response;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': name.toTfJson(),
    'response': ?response?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.inline_data` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineInlineData {
  const VertexAiReasoningEngineInlineData({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  @internal
  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.video_metadata` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineVideoMetadata {
  const VertexAiReasoningEngineVideoMetadata({
    this.endOffset,
    this.startOffset,
  });

  final TfArg<String>? endOffset;

  final TfArg<String>? startOffset;

  @internal
  Map<String, Object?> encode() => {
    'end_offset': ?endOffset?.toTfJson(),
    'start_offset': ?startOffset?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.generated_memories` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGeneratedMemories {
  const VertexAiReasoningEngineGeneratedMemories({
    required this.fact,
    this.topics,
  });

  final TfArg<String> fact;

  final List<VertexAiReasoningEngineTopics>? topics;

  @internal
  Map<String, Object?> encode() => {
    'fact': fact.toTfJson(),
    if (topics != null) 'topics': [for (final e in topics!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.generated_memories.topics` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineTopics {
  const VertexAiReasoningEngineTopics({
    this.customMemoryTopicLabel,
    this.managedMemoryTopic,
  });

  final TfArg<String>? customMemoryTopicLabel;

  final VertexAiReasoningEngineTopicsManagedMemoryTopic? managedMemoryTopic;

  @internal
  Map<String, Object?> encode() => {
    'custom_memory_topic_label': ?customMemoryTopicLabel?.toTfJson(),
    'managed_memory_topic': ?managedMemoryTopic?.toTfJson(),
  };
}

/// `managed_memory_topic` — derived from the provider schema description.
extension type const VertexAiReasoningEngineTopicsManagedMemoryTopic._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiReasoningEngineTopicsManagedMemoryTopic.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiReasoningEngineTopicsManagedMemoryTopic.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiReasoningEngineTopicsManagedMemoryTopic.arg(TfArg<String> arg)
    : this._(arg);

  static const userPersonalInfo =
      VertexAiReasoningEngineTopicsManagedMemoryTopic._(
        TfArgLiteral('USER_PERSONAL_INFO'),
      );
  static const userPreferences =
      VertexAiReasoningEngineTopicsManagedMemoryTopic._(
        TfArgLiteral('USER_PREFERENCES'),
      );
  static const keyConversationDetails =
      VertexAiReasoningEngineTopicsManagedMemoryTopic._(
        TfArgLiteral('KEY_CONVERSATION_DETAILS'),
      );
  static const explicitInstructions =
      VertexAiReasoningEngineTopicsManagedMemoryTopic._(
        TfArgLiteral('EXPLICIT_INSTRUCTIONS'),
      );

  static const List<VertexAiReasoningEngineTopicsManagedMemoryTopic> values = [
    userPersonalInfo,
    userPreferences,
    keyConversationDetails,
    explicitInstructions,
  ];
}

/// Exactly one of `managed_memory_topic`, `custom_memory_topic` on the `context_spec.memory_bank_config.customization_configs.memory_topics` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.managedMemoryTopic(...)`.
sealed class VertexAiReasoningEngineMemoryTopics {
  const VertexAiReasoningEngineMemoryTopics();

  /// Sets `managed_memory_topic`.
  const factory VertexAiReasoningEngineMemoryTopics.managedMemoryTopic(
    VertexAiReasoningEngineManagedMemoryTopic managedMemoryTopic,
  ) = VertexAiReasoningEngineMemoryTopicsManagedMemoryTopic;

  /// Sets `custom_memory_topic`.
  const factory VertexAiReasoningEngineMemoryTopics.customMemoryTopic(
    VertexAiReasoningEngineCustomMemoryTopic customMemoryTopic,
  ) = VertexAiReasoningEngineMemoryTopicsCustomMemoryTopic;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineMemoryTopics.managedMemoryTopic] choice: sets `managed_memory_topic`.
final class VertexAiReasoningEngineMemoryTopicsManagedMemoryTopic
    extends VertexAiReasoningEngineMemoryTopics {
  const VertexAiReasoningEngineMemoryTopicsManagedMemoryTopic(
    this.managedMemoryTopic,
  );

  final VertexAiReasoningEngineManagedMemoryTopic managedMemoryTopic;

  @internal
  @override
  String get blockKey => 'managed_memory_topic';

  @internal
  @override
  Map<String, Object?> encode() => {
    'managed_memory_topic': managedMemoryTopic.encode(),
  };
}

/// The [VertexAiReasoningEngineMemoryTopics.customMemoryTopic] choice: sets `custom_memory_topic`.
final class VertexAiReasoningEngineMemoryTopicsCustomMemoryTopic
    extends VertexAiReasoningEngineMemoryTopics {
  const VertexAiReasoningEngineMemoryTopicsCustomMemoryTopic(
    this.customMemoryTopic,
  );

  final VertexAiReasoningEngineCustomMemoryTopic customMemoryTopic;

  @internal
  @override
  String get blockKey => 'custom_memory_topic';

  @internal
  @override
  Map<String, Object?> encode() => {
    'custom_memory_topic': customMemoryTopic.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.memory_topics.custom_memory_topic` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineCustomMemoryTopic {
  const VertexAiReasoningEngineCustomMemoryTopic({
    this.description,
    this.label,
  });

  final TfArg<String>? description;

  final TfArg<String>? label;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'label': ?label?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.memory_topics.managed_memory_topic` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineManagedMemoryTopic {
  const VertexAiReasoningEngineManagedMemoryTopic({this.managedTopicEnum});

  final TfArg<String>? managedTopicEnum;

  @internal
  Map<String, Object?> encode() => {
    'managed_topic_enum': ?managedTopicEnum?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGenerationConfig {
  const VertexAiReasoningEngineGenerationConfig({
    required this.model,
    this.generationTriggerConfig,
  });

  final TfArg<String> model;

  final VertexAiReasoningEngineGenerationTriggerConfig? generationTriggerConfig;

  @internal
  Map<String, Object?> encode() => {
    'model': model.toTfJson(),
    'generation_trigger_config': ?generationTriggerConfig?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config.generation_trigger_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGenerationTriggerConfig {
  const VertexAiReasoningEngineGenerationTriggerConfig({this.generationRule});

  final VertexAiReasoningEngineGenerationRule? generationRule;

  @internal
  Map<String, Object?> encode() => {
    'generation_rule': ?generationRule?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config.generation_trigger_config.generation_rule` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGenerationRule {
  const VertexAiReasoningEngineGenerationRule({
    this.eventCount,
    this.fixedInterval,
    this.idleDuration,
    this.overlapEventCount,
  });

  final TfArg<num>? eventCount;

  final TfArg<String>? fixedInterval;

  final TfArg<String>? idleDuration;

  final TfArg<num>? overlapEventCount;

  @internal
  Map<String, Object?> encode() => {
    'event_count': ?eventCount?.toTfJson(),
    'fixed_interval': ?fixedInterval?.toTfJson(),
    'idle_duration': ?idleDuration?.toTfJson(),
    'overlap_event_count': ?overlapEventCount?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.similarity_search_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSimilaritySearchConfig {
  const VertexAiReasoningEngineSimilaritySearchConfig({
    required this.embeddingModel,
  });

  final TfArg<String> embeddingModel;

  @internal
  Map<String, Object?> encode() => {
    'embedding_model': embeddingModel.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.structured_memory_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineStructuredMemoryConfigs {
  const VertexAiReasoningEngineStructuredMemoryConfigs({
    this.scopeKeys,
    this.schemaConfigs,
  });

  final TfArg<List<String>>? scopeKeys;

  final List<VertexAiReasoningEngineSchemaConfigs>? schemaConfigs;

  @internal
  Map<String, Object?> encode() => {
    'scope_keys': ?scopeKeys?.toTfJson(),
    if (schemaConfigs != null)
      'schema_configs': [for (final e in schemaConfigs!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.structured_memory_configs.schema_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSchemaConfigs {
  const VertexAiReasoningEngineSchemaConfigs({
    required this.id,
    this.memorySchema,
  });

  final TfArg<String> id;

  final TfArg<String>? memorySchema;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'memory_schema': ?memorySchema?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.ttl_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineTtlConfig {
  const VertexAiReasoningEngineTtlConfig({
    required this.policy,
    this.memoryRevisionDefaultTtl,
  });

  final VertexAiReasoningEnginePolicy policy;

  final TfArg<String>? memoryRevisionDefaultTtl;

  @internal
  Map<String, Object?> encode() => {
    ...policy.encode(),
    'memory_revision_default_ttl': ?memoryRevisionDefaultTtl?.toTfJson(),
  };
}

/// Exactly one of `default_ttl`, `granular_ttl_config` on the `context_spec.memory_bank_config.ttl_config` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.defaultTtl(...)`.
sealed class VertexAiReasoningEnginePolicy {
  const VertexAiReasoningEnginePolicy();

  /// Sets `default_ttl`.
  const factory VertexAiReasoningEnginePolicy.defaultTtl(
    TfArg<String> defaultTtl,
  ) = VertexAiReasoningEnginePolicyDefaultTtl;

  /// Sets `granular_ttl_config`.
  const factory VertexAiReasoningEnginePolicy.granularTtlConfig(
    VertexAiReasoningEngineGranularTtlConfig granularTtlConfig,
  ) = VertexAiReasoningEnginePolicyGranularTtlConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEnginePolicy.defaultTtl] choice: sets `default_ttl`.
final class VertexAiReasoningEnginePolicyDefaultTtl
    extends VertexAiReasoningEnginePolicy {
  const VertexAiReasoningEnginePolicyDefaultTtl(this.defaultTtl);

  final TfArg<String> defaultTtl;

  @internal
  @override
  String get blockKey => 'default_ttl';

  @internal
  @override
  Map<String, Object?> encode() => {'default_ttl': defaultTtl.toTfJson()};
}

/// The [VertexAiReasoningEnginePolicy.granularTtlConfig] choice: sets `granular_ttl_config`.
final class VertexAiReasoningEnginePolicyGranularTtlConfig
    extends VertexAiReasoningEnginePolicy {
  const VertexAiReasoningEnginePolicyGranularTtlConfig(this.granularTtlConfig);

  final VertexAiReasoningEngineGranularTtlConfig granularTtlConfig;

  @internal
  @override
  String get blockKey => 'granular_ttl_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'granular_ttl_config': granularTtlConfig.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.ttl_config.granular_ttl_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineGranularTtlConfig {
  const VertexAiReasoningEngineGranularTtlConfig({
    this.createTtl,
    this.generateCreatedTtl,
    this.generateUpdatedTtl,
  });

  final TfArg<String>? createTtl;

  final TfArg<String>? generateCreatedTtl;

  final TfArg<String>? generateUpdatedTtl;

  @internal
  Map<String, Object?> encode() => {
    'create_ttl': ?createTtl?.toTfJson(),
    'generate_created_ttl': ?generateCreatedTtl?.toTfJson(),
    'generate_updated_ttl': ?generateUpdatedTtl?.toTfJson(),
  };
}

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineEncryptionSpec {
  const VertexAiReasoningEngineEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpec {
  const VertexAiReasoningEngineSpec({
    this.agentFramework,
    this.classMethods,
    this.identityType,
    this.serviceAccount,
    this.buildSpec,
    this.deployment,
    this.deploymentSpec,
    this.packageSpec,
  });

  final TfArg<String>? agentFramework;

  final TfArg<String>? classMethods;

  final VertexAiReasoningEngineIdentityType? identityType;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final VertexAiReasoningEngineBuildSpec? buildSpec;

  final VertexAiReasoningEngineDeployment? deployment;

  final VertexAiReasoningEngineDeploymentSpec? deploymentSpec;

  final VertexAiReasoningEnginePackageSpec? packageSpec;

  @internal
  Map<String, Object?> encode() => {
    'agent_framework': ?agentFramework?.toTfJson(),
    'class_methods': ?classMethods?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'build_spec': ?buildSpec?.encode(),
    ...?deployment?.encode(),
    'deployment_spec': ?deploymentSpec?.encode(),
    'package_spec': ?packageSpec?.encode(),
  };
}

/// At most one of `container_spec`, `source_code_spec` on the `spec` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.containerSpec(...)`.
sealed class VertexAiReasoningEngineDeployment {
  const VertexAiReasoningEngineDeployment();

  /// Sets `container_spec`.
  const factory VertexAiReasoningEngineDeployment.containerSpec(
    VertexAiReasoningEngineContainerSpec containerSpec,
  ) = VertexAiReasoningEngineDeploymentContainerSpec;

  /// Sets `source_code_spec`.
  const factory VertexAiReasoningEngineDeployment.sourceCodeSpec(
    VertexAiReasoningEngineSourceCodeSpec sourceCodeSpec,
  ) = VertexAiReasoningEngineDeploymentSourceCodeSpec;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineDeployment.containerSpec] choice: sets `container_spec`.
final class VertexAiReasoningEngineDeploymentContainerSpec
    extends VertexAiReasoningEngineDeployment {
  const VertexAiReasoningEngineDeploymentContainerSpec(this.containerSpec);

  final VertexAiReasoningEngineContainerSpec containerSpec;

  @internal
  @override
  String get blockKey => 'container_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'container_spec': containerSpec.encode()};
}

/// The [VertexAiReasoningEngineDeployment.sourceCodeSpec] choice: sets `source_code_spec`.
final class VertexAiReasoningEngineDeploymentSourceCodeSpec
    extends VertexAiReasoningEngineDeployment {
  const VertexAiReasoningEngineDeploymentSourceCodeSpec(this.sourceCodeSpec);

  final VertexAiReasoningEngineSourceCodeSpec sourceCodeSpec;

  @internal
  @override
  String get blockKey => 'source_code_spec';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_code_spec': sourceCodeSpec.encode(),
  };
}

/// `identity_type` — derived from the provider schema description.
extension type const VertexAiReasoningEngineIdentityType._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiReasoningEngineIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiReasoningEngineIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiReasoningEngineIdentityType.arg(TfArg<String> arg)
    : this._(arg);

  static const serviceAccount = VertexAiReasoningEngineIdentityType._(
    TfArgLiteral('SERVICE_ACCOUNT'),
  );
  static const agentIdentity = VertexAiReasoningEngineIdentityType._(
    TfArgLiteral('AGENT_IDENTITY'),
  );

  static const List<VertexAiReasoningEngineIdentityType> values = [
    serviceAccount,
    agentIdentity,
  ];
}

/// Typed helper for the `spec.build_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineBuildSpec {
  const VertexAiReasoningEngineBuildSpec({
    this.serviceAccount,
    this.workerPool,
  });

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? workerPool;

  @internal
  Map<String, Object?> encode() => {
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
  };
}

/// Typed helper for the `spec.container_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContainerSpec {
  const VertexAiReasoningEngineContainerSpec({
    required this.imageUri,
    this.port,
  });

  final TfArg<String> imageUri;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'image_uri': imageUri.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineDeploymentSpec {
  const VertexAiReasoningEngineDeploymentSpec({
    this.containerConcurrency,
    this.maxInstances,
    this.minInstances,
    this.resourceLimits,
    this.agentGatewayConfig,
    this.env,
    this.pscInterfaceConfig,
    this.secretEnv,
  });

  final TfArg<num>? containerConcurrency;

  final TfArg<num>? maxInstances;

  final TfArg<num>? minInstances;

  final TfArg<Map<String, String>>? resourceLimits;

  final VertexAiReasoningEngineAgentGatewayConfig? agentGatewayConfig;

  final List<VertexAiReasoningEngineEnv>? env;

  final VertexAiReasoningEnginePscInterfaceConfig? pscInterfaceConfig;

  final List<VertexAiReasoningEngineSecretEnv>? secretEnv;

  @internal
  Map<String, Object?> encode() => {
    'container_concurrency': ?containerConcurrency?.toTfJson(),
    'max_instances': ?maxInstances?.toTfJson(),
    'min_instances': ?minInstances?.toTfJson(),
    'resource_limits': ?resourceLimits?.toTfJson(),
    'agent_gateway_config': ?agentGatewayConfig?.encode(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    'psc_interface_config': ?pscInterfaceConfig?.encode(),
    if (secretEnv != null)
      'secret_env': [for (final e in secretEnv!) e.encode()],
  };
}

/// Typed helper for the `spec.deployment_spec.agent_gateway_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAgentGatewayConfig {
  const VertexAiReasoningEngineAgentGatewayConfig({
    this.agentToAnywhereConfig,
    this.clientToAgentConfig,
  });

  final VertexAiReasoningEngineAgentToAnywhereConfig? agentToAnywhereConfig;

  final VertexAiReasoningEngineClientToAgentConfig? clientToAgentConfig;

  @internal
  Map<String, Object?> encode() => {
    'agent_to_anywhere_config': ?agentToAnywhereConfig?.encode(),
    'client_to_agent_config': ?clientToAgentConfig?.encode(),
  };
}

/// Typed helper for the `spec.deployment_spec.agent_gateway_config.agent_to_anywhere_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAgentToAnywhereConfig {
  const VertexAiReasoningEngineAgentToAnywhereConfig({
    required this.agentGateway,
  });

  final TfArg<String> agentGateway;

  @internal
  Map<String, Object?> encode() => {'agent_gateway': agentGateway.toTfJson()};
}

/// Typed helper for the `spec.deployment_spec.agent_gateway_config.client_to_agent_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineClientToAgentConfig {
  const VertexAiReasoningEngineClientToAgentConfig({
    required this.agentGateway,
  });

  final TfArg<String> agentGateway;

  @internal
  Map<String, Object?> encode() => {'agent_gateway': agentGateway.toTfJson()};
}

/// Typed helper for the `spec.deployment_spec.env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineEnv {
  const VertexAiReasoningEngineEnv({required this.name, required this.value});

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEnginePscInterfaceConfig {
  const VertexAiReasoningEnginePscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<VertexAiReasoningEngineDnsPeeringConfigs>? dnsPeeringConfigs;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineDnsPeeringConfigs {
  const VertexAiReasoningEngineDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSecretEnv {
  const VertexAiReasoningEngineSecretEnv({
    required this.name,
    required this.secretRef,
  });

  final TfArg<String> name;

  final VertexAiReasoningEngineSecretRef secretRef;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_ref': secretRef.encode(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env.secret_ref` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSecretRef {
  const VertexAiReasoningEngineSecretRef({required this.secret, this.version});

  final TfArg<String> secret;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'secret': secret.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `spec.package_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEnginePackageSpec {
  const VertexAiReasoningEnginePackageSpec({
    this.dependencyFilesGcsUri,
    this.pickleObjectGcsUri,
    this.pythonVersion,
    this.requirementsGcsUri,
  });

  final TfArg<String>? dependencyFilesGcsUri;

  final TfArg<String>? pickleObjectGcsUri;

  final TfArg<String>? pythonVersion;

  final TfArg<String>? requirementsGcsUri;

  @internal
  Map<String, Object?> encode() => {
    'dependency_files_gcs_uri': ?dependencyFilesGcsUri?.toTfJson(),
    'pickle_object_gcs_uri': ?pickleObjectGcsUri?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
    'requirements_gcs_uri': ?requirementsGcsUri?.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSourceCodeSpec {
  const VertexAiReasoningEngineSourceCodeSpec({
    this.agentConfigSource,
    this.developerConnectSource,
    this.runtime,
    this.inlineSource,
  });

  final VertexAiReasoningEngineAgentConfigSource? agentConfigSource;

  final VertexAiReasoningEngineDeveloperConnectSource? developerConnectSource;

  final VertexAiReasoningEngineRuntime? runtime;

  final VertexAiReasoningEngineInlineSource? inlineSource;

  @internal
  Map<String, Object?> encode() => {
    'agent_config_source': ?agentConfigSource?.encode(),
    'developer_connect_source': ?developerConnectSource?.encode(),
    ...?runtime?.encode(),
    'inline_source': ?inlineSource?.encode(),
  };
}

/// At most one of `image_spec`, `python_spec` on the `spec.source_code_spec` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.imageSpec(...)`.
sealed class VertexAiReasoningEngineRuntime {
  const VertexAiReasoningEngineRuntime();

  /// Sets `image_spec`.
  const factory VertexAiReasoningEngineRuntime.imageSpec(
    VertexAiReasoningEngineImageSpec imageSpec,
  ) = VertexAiReasoningEngineRuntimeImageSpec;

  /// Sets `python_spec`.
  const factory VertexAiReasoningEngineRuntime.pythonSpec(
    VertexAiReasoningEnginePythonSpec pythonSpec,
  ) = VertexAiReasoningEngineRuntimePythonSpec;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineRuntime.imageSpec] choice: sets `image_spec`.
final class VertexAiReasoningEngineRuntimeImageSpec
    extends VertexAiReasoningEngineRuntime {
  const VertexAiReasoningEngineRuntimeImageSpec(this.imageSpec);

  final VertexAiReasoningEngineImageSpec imageSpec;

  @internal
  @override
  String get blockKey => 'image_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'image_spec': imageSpec.encode()};
}

/// The [VertexAiReasoningEngineRuntime.pythonSpec] choice: sets `python_spec`.
final class VertexAiReasoningEngineRuntimePythonSpec
    extends VertexAiReasoningEngineRuntime {
  const VertexAiReasoningEngineRuntimePythonSpec(this.pythonSpec);

  final VertexAiReasoningEnginePythonSpec pythonSpec;

  @internal
  @override
  String get blockKey => 'python_spec';

  @internal
  @override
  Map<String, Object?> encode() => {'python_spec': pythonSpec.encode()};
}

/// Typed helper for the `spec.source_code_spec.agent_config_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAgentConfigSource {
  const VertexAiReasoningEngineAgentConfigSource({
    this.adkConfig,
    this.inlineSource,
  });

  final VertexAiReasoningEngineAdkConfig? adkConfig;

  final VertexAiReasoningEngineAgentConfigSourceInlineSource? inlineSource;

  @internal
  Map<String, Object?> encode() => {
    'adk_config': ?adkConfig?.encode(),
    'inline_source': ?inlineSource?.encode(),
  };
}

/// Typed helper for the `spec.source_code_spec.agent_config_source.adk_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAdkConfig {
  const VertexAiReasoningEngineAdkConfig({required this.jsonConfig});

  final TfArg<String> jsonConfig;

  @internal
  Map<String, Object?> encode() => {'json_config': jsonConfig.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.agent_config_source.inline_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineAgentConfigSourceInlineSource {
  const VertexAiReasoningEngineAgentConfigSourceInlineSource({
    required this.sourceArchive,
  });

  final TfArg<String> sourceArchive;

  @internal
  Map<String, Object?> encode() => {'source_archive': sourceArchive.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineDeveloperConnectSource {
  const VertexAiReasoningEngineDeveloperConnectSource({required this.config});

  final VertexAiReasoningEngineConfig config;

  @internal
  Map<String, Object?> encode() => {'config': config.encode()};
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source.config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineConfig {
  const VertexAiReasoningEngineConfig({
    required this.dir,
    required this.gitRepositoryLink,
    required this.revision,
  });

  final TfArg<String> dir;

  final TfArg<String> gitRepositoryLink;

  final TfArg<String> revision;

  @internal
  Map<String, Object?> encode() => {
    'dir': dir.toTfJson(),
    'git_repository_link': gitRepositoryLink.toTfJson(),
    'revision': revision.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.image_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineImageSpec {
  const VertexAiReasoningEngineImageSpec({this.buildArgs});

  final TfArg<Map<String, String>>? buildArgs;

  @internal
  Map<String, Object?> encode() => {'build_args': ?buildArgs?.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.inline_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineInlineSource {
  const VertexAiReasoningEngineInlineSource({this.sourceArchive});

  final TfArg<String>? sourceArchive;

  @internal
  Map<String, Object?> encode() => {
    'source_archive': ?sourceArchive?.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.python_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEnginePythonSpec {
  const VertexAiReasoningEnginePythonSpec({
    this.entrypointModule,
    this.entrypointObject,
    this.requirementsFile,
    this.version,
  });

  final TfArg<String>? entrypointModule;

  final TfArg<String>? entrypointObject;

  final TfArg<String>? requirementsFile;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'entrypoint_module': ?entrypointModule?.toTfJson(),
    'entrypoint_object': ?entrypointObject?.toTfJson(),
    'requirements_file': ?requirementsFile?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_reasoning_engine`.
///
/// ReasoningEngine provides a customizable runtime for models to determine
/// which actions to take and in which order.
///
/// Vertex AI **Reasoning Engine** (Agent Engine) — managed runtime for
/// agent frameworks (`spec` carries package / source / deployment details).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` lists
/// ReasoningEngine management-fee SKUs (`8A55-0B95-B7DC` CPU Tier 1,
/// `0B45-6103-6EC1` Memory Tier 1; list-price tiers empty after MCP
/// `get_sku_price`). Creating an engine with deployment capacity accrues
/// CPU/Memory management fees while it exists. Too expensive for
/// apply-smoke — factory ships without a quickstart.
///
/// Deep nested `exactly_one_of` groups inside Memory Bank TTL / topic
/// configs are not type-sealed in this Wave (MM notes array-element
/// groups rely on API validation). Enable `aiplatform.googleapis.com`
/// via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiReasoningEngine(
///   'agent',
///   displayName: TfArg.literal('terradart-agent'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleVertexAiReasoningEngine extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine';

  GoogleVertexAiReasoningEngine(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    VertexAiReasoningEngineEncryptionSpec? encryptionSpec,
    VertexAiReasoningEngineSpec? spec,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    VertexAiReasoningEngineContextSpec? contextSpec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'region': ?region,
           'description': ?description,
           'labels': ?labels,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           if (contextSpec != null)
             'context_spec': TfArg.literal(contextSpec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiReasoningEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiReasoningEngine>`.
  RefTo<GoogleVertexAiReasoningEngine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
