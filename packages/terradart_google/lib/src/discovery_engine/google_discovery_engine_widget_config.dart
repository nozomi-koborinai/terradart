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

  final TfArg<List<Object?>>? allowlistedDomains;

  final TfArg<bool>? enableWebApp;

  final TfArg<String>? languageCode;

  final TfArg<String>? workforceIdentityPoolProvider;

  Map<String, Object?> encode() => {
    if (allowPublicAccess != null)
      'allow_public_access': allowPublicAccess!.toTfJson(),
    if (allowlistedDomains != null)
      'allowlisted_domains': allowlistedDomains!.toTfJson(),
    if (enableWebApp != null) 'enable_web_app': enableWebApp!.toTfJson(),
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    if (workforceIdentityPoolProvider != null)
      'workforce_identity_pool_provider': workforceIdentityPoolProvider!
          .toTfJson(),
  };
}

/// Typed helper for the `homepage_setting` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigHomepageSetting {
  const DiscoveryEngineWidgetConfigHomepageSetting({this.shortcuts});

  final List<DiscoveryEngineWidgetConfigHomepageSettingShortcuts>? shortcuts;

  Map<String, Object?> encode() => {
    if (shortcuts != null)
      'shortcuts': [for (final e in shortcuts!) e.encode()],
  };
}

/// Typed helper for the `homepage_setting.shortcuts` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigHomepageSettingShortcuts {
  const DiscoveryEngineWidgetConfigHomepageSettingShortcuts({
    this.destinationUri,
    this.title,
    this.icon,
  });

  final TfArg<String>? destinationUri;

  final TfArg<String>? title;

  final DiscoveryEngineWidgetConfigHomepageSettingShortcutsIcon? icon;

  Map<String, Object?> encode() => {
    if (destinationUri != null) 'destination_uri': destinationUri!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    if (icon != null) 'icon': icon!.encode(),
  };
}

/// Typed helper for the `homepage_setting.shortcuts.icon` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigHomepageSettingShortcutsIcon {
  const DiscoveryEngineWidgetConfigHomepageSettingShortcutsIcon({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {if (url != null) 'url': url!.toTfJson()};
}

/// Typed helper for the `ui_branding` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiBranding {
  const DiscoveryEngineWidgetConfigUiBranding({this.logo});

  final DiscoveryEngineWidgetConfigUiBrandingLogo? logo;

  Map<String, Object?> encode() => {if (logo != null) 'logo': logo!.encode()};
}

/// Typed helper for the `ui_branding.logo` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiBrandingLogo {
  const DiscoveryEngineWidgetConfigUiBrandingLogo({this.url});

  final TfArg<String>? url;

  Map<String, Object?> encode() => {if (url != null) 'url': url!.toTfJson()};
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
    this.dataStoreUiConfigs,
    this.generativeAnswerConfig,
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

  final TfArg<DiscoveryEngineWidgetConfigUiSettingsInteractionType>?
  interactionType;

  final TfArg<DiscoveryEngineWidgetConfigUiSettingsResultDescriptionType>?
  resultDescriptionType;

  final List<DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigs>?
  dataStoreUiConfigs;

  final DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfig?
  generativeAnswerConfig;

  Map<String, Object?> encode() => {
    if (defaultSearchRequestOrderBy != null)
      'default_search_request_order_by': defaultSearchRequestOrderBy!
          .toTfJson(),
    if (disableUserEventsCollection != null)
      'disable_user_events_collection': disableUserEventsCollection!.toTfJson(),
    if (enableAutocomplete != null)
      'enable_autocomplete': enableAutocomplete!.toTfJson(),
    if (enableCreateAgentButton != null)
      'enable_create_agent_button': enableCreateAgentButton!.toTfJson(),
    if (enablePeopleSearch != null)
      'enable_people_search': enablePeopleSearch!.toTfJson(),
    if (enableQualityFeedback != null)
      'enable_quality_feedback': enableQualityFeedback!.toTfJson(),
    if (enableSafeSearch != null)
      'enable_safe_search': enableSafeSearch!.toTfJson(),
    if (enableSearchAsYouType != null)
      'enable_search_as_you_type': enableSearchAsYouType!.toTfJson(),
    if (enableVisualContentSummary != null)
      'enable_visual_content_summary': enableVisualContentSummary!.toTfJson(),
    if (interactionType != null)
      'interaction_type': interactionType!.toTfJson(),
    if (resultDescriptionType != null)
      'result_description_type': resultDescriptionType!.toTfJson(),
    if (dataStoreUiConfigs != null)
      'data_store_ui_configs': [
        for (final e in dataStoreUiConfigs!) e.encode(),
      ],
    if (generativeAnswerConfig != null)
      'generative_answer_config': generativeAnswerConfig!.encode(),
  };
}

