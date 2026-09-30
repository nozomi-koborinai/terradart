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
final class DiscoveryEngineChatEngineConfig {
  const DiscoveryEngineChatEngineConfig({
    this.allowCrossRegion,
    required this.agent,
  });

  final TfArg<bool>? allowCrossRegion;

  final DiscoveryEngineChatEngineAgent agent;

  Map<String, Object?> encode() => {
    'allow_cross_region': ?allowCrossRegion?.toTfJson(),
    ...agent.encode(),
  };
}

/// Exactly one of `agent_creation_config`, `dialogflow_agent_to_link` on the `chat_engine_config` block of `google_discovery_engine_chat_engine`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.agentCreationConfig(...)`.
sealed class DiscoveryEngineChatEngineAgent {
  const DiscoveryEngineChatEngineAgent();

  /// Sets `agent_creation_config`.
  const factory DiscoveryEngineChatEngineAgent.agentCreationConfig(
    DiscoveryEngineChatEngineAgentCreationConfig agentCreationConfig,
  ) = DiscoveryEngineChatEngineAgentCreationConfigChoice;

  /// Sets `dialogflow_agent_to_link`.
  const factory DiscoveryEngineChatEngineAgent.dialogflowAgentToLink(
    TfArg<String> dialogflowAgentToLink,
  ) = DiscoveryEngineChatEngineAgentDialogflowAgentToLink;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DiscoveryEngineChatEngineAgent.agentCreationConfig] choice: sets `agent_creation_config`.
final class DiscoveryEngineChatEngineAgentCreationConfigChoice
    extends DiscoveryEngineChatEngineAgent {
  const DiscoveryEngineChatEngineAgentCreationConfigChoice(
    this.agentCreationConfig,
  );

  final DiscoveryEngineChatEngineAgentCreationConfig agentCreationConfig;

  @override
  String get blockKey => 'agent_creation_config';

  @override
  Map<String, Object?> encode() => {
    'agent_creation_config': agentCreationConfig.encode(),
  };
}

/// The [DiscoveryEngineChatEngineAgent.dialogflowAgentToLink] choice: sets `dialogflow_agent_to_link`.
final class DiscoveryEngineChatEngineAgentDialogflowAgentToLink
    extends DiscoveryEngineChatEngineAgent {
  const DiscoveryEngineChatEngineAgentDialogflowAgentToLink(
    this.dialogflowAgentToLink,
  );

  final TfArg<String> dialogflowAgentToLink;

  @override
  String get blockKey => 'dialogflow_agent_to_link';

  @override
  Map<String, Object?> encode() => {
    'dialogflow_agent_to_link': dialogflowAgentToLink.toTfJson(),
  };
}

/// Typed helper for the `chat_engine_config.agent_creation_config` block of
/// `google_discovery_engine_chat_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineChatEngineAgentCreationConfig {
  const DiscoveryEngineChatEngineAgentCreationConfig({
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
    'business': ?business?.toTfJson(),
    'default_language_code': defaultLanguageCode.toTfJson(),
    'location': ?location?.toTfJson(),
    'time_zone': timeZone.toTfJson(),
  };
}

/// Typed helper for the `common_config` block of
/// `google_discovery_engine_chat_engine` (derived from provider schema).
@immutable
final class DiscoveryEngineChatEngineCommonConfig {
  const DiscoveryEngineChatEngineCommonConfig({this.companyName});

  final TfArg<String>? companyName;

  Map<String, Object?> encode() => {'company_name': ?companyName?.toTfJson()};
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
    required DiscoveryEngineChatEngineConfig chatEngineConfig,
    TfArg<DiscoveryEngineChatEngineIndustryVertical>? industryVertical,
    DiscoveryEngineChatEngineCommonConfig? commonConfig,
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
           'display_name': displayName,
           'data_store_ids': dataStoreIds,
           'chat_engine_config': TfArg.literal(chatEngineConfig.encode()),
           'industry_vertical': ?industryVertical,
           if (commonConfig != null)
             'common_config': TfArg.literal(commonConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDiscoveryEngineChatEngineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineChatEngine>`.
  RefTo<GoogleDiscoveryEngineChatEngine> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `chat_engine_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get chatEngineMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'chat_engine_metadata');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionIdRef =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `data_store_ids` attribute.
  TfRef<List<String>> get dataStoreIdsRef =>
      TfRef.attribute<List<String>>(this, 'data_store_ids');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineIdRef => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `industry_vertical` attribute.
  TfRef<String> get industryVerticalRef =>
      TfRef.attribute<String>(this, 'industry_vertical');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
