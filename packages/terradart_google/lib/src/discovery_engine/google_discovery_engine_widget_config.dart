// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_widget_config`.
const Set<String> _googleDiscoveryEngineWidgetConfigSensitive = <String>{};

/// Typed helper for the `access_settings` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigAccessSettings {
  const DiscoveryEngineWidgetConfigAccessSettings({
    this.allowPublicAccess,
    this.allowlistedDomains,
    this.enableWebApp,
    this.languageCode,
    this.workforceIdentityPoolProvider,
  });

  final TfArg<bool>? allowPublicAccess;

  final TfArg<List<String>>? allowlistedDomains;

  final TfArg<bool>? enableWebApp;

  final TfArg<String>? languageCode;

  final TfArg<String>? workforceIdentityPoolProvider;

  Map<String, Object?> encode() => {
    'allow_public_access': ?allowPublicAccess?.toTfJson(),
    'allowlisted_domains': ?allowlistedDomains?.toTfJson(),
    'enable_web_app': ?enableWebApp?.toTfJson(),
    'language_code': ?languageCode?.toTfJson(),
    'workforce_identity_pool_provider': ?workforceIdentityPoolProvider
        ?.toTfJson(),
  };
}

/// Typed helper for the `homepage_setting` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigHomepageSetting {
  const DiscoveryEngineWidgetConfigHomepageSetting({this.shortcuts});

  final List<DiscoveryEngineWidgetConfigShortcuts>? shortcuts;

  Map<String, Object?> encode() => {
    if (shortcuts != null)
      'shortcuts': [for (final e in shortcuts!) e.encode()],
  };
}

/// Typed helper for the `homepage_setting.shortcuts` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigShortcuts {
  const DiscoveryEngineWidgetConfigShortcuts({
    this.destinationUri,
    this.title,
    this.icon,
  });

  final TfArg<String>? destinationUri;

  final TfArg<String>? title;

  final DiscoveryEngineWidgetConfigIcon? icon;

  Map<String, Object?> encode() => {
    'destination_uri': ?destinationUri?.toTfJson(),
    'title': ?title?.toTfJson(),
    'icon': ?icon?.encode(),
  };
}

/// Typed helper for the `homepage_setting.shortcuts.icon` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigIcon {
  const DiscoveryEngineWidgetConfigIcon({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {'url': ?url?.toTfJson()};
}

/// Typed helper for the `ui_branding` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiBranding {
  const DiscoveryEngineWidgetConfigUiBranding({this.logo});

  final DiscoveryEngineWidgetConfigLogo? logo;

  Map<String, Object?> encode() => {'logo': ?logo?.encode()};
}

/// Typed helper for the `ui_branding.logo` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigLogo {
  const DiscoveryEngineWidgetConfigLogo({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {'url': ?url?.toTfJson()};
}

/// Typed helper for the `ui_settings` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiSettings {
  const DiscoveryEngineWidgetConfigUiSettings({
    this.defaultSearchRequestOrderBy,
    this.disableUserEventsCollection,
    this.enableAutocomplete,
    this.enableCreateAgentButton,
    this.enablePeopleSearch,
    this.enableQualityFeedback,
    this.enableSafeSearch,
    this.enableSearchAsYouType,
    this.enableVisualContentSummary,
    this.interactionType,
    this.resultDescriptionType,
    this.sourceAdminDisplayNameEnabled,
    this.dataStoreUiConfigs,
    this.generativeAnswerConfig,
    this.searchAddonSpec,
  });

  final TfArg<String>? defaultSearchRequestOrderBy;

  final TfArg<bool>? disableUserEventsCollection;

  final TfArg<bool>? enableAutocomplete;

  final TfArg<bool>? enableCreateAgentButton;

  final TfArg<bool>? enablePeopleSearch;

  final TfArg<bool>? enableQualityFeedback;

  final TfArg<bool>? enableSafeSearch;

  final TfArg<bool>? enableSearchAsYouType;

  final TfArg<bool>? enableVisualContentSummary;

  final TfArg<DiscoveryEngineWidgetConfigInteractionType>? interactionType;

  final TfArg<DiscoveryEngineWidgetConfigResultDescriptionType>?
  resultDescriptionType;

  final TfArg<bool>? sourceAdminDisplayNameEnabled;

  final List<DiscoveryEngineWidgetConfigDataStoreUiConfigs>? dataStoreUiConfigs;

  final DiscoveryEngineWidgetConfigGenerativeAnswerConfig?
  generativeAnswerConfig;

  final DiscoveryEngineWidgetConfigSearchAddonSpec? searchAddonSpec;

  Map<String, Object?> encode() => {
    'default_search_request_order_by': ?defaultSearchRequestOrderBy?.toTfJson(),
    'disable_user_events_collection': ?disableUserEventsCollection?.toTfJson(),
    'enable_autocomplete': ?enableAutocomplete?.toTfJson(),
    'enable_create_agent_button': ?enableCreateAgentButton?.toTfJson(),
    'enable_people_search': ?enablePeopleSearch?.toTfJson(),
    'enable_quality_feedback': ?enableQualityFeedback?.toTfJson(),
    'enable_safe_search': ?enableSafeSearch?.toTfJson(),
    'enable_search_as_you_type': ?enableSearchAsYouType?.toTfJson(),
    'enable_visual_content_summary': ?enableVisualContentSummary?.toTfJson(),
    'interaction_type': ?interactionType?.toTfJson(),
    'result_description_type': ?resultDescriptionType?.toTfJson(),
    'source_admin_display_name_enabled': ?sourceAdminDisplayNameEnabled
        ?.toTfJson(),
    if (dataStoreUiConfigs != null)
      'data_store_ui_configs': [
        for (final e in dataStoreUiConfigs!) e.encode(),
      ],
    'generative_answer_config': ?generativeAnswerConfig?.encode(),
    'search_addon_spec': ?searchAddonSpec?.encode(),
  };
}

