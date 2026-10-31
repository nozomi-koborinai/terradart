// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_assistant`.
const Set<String> _googleDiscoveryEngineAssistantSensitive = <String>{};

/// Discovery Engine Assistant enum for `location`.
extension type const DiscoveryEngineAssistantLocation._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineAssistantLocation.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineAssistantLocation.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineAssistantLocation.arg(TfArg<String> arg) : this._(arg);

  static const global = DiscoveryEngineAssistantLocation._(
    TfArgLiteral('global'),
  );
  static const us = DiscoveryEngineAssistantLocation._(TfArgLiteral('us'));
  static const eu = DiscoveryEngineAssistantLocation._(TfArgLiteral('eu'));

  static const List<DiscoveryEngineAssistantLocation> values = [global, us, eu];
}

/// Discovery Engine Assistant Web Grounding enum for `web_grounding_type`.
extension type const DiscoveryEngineAssistantWebGroundingType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineAssistantWebGroundingType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineAssistantWebGroundingType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineAssistantWebGroundingType.arg(TfArg<String> arg)
    : this._(arg);

  static const webGroundingTypeDisabled =
      DiscoveryEngineAssistantWebGroundingType._(
        TfArgLiteral('WEB_GROUNDING_TYPE_DISABLED'),
      );
  static const webGroundingTypeGoogleSearch =
      DiscoveryEngineAssistantWebGroundingType._(
        TfArgLiteral('WEB_GROUNDING_TYPE_GOOGLE_SEARCH'),
      );
  static const webGroundingTypeEnterpriseWebSearch =
      DiscoveryEngineAssistantWebGroundingType._(
        TfArgLiteral('WEB_GROUNDING_TYPE_ENTERPRISE_WEB_SEARCH'),
      );

  static const List<DiscoveryEngineAssistantWebGroundingType> values = [
    webGroundingTypeDisabled,
    webGroundingTypeGoogleSearch,
    webGroundingTypeEnterpriseWebSearch,
  ];
}

/// Typed helper for the `customer_policy` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantCustomerPolicy {
  const DiscoveryEngineAssistantCustomerPolicy({
    this.bannedPhrases,
    this.modelArmorConfig,
  });

  final List<DiscoveryEngineAssistantBannedPhrases>? bannedPhrases;

  final DiscoveryEngineAssistantModelArmorConfig? modelArmorConfig;

  @internal
  Map<String, Object?> encode() => {
    if (bannedPhrases != null)
      'banned_phrases': [for (final e in bannedPhrases!) e.encode()],
    'model_armor_config': ?modelArmorConfig?.encode(),
  };
}

/// Typed helper for the `customer_policy.banned_phrases` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantBannedPhrases {
  const DiscoveryEngineAssistantBannedPhrases({
    this.ignoreDiacritics,
    this.matchType,
    required this.phrase,
  });

  final TfArg<bool>? ignoreDiacritics;

  final DiscoveryEngineAssistantMatchType? matchType;

  final TfArg<String> phrase;

  @internal
  Map<String, Object?> encode() => {
    'ignore_diacritics': ?ignoreDiacritics?.toTfJson(),
    'match_type': ?matchType?.toTfJson(),
    'phrase': phrase.toTfJson(),
  };
}

/// `match_type` — derived from the provider schema description.
extension type const DiscoveryEngineAssistantMatchType._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineAssistantMatchType.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineAssistantMatchType.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineAssistantMatchType.arg(TfArg<String> arg) : this._(arg);

  static const simpleStringMatch = DiscoveryEngineAssistantMatchType._(
    TfArgLiteral('SIMPLE_STRING_MATCH'),
  );
  static const wordBoundaryStringMatch = DiscoveryEngineAssistantMatchType._(
    TfArgLiteral('WORD_BOUNDARY_STRING_MATCH'),
  );

  static const List<DiscoveryEngineAssistantMatchType> values = [
    simpleStringMatch,
    wordBoundaryStringMatch,
  ];
}