/// `interaction_type` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigUiSettingsInteractionType
    implements TerraformEnum {
  searchOnly('SEARCH_ONLY'),
  searchWithAnswer('SEARCH_WITH_ANSWER'),
  searchWithFollowUps('SEARCH_WITH_FOLLOW_UPS');

  const DiscoveryEngineWidgetConfigUiSettingsInteractionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `result_description_type` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigUiSettingsResultDescriptionType
    implements TerraformEnum {
  snippet('SNIPPET'),
  extractiveAnswer('EXTRACTIVE_ANSWER');

  const DiscoveryEngineWidgetConfigUiSettingsResultDescriptionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ui_settings.data_store_ui_configs` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigs {
  const DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigs({
    this.name,
    this.facetField,
    this.fieldsUiComponentsMap,
  });

  final TfArg<String>? name;

  final List<DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFacetField>?
  facetField;

  final List<
    DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMap
  >?
  fieldsUiComponentsMap;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
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
final class DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFacetField {
  const DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFacetField({
    this.displayName,
    required this.field,
  });

  final TfArg<String>? displayName;

  final TfArg<String> field;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'field': field.toTfJson(),
  };
}

/// Typed helper for the `ui_settings.data_store_ui_configs.fields_ui_components_map` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMap {
  const DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMap({
    this.deviceVisibility,
    this.displayTemplate,
    required this.field,
    required this.uiComponent,
  });

  final List<
    TfArg<
      DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMapDeviceVisibility
    >
  >?
  deviceVisibility;

  final TfArg<String>? displayTemplate;

  final TfArg<String> field;

  final TfArg<String> uiComponent;

  Map<String, Object?> encode() => {
    if (deviceVisibility != null)
      'device_visibility': [for (final e in deviceVisibility!) e.toTfJson()],
    if (displayTemplate != null)
      'display_template': displayTemplate!.toTfJson(),
    'field': field.toTfJson(),
    'ui_component': uiComponent.toTfJson(),
  };
}

/// `device_visibility` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMapDeviceVisibility
    implements TerraformEnum {
  mobile('MOBILE'),
  desktop('DESKTOP');

  const DiscoveryEngineWidgetConfigUiSettingsDataStoreUiConfigsFieldsUiComponentsMapDeviceVisibility(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ui_settings.generative_answer_config` block of
/// `google_discovery_engine_widget_config` (derived from provider schema).
@immutable
final class DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfig {
  const DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfig({
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

  final TfArg<
    DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfigImageSource
  >?
  imageSource;

  final TfArg<String>? languageCode;

  final TfArg<num>? maxRephraseSteps;

  final TfArg<String>? modelPromptPreamble;

  final TfArg<String>? modelVersion;

  final TfArg<num>? resultCount;

  Map<String, Object?> encode() => {
    if (disableRelatedQuestions != null)
      'disable_related_questions': disableRelatedQuestions!.toTfJson(),
    if (ignoreAdversarialQuery != null)
      'ignore_adversarial_query': ignoreAdversarialQuery!.toTfJson(),
    if (ignoreLowRelevantContent != null)
      'ignore_low_relevant_content': ignoreLowRelevantContent!.toTfJson(),
    if (ignoreNonAnswerSeekingQuery != null)
      'ignore_non_answer_seeking_query': ignoreNonAnswerSeekingQuery!
          .toTfJson(),
    if (imageSource != null) 'image_source': imageSource!.toTfJson(),
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    if (maxRephraseSteps != null)
      'max_rephrase_steps': maxRephraseSteps!.toTfJson(),
    if (modelPromptPreamble != null)
      'model_prompt_preamble': modelPromptPreamble!.toTfJson(),
    if (modelVersion != null) 'model_version': modelVersion!.toTfJson(),
    if (resultCount != null) 'result_count': resultCount!.toTfJson(),
  };
}

/// `image_source` — derived from the provider schema description.
enum DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfigImageSource
    implements TerraformEnum {
  allAvailableSources('ALL_AVAILABLE_SOURCES'),
  corpusImageOnly('CORPUS_IMAGE_ONLY'),
  figureGenerationOnly('FIGURE_GENERATION_ONLY');

  const DiscoveryEngineWidgetConfigUiSettingsGenerativeAnswerConfigImageSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'engine_id': engineId,
           if (collectionId != null) 'collection_id': collectionId,
           if (widgetConfigId != null) 'widget_config_id': widgetConfigId,
           if (accessSettings != null)
             'access_settings': TfArg.literal(accessSettings.encode()),
           if (uiSettings != null)
             'ui_settings': TfArg.literal(uiSettings.encode()),
           if (uiBranding != null)
             'ui_branding': TfArg.literal(uiBranding.encode()),
           if (homepageSetting != null)
             'homepage_setting': TfArg.literal(homepageSetting.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineWidgetConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_id` attribute.
  TfRef<String> get configId => TfRef.attribute<String>(this, 'config_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
