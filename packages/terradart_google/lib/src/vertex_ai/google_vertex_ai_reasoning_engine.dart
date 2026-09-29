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

  final VertexAiReasoningEngineContextSpecMemoryBankConfig? memoryBankConfig;

  Map<String, Object?> encode() => {
    'memory_bank_config': ?memoryBankConfig?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfig({
    this.disableMemoryRevisions,
    this.customizationConfigs,
    this.generationConfig,
    this.similaritySearchConfig,
    this.structuredMemoryConfigs,
    this.ttlConfig,
  });

  final TfArg<bool>? disableMemoryRevisions;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigs
  >?
  customizationConfigs;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfig?
  generationConfig;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig?
  similaritySearchConfig;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigs
  >?
  structuredMemoryConfigs;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfig? ttlConfig;

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
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigs {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigs({
    this.disableNaturalLanguageMemories,
    this.enableThirdPersonMemories,
    this.scopeKeys,
    this.consolidationConfig,
    this.generateMemoriesExamples,
    this.memoryTopics,
  });

  final TfArg<bool>? disableNaturalLanguageMemories;

  final TfArg<bool>? enableThirdPersonMemories;

  final TfArg<List<Object?>>? scopeKeys;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsConsolidationConfig?
  consolidationConfig;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamples
  >?
  generateMemoriesExamples;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopics
  >?
  memoryTopics;

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
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsConsolidationConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsConsolidationConfig({
    this.revisionsPerCandidateCount,
  });

  final TfArg<num>? revisionsPerCandidateCount;

  Map<String, Object?> encode() => {
    'revisions_per_candidate_count': ?revisionsPerCandidateCount?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamples {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamples({
    this.conversationSource,
    this.generatedMemories,
  });

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSource?
  conversationSource;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemories
  >?
  generatedMemories;

  Map<String, Object?> encode() => {
    'conversation_source': ?conversationSource?.encode(),
    if (generatedMemories != null)
      'generated_memories': [for (final e in generatedMemories!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSource {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSource({
    this.events,
  });

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEvents
  >?
  events;

  Map<String, Object?> encode() => {
    if (events != null) 'events': [for (final e in events!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEvents {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEvents({
    required this.content,
  });

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContent
  content;

  Map<String, Object?> encode() => {'content': content.encode()};
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContent {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContent({
    this.role,
    required this.parts,
  });

  final TfArg<String>? role;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentParts
  >
  parts;

  Map<String, Object?> encode() => {
    'role': ?role?.toTfJson(),
    'parts': [for (final e in parts) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentParts {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentParts({
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

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscription?
  audioTranscription;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResult?
  codeExecutionResult;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCode?
  executableCode;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFileData?
  fileData;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionCall?
  functionCall;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionResponse?
  functionResponse;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsInlineData?
  inlineData;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsVideoMetadata?
  videoMetadata;

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
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscription {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscription({
    this.speakerLabel,
    required this.text,
    this.words,
  });

  final TfArg<String>? speakerLabel;

  final TfArg<String> text;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscriptionWords
  >?
  words;

  Map<String, Object?> encode() => {
    'speaker_label': ?speakerLabel?.toTfJson(),
    'text': text.toTfJson(),
    if (words != null) 'words': [for (final e in words!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.audio_transcription.words` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscriptionWords {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsAudioTranscriptionWords({
    this.endOffset,
    this.startOffset,
    required this.word,
  });

  final TfArg<String>? endOffset;

  final TfArg<String>? startOffset;

  final TfArg<String> word;

  Map<String, Object?> encode() => {
    'end_offset': ?endOffset?.toTfJson(),
    'start_offset': ?startOffset?.toTfJson(),
    'word': word.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.code_execution_result` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResult {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResult({
    this.id,
    required this.outcome,
    this.output,
  });

  final TfArg<String>? id;

  final TfArg<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResultOutcome
  >
  outcome;

  final TfArg<String>? output;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'outcome': outcome.toTfJson(),
    'output': ?output?.toTfJson(),
  };
}

/// `outcome` — derived from the provider schema description.
enum VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResultOutcome
    implements TerraformEnum {
  outcomeUnspecified('OUTCOME_UNSPECIFIED'),
  outcomeOk('OUTCOME_OK'),
  outcomeFailed('OUTCOME_FAILED'),
  outcomeDeadlineExceeded('OUTCOME_DEADLINE_EXCEEDED');

  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsCodeExecutionResultOutcome(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.executable_code` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCode {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCode({
    required this.code,
    this.id,
    required this.language,
  });

  final TfArg<String> code;

  final TfArg<String>? id;

  final TfArg<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCodeLanguage
  >
  language;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'id': ?id?.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// `language` — derived from the provider schema description.
enum VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCodeLanguage
    implements TerraformEnum {
  languageUnspecified('LANGUAGE_UNSPECIFIED'),
  python('PYTHON'),
  bash('BASH');

  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsExecutableCodeLanguage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.file_data` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFileData {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFileData({
    required this.fileUri,
    required this.mimeType,
  });

  final TfArg<String> fileUri;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'file_uri': fileUri.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.function_call` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionCall {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionCall({
    this.args,
    this.id,
    this.name,
  });

  final TfArg<String>? args;

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.function_response` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionResponse {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsFunctionResponse({
    this.id,
    required this.name,
    this.response,
  });

  final TfArg<String>? id;

  final TfArg<String> name;

  final TfArg<String>? response;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': name.toTfJson(),
    'response': ?response?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.inline_data` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsInlineData {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsInlineData({
    required this.data,
    required this.mimeType,
  });

  final TfArg<String> data;

  final TfArg<String> mimeType;

  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'mime_type': mimeType.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.conversation_source.events.content.parts.video_metadata` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsVideoMetadata {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesConversationSourceEventsContentPartsVideoMetadata({
    this.endOffset,
    this.startOffset,
  });

  final TfArg<String>? endOffset;

  final TfArg<String>? startOffset;

  Map<String, Object?> encode() => {
    'end_offset': ?endOffset?.toTfJson(),
    'start_offset': ?startOffset?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.generated_memories` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemories {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemories({
    required this.fact,
    this.topics,
  });

  final TfArg<String> fact;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopics
  >?
  topics;

  Map<String, Object?> encode() => {
    'fact': fact.toTfJson(),
    if (topics != null) 'topics': [for (final e in topics!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.generate_memories_examples.generated_memories.topics` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopics {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopics({
    this.customMemoryTopicLabel,
    this.managedMemoryTopic,
  });

  final TfArg<String>? customMemoryTopicLabel;

  final TfArg<
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopicsManagedMemoryTopic
  >?
  managedMemoryTopic;

  Map<String, Object?> encode() => {
    'custom_memory_topic_label': ?customMemoryTopicLabel?.toTfJson(),
    'managed_memory_topic': ?managedMemoryTopic?.toTfJson(),
  };
}

/// `managed_memory_topic` — derived from the provider schema description.
enum VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopicsManagedMemoryTopic
    implements TerraformEnum {
  userPersonalInfo('USER_PERSONAL_INFO'),
  userPreferences('USER_PREFERENCES'),
  keyConversationDetails('KEY_CONVERSATION_DETAILS'),
  explicitInstructions('EXPLICIT_INSTRUCTIONS');

  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsGenerateMemoriesExamplesGeneratedMemoriesTopicsManagedMemoryTopic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.memory_topics` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopics {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopics({
    required this.memoryTopic,
  });

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic
  memoryTopic;

  Map<String, Object?> encode() => {...memoryTopic.encode()};
}

/// Exactly one of `managed_memory_topic`, `custom_memory_topic` on the `context_spec.memory_bank_config.customization_configs.memory_topics` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.managedMemoryTopic(...)`.
sealed class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic();

  /// Sets `managed_memory_topic`.
  const factory VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic.managedMemoryTopic(
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsManagedMemoryTopic
    managedMemoryTopic,
  ) = VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicManagedMemoryTopic;

  /// Sets `custom_memory_topic`.
  const factory VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic.customMemoryTopic(
    VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsCustomMemoryTopic
    customMemoryTopic,
  ) = VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicCustomMemoryTopic;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic.managedMemoryTopic] choice: sets `managed_memory_topic`.
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicManagedMemoryTopic
    extends
        VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicManagedMemoryTopic(
    this.managedMemoryTopic,
  );

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsManagedMemoryTopic
  managedMemoryTopic;

  @override
  String get blockKey => 'managed_memory_topic';

  @override
  Map<String, Object?> encode() => {
    'managed_memory_topic': managedMemoryTopic.encode(),
  };
}

/// The [VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic.customMemoryTopic] choice: sets `custom_memory_topic`.
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicCustomMemoryTopic
    extends
        VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopic {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsMemoryTopicCustomMemoryTopic(
    this.customMemoryTopic,
  );

  final VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsCustomMemoryTopic
  customMemoryTopic;

  @override
  String get blockKey => 'custom_memory_topic';

  @override
  Map<String, Object?> encode() => {
    'custom_memory_topic': customMemoryTopic.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.memory_topics.custom_memory_topic` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsCustomMemoryTopic {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsCustomMemoryTopic({
    this.description,
    this.label,
  });

  final TfArg<String>? description;

  final TfArg<String>? label;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'label': ?label?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.customization_configs.memory_topics.managed_memory_topic` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsManagedMemoryTopic {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigsMemoryTopicsManagedMemoryTopic({
    this.managedTopicEnum,
  });

  final TfArg<String>? managedTopicEnum;

  Map<String, Object?> encode() => {
    'managed_topic_enum': ?managedTopicEnum?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfig({
    required this.model,
    this.generationTriggerConfig,
  });

  final TfArg<String> model;

  final VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig?
  generationTriggerConfig;

  Map<String, Object?> encode() => {
    'model': model.toTfJson(),
    'generation_trigger_config': ?generationTriggerConfig?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config.generation_trigger_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfig({
    this.generationRule,
  });

  final VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule?
  generationRule;

  Map<String, Object?> encode() => {
    'generation_rule': ?generationRule?.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.generation_config.generation_trigger_config.generation_rule` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule({
    this.eventCount,
    this.fixedInterval,
    this.idleDuration,
    this.overlapEventCount,
  });

  final TfArg<num>? eventCount;

  final TfArg<String>? fixedInterval;

  final TfArg<String>? idleDuration;

  final TfArg<num>? overlapEventCount;

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
final class VertexAiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigSimilaritySearchConfig({
    required this.embeddingModel,
  });

  final TfArg<String> embeddingModel;

  Map<String, Object?> encode() => {
    'embedding_model': embeddingModel.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.structured_memory_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigs {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigs({
    this.scopeKeys,
    this.schemaConfigs,
  });

  final TfArg<List<Object?>>? scopeKeys;

  final List<
    VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigsSchemaConfigs
  >?
  schemaConfigs;

  Map<String, Object?> encode() => {
    'scope_keys': ?scopeKeys?.toTfJson(),
    if (schemaConfigs != null)
      'schema_configs': [for (final e in schemaConfigs!) e.encode()],
  };
}

/// Typed helper for the `context_spec.memory_bank_config.structured_memory_configs.schema_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigsSchemaConfigs {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigStructuredMemoryConfigsSchemaConfigs({
    required this.id,
    this.memorySchema,
  });

  final TfArg<String> id;

  final TfArg<String>? memorySchema;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'memory_schema': ?memorySchema?.toTfJson(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.ttl_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfig({
    required this.ttl,
    this.memoryRevisionDefaultTtl,
  });

  final VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl ttl;

  final TfArg<String>? memoryRevisionDefaultTtl;

  Map<String, Object?> encode() => {
    ...ttl.encode(),
    'memory_revision_default_ttl': ?memoryRevisionDefaultTtl?.toTfJson(),
  };
}

/// Exactly one of `default_ttl`, `granular_ttl_config` on the `context_spec.memory_bank_config.ttl_config` block of `google_vertex_ai_reasoning_engine`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.defaultTtl(...)`.
sealed class VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl();

  /// Sets `default_ttl`.
  const factory VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl.defaultTtl(
    TfArg<String> defaultTtl,
  ) = VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlDefaultTtl;

  /// Sets `granular_ttl_config`.
  const factory VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl.granularTtlConfig(
    VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig
    granularTtlConfig,
  ) = VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlGranularTtlConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl.defaultTtl] choice: sets `default_ttl`.
final class VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlDefaultTtl
    extends VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlDefaultTtl(
    this.defaultTtl,
  );

  final TfArg<String> defaultTtl;

  @override
  String get blockKey => 'default_ttl';

  @override
  Map<String, Object?> encode() => {'default_ttl': defaultTtl.toTfJson()};
}

/// The [VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl.granularTtlConfig] choice: sets `granular_ttl_config`.
final class VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlGranularTtlConfig
    extends VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtl {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigTtlGranularTtlConfig(
    this.granularTtlConfig,
  );

  final VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig
  granularTtlConfig;

  @override
  String get blockKey => 'granular_ttl_config';

  @override
  Map<String, Object?> encode() => {
    'granular_ttl_config': granularTtlConfig.encode(),
  };
}

/// Typed helper for the `context_spec.memory_bank_config.ttl_config.granular_ttl_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig {
  const VertexAiReasoningEngineContextSpecMemoryBankConfigTtlConfigGranularTtlConfig({
    this.createTtl,
    this.generateCreatedTtl,
    this.generateUpdatedTtl,
  });

  final TfArg<String>? createTtl;

  final TfArg<String>? generateCreatedTtl;

  final TfArg<String>? generateUpdatedTtl;

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

  final TfArg<VertexAiReasoningEngineSpecIdentityType>? identityType;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final VertexAiReasoningEngineSpecBuildSpec? buildSpec;

  final VertexAiReasoningEngineSpecDeployment? deployment;

  final VertexAiReasoningEngineSpecDeploymentSpec? deploymentSpec;

  final VertexAiReasoningEngineSpecPackageSpec? packageSpec;

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
sealed class VertexAiReasoningEngineSpecDeployment {
  const VertexAiReasoningEngineSpecDeployment();

  /// Sets `container_spec`.
  const factory VertexAiReasoningEngineSpecDeployment.containerSpec(
    VertexAiReasoningEngineSpecContainerSpec containerSpec,
  ) = VertexAiReasoningEngineSpecDeploymentContainerSpec;

  /// Sets `source_code_spec`.
  const factory VertexAiReasoningEngineSpecDeployment.sourceCodeSpec(
    VertexAiReasoningEngineSpecSourceCodeSpec sourceCodeSpec,
  ) = VertexAiReasoningEngineSpecDeploymentSourceCodeSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineSpecDeployment.containerSpec] choice: sets `container_spec`.
final class VertexAiReasoningEngineSpecDeploymentContainerSpec
    extends VertexAiReasoningEngineSpecDeployment {
  const VertexAiReasoningEngineSpecDeploymentContainerSpec(this.containerSpec);

  final VertexAiReasoningEngineSpecContainerSpec containerSpec;

  @override
  String get blockKey => 'container_spec';

  @override
  Map<String, Object?> encode() => {'container_spec': containerSpec.encode()};
}

/// The [VertexAiReasoningEngineSpecDeployment.sourceCodeSpec] choice: sets `source_code_spec`.
final class VertexAiReasoningEngineSpecDeploymentSourceCodeSpec
    extends VertexAiReasoningEngineSpecDeployment {
  const VertexAiReasoningEngineSpecDeploymentSourceCodeSpec(
    this.sourceCodeSpec,
  );

  final VertexAiReasoningEngineSpecSourceCodeSpec sourceCodeSpec;

  @override
  String get blockKey => 'source_code_spec';

  @override
  Map<String, Object?> encode() => {
    'source_code_spec': sourceCodeSpec.encode(),
  };
}

/// `identity_type` — derived from the provider schema description.
enum VertexAiReasoningEngineSpecIdentityType implements TerraformEnum {
  serviceAccount('SERVICE_ACCOUNT'),
  agentIdentity('AGENT_IDENTITY');

  const VertexAiReasoningEngineSpecIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.build_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecBuildSpec {
  const VertexAiReasoningEngineSpecBuildSpec({
    this.serviceAccount,
    this.workerPool,
  });

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? workerPool;

  Map<String, Object?> encode() => {
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'worker_pool': ?workerPool?.toTfJson(),
  };
}

/// Typed helper for the `spec.container_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecContainerSpec {
  const VertexAiReasoningEngineSpecContainerSpec({
    required this.imageUri,
    this.port,
  });

  final TfArg<String> imageUri;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'image_uri': imageUri.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpec {
  const VertexAiReasoningEngineSpecDeploymentSpec({
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

  final VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfig?
  agentGatewayConfig;

  final List<VertexAiReasoningEngineSpecDeploymentSpecEnv>? env;

  final VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig?
  pscInterfaceConfig;

  final List<VertexAiReasoningEngineSpecDeploymentSpecSecretEnv>? secretEnv;

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
final class VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfig {
  const VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfig({
    this.agentToAnywhereConfig,
    this.clientToAgentConfig,
  });

  final VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig?
  agentToAnywhereConfig;

  final VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig?
  clientToAgentConfig;

  Map<String, Object?> encode() => {
    'agent_to_anywhere_config': ?agentToAnywhereConfig?.encode(),
    'client_to_agent_config': ?clientToAgentConfig?.encode(),
  };
}

/// Typed helper for the `spec.deployment_spec.agent_gateway_config.agent_to_anywhere_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig {
  const VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigAgentToAnywhereConfig({
    required this.agentGateway,
  });

  final TfArg<String> agentGateway;

  Map<String, Object?> encode() => {'agent_gateway': agentGateway.toTfJson()};
}

/// Typed helper for the `spec.deployment_spec.agent_gateway_config.client_to_agent_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig {
  const VertexAiReasoningEngineSpecDeploymentSpecAgentGatewayConfigClientToAgentConfig({
    required this.agentGateway,
  });

  final TfArg<String> agentGateway;

  Map<String, Object?> encode() => {'agent_gateway': agentGateway.toTfJson()};
}

/// Typed helper for the `spec.deployment_spec.env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecEnv {
  const VertexAiReasoningEngineSpecDeploymentSpecEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig {
  const VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<
    VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs
  >?
  dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `spec.deployment_spec.psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs {
  const VertexAiReasoningEngineSpecDeploymentSpecPscInterfaceConfigDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecSecretEnv {
  const VertexAiReasoningEngineSpecDeploymentSpecSecretEnv({
    required this.name,
    required this.secretRef,
  });

  final TfArg<String> name;

  final VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef secretRef;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_ref': secretRef.encode(),
  };
}

/// Typed helper for the `spec.deployment_spec.secret_env.secret_ref` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef {
  const VertexAiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef({
    required this.secret,
    this.version,
  });

  final TfArg<String> secret;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    'secret': secret.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `spec.package_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecPackageSpec {
  const VertexAiReasoningEngineSpecPackageSpec({
    this.dependencyFilesGcsUri,
    this.pickleObjectGcsUri,
    this.pythonVersion,
    this.requirementsGcsUri,
  });

  final TfArg<String>? dependencyFilesGcsUri;

  final TfArg<String>? pickleObjectGcsUri;

  final TfArg<String>? pythonVersion;

  final TfArg<String>? requirementsGcsUri;

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
final class VertexAiReasoningEngineSpecSourceCodeSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpec({
    this.agentConfigSource,
    this.developerConnectSource,
    this.runtime,
    this.inlineSource,
  });

  final VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSource?
  agentConfigSource;

  final VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource?
  developerConnectSource;

  final VertexAiReasoningEngineSpecSourceCodeSpecRuntime? runtime;

  final VertexAiReasoningEngineSpecSourceCodeSpecInlineSource? inlineSource;

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
sealed class VertexAiReasoningEngineSpecSourceCodeSpecRuntime {
  const VertexAiReasoningEngineSpecSourceCodeSpecRuntime();

  /// Sets `image_spec`.
  const factory VertexAiReasoningEngineSpecSourceCodeSpecRuntime.imageSpec(
    VertexAiReasoningEngineSpecSourceCodeSpecImageSpec imageSpec,
  ) = VertexAiReasoningEngineSpecSourceCodeSpecRuntimeImageSpec;

  /// Sets `python_spec`.
  const factory VertexAiReasoningEngineSpecSourceCodeSpecRuntime.pythonSpec(
    VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec pythonSpec,
  ) = VertexAiReasoningEngineSpecSourceCodeSpecRuntimePythonSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [VertexAiReasoningEngineSpecSourceCodeSpecRuntime.imageSpec] choice: sets `image_spec`.
final class VertexAiReasoningEngineSpecSourceCodeSpecRuntimeImageSpec
    extends VertexAiReasoningEngineSpecSourceCodeSpecRuntime {
  const VertexAiReasoningEngineSpecSourceCodeSpecRuntimeImageSpec(
    this.imageSpec,
  );

  final VertexAiReasoningEngineSpecSourceCodeSpecImageSpec imageSpec;

  @override
  String get blockKey => 'image_spec';

  @override
  Map<String, Object?> encode() => {'image_spec': imageSpec.encode()};
}

/// The [VertexAiReasoningEngineSpecSourceCodeSpecRuntime.pythonSpec] choice: sets `python_spec`.
final class VertexAiReasoningEngineSpecSourceCodeSpecRuntimePythonSpec
    extends VertexAiReasoningEngineSpecSourceCodeSpecRuntime {
  const VertexAiReasoningEngineSpecSourceCodeSpecRuntimePythonSpec(
    this.pythonSpec,
  );

  final VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec pythonSpec;

  @override
  String get blockKey => 'python_spec';

  @override
  Map<String, Object?> encode() => {'python_spec': pythonSpec.encode()};
}

/// Typed helper for the `spec.source_code_spec.agent_config_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSource({
    this.adkConfig,
    this.inlineSource,
  });

  final VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig?
  adkConfig;

  final VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource?
  inlineSource;

  Map<String, Object?> encode() => {
    'adk_config': ?adkConfig?.encode(),
    'inline_source': ?inlineSource?.encode(),
  };
}

/// Typed helper for the `spec.source_code_spec.agent_config_source.adk_config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig {
  const VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig({
    required this.jsonConfig,
  });

  final TfArg<String> jsonConfig;

  Map<String, Object?> encode() => {'json_config': jsonConfig.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.agent_config_source.inline_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource({
    required this.sourceArchive,
  });

  final TfArg<String> sourceArchive;

  Map<String, Object?> encode() => {'source_archive': sourceArchive.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource({
    required this.config,
  });

  final VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig
  config;

  Map<String, Object?> encode() => {'config': config.encode()};
}

/// Typed helper for the `spec.source_code_spec.developer_connect_source.config` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig {
  const VertexAiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig({
    required this.dir,
    required this.gitRepositoryLink,
    required this.revision,
  });

  final TfArg<String> dir;

  final TfArg<String> gitRepositoryLink;

  final TfArg<String> revision;

  Map<String, Object?> encode() => {
    'dir': dir.toTfJson(),
    'git_repository_link': gitRepositoryLink.toTfJson(),
    'revision': revision.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.image_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecImageSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpecImageSpec({this.buildArgs});

  final TfArg<Map<String, String>>? buildArgs;

  Map<String, Object?> encode() => {'build_args': ?buildArgs?.toTfJson()};
}

/// Typed helper for the `spec.source_code_spec.inline_source` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecInlineSource {
  const VertexAiReasoningEngineSpecSourceCodeSpecInlineSource({
    this.sourceArchive,
  });

  final TfArg<String>? sourceArchive;

  Map<String, Object?> encode() => {
    'source_archive': ?sourceArchive?.toTfJson(),
  };
}

/// Typed helper for the `spec.source_code_spec.python_spec` block of
/// `google_vertex_ai_reasoning_engine` (derived from provider schema).
@immutable
final class VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec {
  const VertexAiReasoningEngineSpecSourceCodeSpecPythonSpec({
    this.entrypointModule,
    this.entrypointObject,
    this.requirementsFile,
    this.version,
  });

  final TfArg<String>? entrypointModule;

  final TfArg<String>? entrypointObject;

  final TfArg<String>? requirementsFile;

  final TfArg<String>? version;

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
///   localName: 'agent',
///   displayName: TfArg.literal('terradart-agent'),
///   region: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleVertexAiReasoningEngine extends Resource {
  static const String tfType = 'google_vertex_ai_reasoning_engine';

  GoogleVertexAiReasoningEngine({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    VertexAiReasoningEngineEncryptionSpec? encryptionSpec,
    VertexAiReasoningEngineSpec? spec,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiReasoningEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiReasoningEngine>`.
  RefTo<GoogleVertexAiReasoningEngine> get ref => RefTo.of(this);

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