/// Typed helper for the `customer_policy.model_armor_config` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantModelArmorConfig {
  const DiscoveryEngineAssistantModelArmorConfig({
    this.failureMode,
    required this.responseTemplate,
    required this.userPromptTemplate,
  });

  final DiscoveryEngineAssistantFailureMode? failureMode;

  final TfArg<String> responseTemplate;

  final TfArg<String> userPromptTemplate;

  @internal
  Map<String, Object?> encode() => {
    'failure_mode': ?failureMode?.toTfJson(),
    'response_template': responseTemplate.toTfJson(),
    'user_prompt_template': userPromptTemplate.toTfJson(),
  };
}

/// `failure_mode` — derived from the provider schema description.
extension type const DiscoveryEngineAssistantFailureMode._(TfArg<String> _)
    implements TfArg<String> {
  DiscoveryEngineAssistantFailureMode.variable(String name)
    : this._(TfArg.variable(name));
  DiscoveryEngineAssistantFailureMode.expression(String template)
    : this._(TfArg.expression(template));
  const DiscoveryEngineAssistantFailureMode.arg(TfArg<String> arg)
    : this._(arg);

  static const failOpen = DiscoveryEngineAssistantFailureMode._(
    TfArgLiteral('FAIL_OPEN'),
  );
  static const failClosed = DiscoveryEngineAssistantFailureMode._(
    TfArgLiteral('FAIL_CLOSED'),
  );

  static const List<DiscoveryEngineAssistantFailureMode> values = [
    failOpen,
    failClosed,
  ];
}

/// Typed helper for the `generation_config` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantGenerationConfig {
  const DiscoveryEngineAssistantGenerationConfig({
    this.defaultLanguage,
    this.systemInstruction,
  });

  final TfArg<String>? defaultLanguage;

  final DiscoveryEngineAssistantSystemInstruction? systemInstruction;

  @internal
  Map<String, Object?> encode() => {
    'default_language': ?defaultLanguage?.toTfJson(),
    'system_instruction': ?systemInstruction?.encode(),
  };
}

/// Typed helper for the `generation_config.system_instruction` block of
/// `google_discovery_engine_assistant` (derived from provider schema).
@immutable
final class DiscoveryEngineAssistantSystemInstruction {
  const DiscoveryEngineAssistantSystemInstruction({
    this.additionalSystemInstruction,
  });

  final TfArg<String>? additionalSystemInstruction;

  @internal
  Map<String, Object?> encode() => {
    'additional_system_instruction': ?additionalSystemInstruction?.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_assistant`.
///
/// Assistant
///
/// Vertex AI Search / Gemini Enterprise **assistant** — Agentspace
/// assistant bound to a search/chat engine.
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**). billing-behavior: assistants are the
/// Gemini Enterprise Agentspace runtime surface (seat/entitlement path);
/// not applyable without that subscription on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleDiscoveryEngineAssistant extends Resource {
  static const String tfType = 'google_discovery_engine_assistant';

  GoogleDiscoveryEngineAssistant(
    super.localName, {
    required DiscoveryEngineAssistantLocation location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> assistantId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    DiscoveryEngineAssistantGenerationConfig? generationConfig,
    DiscoveryEngineAssistantCustomerPolicy? customerPolicy,
    DiscoveryEngineAssistantWebGroundingType? webGroundingType,
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
           'engine_id': engineId,
           'assistant_id': assistantId,
           'display_name': displayName,
           'description': ?description,
           if (generationConfig != null)
             'generation_config': TfArg.literal(generationConfig.encode()),
           if (customerPolicy != null)
             'customer_policy': TfArg.literal(customerPolicy.encode()),
           'web_grounding_type': ?webGroundingType,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineAssistantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineAssistant>`.
  RefTo<GoogleDiscoveryEngineAssistant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assistant_id` attribute.
  TfRef<String> get assistantId =>
      TfRef.attribute<String>(this, 'assistant_id');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `web_grounding_type` attribute.
  TfRef<String> get webGroundingType =>
      TfRef.attribute<String>(this, 'web_grounding_type');
}