/// `interaction_type` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigInteractionType implements TerraformEnum {
  searchOnly('SEARCH_ONLY'),
  searchWithAnswer('SEARCH_WITH_ANSWER'),
  searchWithFollowUps('SEARCH_WITH_FOLLOW_UPS');

  const DiscoveryEngineWidgetConfigInteractionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `result_description_type` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigResultDescriptionType implements TerraformEnum {
  snippet('SNIPPET'),
  extractiveAnswer('EXTRACTIVE_ANSWER');

  const DiscoveryEngineWidgetConfigResultDescriptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ui_settings.data_store_ui_configs` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigDataStoreUiConfigs {
  const DiscoveryEngineWidgetConfigDataStoreUiConfigs({
    this.name,
    this.facetField,
    this.fieldsUiComponentsMap,
  });

  final TfArg<String>? name;

  final List<DiscoveryEngineWidgetConfigFacetField>? facetField;

  final List<DiscoveryEngineWidgetConfigFieldsUiComponentsMap>?
  fieldsUiComponentsMap;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (facetField != null)
      'facet_field': [for (final e in facetField!) e.encode()],
    if (fieldsUiComponentsMap != null)
      'fields_ui_components_map': [
        for (final e in fieldsUiComponentsMap!) e.encode(),
      ],
  };
}

/// Typed helper for the `ui_settings.data_store_ui_configs.facet_field` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigFacetField {
  const DiscoveryEngineWidgetConfigFacetField({
    this.displayName,
    required this.field,
  });

  final TfArg<String>? displayName;

  final TfArg<String> field;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'field': field.toTfJson(),
  };
}

/// Typed helper for the `ui_settings.data_store_ui_configs.fields_ui_components_map` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigFieldsUiComponentsMap {
  const DiscoveryEngineWidgetConfigFieldsUiComponentsMap({
    this.deviceVisibility,
    this.displayTemplate,
    required this.field,
    required this.uiComponent,
  });

  final List<TfArg<DiscoveryEngineWidgetConfigDeviceVisibility>>?
  deviceVisibility;

  final TfArg<String>? displayTemplate;

  final TfArg<String> field;

  final TfArg<String> uiComponent;

  Map<String, Object?> encode() => {
    if (deviceVisibility != null)
      'device_visibility': [for (final e in deviceVisibility!) e.toTfJson()],
    'display_template': ?displayTemplate?.toTfJson(),
    'field': field.toTfJson(),
    'ui_component': uiComponent.toTfJson(),
  };
}

/// `device_visibility` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigDeviceVisibility implements TerraformEnum {
  mobile('MOBILE'),
  desktop('DESKTOP');

  const DiscoveryEngineWidgetConfigDeviceVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ui_settings.generative_answer_config` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigGenerativeAnswerConfig {
  const DiscoveryEngineWidgetConfigGenerativeAnswerConfig({
    this.disableRelatedQuestions,
    this.ignoreAdversarialQuery,
    this.ignoreLowRelevantContent,
    this.ignoreNonAnswerSeekingQuery,
    this.imageSource,
    this.languageCode,
    this.maxRephraseSteps,
    this.modelPromptPreamble,
    this.modelVersion,
    this.resultCount,
  });

  final TfArg<bool>? disableRelatedQuestions;

  final TfArg<bool>? ignoreAdversarialQuery;

  final TfArg<bool>? ignoreLowRelevantContent;

  final TfArg<bool>? ignoreNonAnswerSeekingQuery;

  final TfArg<DiscoveryEngineWidgetConfigImageSource>? imageSource;

  final TfArg<String>? languageCode;

  final TfArg<num>? maxRephraseSteps;

  final TfArg<String>? modelPromptPreamble;

  final TfArg<String>? modelVersion;

  final TfArg<num>? resultCount;

  Map<String, Object?> encode() => {
    'disable_related_questions': ?disableRelatedQuestions?.toTfJson(),
    'ignore_adversarial_query': ?ignoreAdversarialQuery?.toTfJson(),
    'ignore_low_relevant_content': ?ignoreLowRelevantContent?.toTfJson(),
    'ignore_non_answer_seeking_query': ?ignoreNonAnswerSeekingQuery?.toTfJson(),
    'image_source': ?imageSource?.toTfJson(),
    'language_code': ?languageCode?.toTfJson(),
    'max_rephrase_steps': ?maxRephraseSteps?.toTfJson(),
    'model_prompt_preamble': ?modelPromptPreamble?.toTfJson(),
    'model_version': ?modelVersion?.toTfJson(),
    'result_count': ?resultCount?.toTfJson(),
  };
}

/// `image_source` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigImageSource implements TerraformEnum {
  allAvailableSources('ALL_AVAILABLE_SOURCES'),
  corpusImageOnly('CORPUS_IMAGE_ONLY'),
  figureGenerationOnly('FIGURE_GENERATION_ONLY');

  const DiscoveryEngineWidgetConfigImageSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ui_settings.search_addon_spec` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigSearchAddonSpec {
  const DiscoveryEngineWidgetConfigSearchAddonSpec({
    this.generativeAnswerAddOnDisabled,
    this.kpiPersonalizationAddOnDisabled,
    this.semanticAddOnDisabled,
  });

  final TfArg<bool>? generativeAnswerAddOnDisabled;

  final TfArg<bool>? kpiPersonalizationAddOnDisabled;

  final TfArg<bool>? semanticAddOnDisabled;

  Map<String, Object?> encode() => {
    'generative_answer_add_on_disabled': ?generativeAnswerAddOnDisabled
        ?.toTfJson(),
    'kpi_personalization_add_on_disabled': ?kpiPersonalizationAddOnDisabled
        ?.toTfJson(),
    'semantic_add_on_disabled': ?semanticAddOnDisabled?.toTfJson(),
  };
}

/// Factory wrapper for `google_discovery_engine_widget_config`.
///
/// Represents a WidgetConfig.
///
/// Vertex AI Search / Gemini Enterprise **widget config** — search /
/// generative UI widget attached to an engine (Agentspace surface).
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**). billing-behavior: widget configs sit on
/// the Gemini Enterprise / Agentspace entitlement path; MM
/// `exclude_delete: true` so Terraform cannot destroy them. **Never**
/// wire into apply-smoke.
final class GoogleDiscoveryEngineWidgetConfig extends Resource {
  static const String tfType = 'google_discovery_engine_widget_config';

  GoogleDiscoveryEngineWidgetConfig({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> engineId,
    TfArg<String>? collectionId,
    TfArg<String>? widgetConfigId,
    DiscoveryEngineWidgetConfigAccessSettings? accessSettings,
    DiscoveryEngineWidgetConfigUiSettings? uiSettings,
    DiscoveryEngineWidgetConfigUiBranding? uiBranding,
    DiscoveryEngineWidgetConfigHomepageSetting? homepageSetting,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'engine_id': engineId,
           'collection_id': ?collectionId,
           'widget_config_id': ?widgetConfigId,
           if (accessSettings != null)
             'access_settings': TfArg.literal(accessSettings.encode()),
           if (uiSettings != null)
             'ui_settings': TfArg.literal(uiSettings.encode()),
           if (uiBranding != null)
             'ui_branding': TfArg.literal(uiBranding.encode()),
           if (homepageSetting != null)
             'homepage_setting': TfArg.literal(homepageSetting.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineWidgetConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDiscoveryEngineWidgetConfig>`.
  RefTo<GoogleDiscoveryEngineWidgetConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `collection_id` attribute.
  TfRef<String> get collectionId =>
      TfRef.attribute<String>(this, 'collection_id');

  /// Reference to `engine_id` attribute.
  TfRef<String> get engineId => TfRef.attribute<String>(this, 'engine_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `widget_config_id` attribute.
  TfRef<String> get widgetConfigId =>
      TfRef.attribute<String>(this, 'widget_config_id');
}
