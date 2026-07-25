// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_chat_engine`.
const Set<String> _googleDiscoveryEngineChatEngineSensitive = <String>{};

/// Discovery Engine Chat Engine Industry enum for `industry_vertical`.
enum DiscoveryEngineChatEngineIndustryVertical implements TerraformEnum {
  generic('GENERIC');

  const DiscoveryEngineChatEngineIndustryVertical(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `chat_engine_config` block of
/// `google_discovery_engine_chat_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineChatEngineChatEngineConfig {
  const DiscoveryEngineChatEngineChatEngineConfig({
    this.allowCrossRegion,
    this.dialogflowAgentToLink,
    this.agentCreationConfig,
  });

  final TfArg<bool>? allowCrossRegion;

  final TfArg<String>? dialogflowAgentToLink;

  final DiscoveryEngineChatEngineChatEngineConfigAgentCreationConfig?
  agentCreationConfig;

  Map<String, Object?> encode() => {
    if (allowCrossRegion != null)
      'allow_cross_region': allowCrossRegion!.toTfJson(),
    if (dialogflowAgentToLink != null)
      'dialogflow_agent_to_link': dialogflowAgentToLink!.toTfJson(),
    if (agentCreationConfig != null)
      'agent_creation_config': agentCreationConfig!.encode(),
  };
}

/// Typed helper for the `chat_engine_config.agent_creation_config` block of
/// `google_discovery_engine_chat_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineChatEngineChatEngineConfigAgentCreationConfig {
  const DiscoveryEngineChatEngineChatEngineConfigAgentCreationConfig({
    this.business,
    required this.defaultLanguageCode,
    this.location,
    required this.timeZone,
  });

  final TfArg<String>? business;

  final TfArg<String> defaultLanguageCode;

  final TfArg<String>? location;

  final TfArg<String> timeZone;

  Map<String, Object?> encode() => {
    if (business != null) 'business': business!.toTfJson(),
    'default_language_code': defaultLanguageCode.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// Typed helper for the `common_config` block of
/// `google_discovery_engine_chat_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineChatEngineCommonConfig {
  const DiscoveryEngineChatEngineCommonConfig({this.companyName});

  final TfArg<String>? companyName;

  Map<String, Object?> encode() => {
    if (companyName != null) 'company_name': companyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_chat_engine`.
///
/// Vertex chat and Conversation Engine Chat type
///
/// Vertex AI Search / Gemini Enterprise **chat engine** — conversational
/// engine backed by data stores (Dialogflow CX agent link or creation).
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**); Dialogflow CX text sessions
/// `A1CC-751A-CDCC` **$0.20**/session on Cloud Dialogflow `FBC0-AA4A-C89A`.
/// billing-behavior: chat engines sit on the Gemini Enterprise /
/// Agentspace entitlement path and drive Dialogflow CX session charges;
/// not applyable without that subscription on `terradart-validate`.
/// **Never** wire into apply-smoke.
///
/// [chatEngineConfig] is required (nested `agent_creation_config` XOR
/// `dialogflow_agent_to_link`).
final class GoogleDiscoveryEngineChatEngine extends Resource {
  static const String tfType = 'google_discovery_engine_chat_engine';

  GoogleDiscoveryEngineChatEngine({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> collectionId,
    required TfArg<String> engineId,
    required TfArg<String> displayName,
    required TfArg<List<String>> dataStoreIds,
    required DiscoveryEngineChatEngineChatEngineConfig chatEngineConfig,
    TfArg<DiscoveryEngineChatEngineIndustryVertical>? industryVertical,
    DiscoveryEngineChatEngineCommonConfig? commonConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'collection_id': collectionId,
           'engine_id': engineId,
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           'chat_engine_config': TfArg.literal(chatEngineConfig.encode()),
           if (industryVertical != null) 'industry_vertical': industryVertical,
           if (commonConfig != null)
             'common_config': TfArg.literal(commonConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineChatEngineSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `chat_engine_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get chatEngineMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'chat_engine_metadata');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
