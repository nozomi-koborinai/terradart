// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_agent`.
const Set<String> _googleDialogflowAgentSensitive = <String>{};

/// Dialogflow API version surfaced for a [GoogleDialogflowAgent].
enum DialogflowAgentApiVersion implements TerraformEnum {
  /// Legacy V1 API.
  v1('API_VERSION_V1'),

  /// V2 API (default).
  v2('API_VERSION_V2'),

  /// V2beta1 API.
  v2Beta1('API_VERSION_V2_BETA_1');

  const DialogflowAgentApiVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// How intents are matched from user queries for a [GoogleDialogflowAgent].
enum DialogflowAgentMatchMode implements TerraformEnum {
  /// Hybrid (rules + ML) — best for small intent sets / templates.
  hybrid('MATCH_MODE_HYBRID'),

  /// ML-only — best for large intent sets.
  mlOnly('MATCH_MODE_ML_ONLY');

  const DialogflowAgentMatchMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Service tier of a [GoogleDialogflowAgent].
enum DialogflowAgentTier implements TerraformEnum {
  /// Standard tier (default).
  standard('TIER_STANDARD'),

  /// Enterprise tier (Essentials).
  enterprise('TIER_ENTERPRISE'),

  /// Enterprise tier (Plus).
  enterprisePlus('TIER_ENTERPRISE_PLUS');

  const DialogflowAgentTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dialogflow_agent`.
///
/// A Dialogflow agent is a virtual agent that handles conversations with your
/// end-users. It is a natural language understanding module that understands
/// the nuances of human language. Dialogflow translates end-user text or audio
/// during a conversation to structured data that your apps and services can
/// understand. You design and build a Dialogflow agent to handle the types of
/// conversations required for your system.
final class GoogleDialogflowAgent extends Resource {
  static const String tfType = 'google_dialogflow_agent';

  GoogleDialogflowAgent({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> defaultLanguageCode,
    required TfArg<String> timeZone,
    TfArg<String>? description,
    TfArg<String>? avatarUri,
    TfArg<bool>? enableLogging,
    TfArg<DialogflowAgentMatchMode>? matchMode,
    TfArg<num>? classificationThreshold,
    TfArg<DialogflowAgentApiVersion>? apiVersion,
    TfArg<DialogflowAgentTier>? tier,
    TfArg<List<String>>? supportedLanguageCodes,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'default_language_code': defaultLanguageCode,
           'time_zone': timeZone,
           if (description != null) 'description': description,
           if (avatarUri != null) 'avatar_uri': avatarUri,
           if (enableLogging != null) 'enable_logging': enableLogging,
           if (matchMode != null) 'match_mode': matchMode,
           if (classificationThreshold != null)
             'classification_threshold': classificationThreshold,
           if (apiVersion != null) 'api_version': apiVersion,
           if (tier != null) 'tier': tier,
           if (supportedLanguageCodes != null)
             'supported_language_codes': supportedLanguageCodes,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowAgentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `avatar_uri_backend` attribute.
  TfRef<String> get avatarUriBackend =>
      TfRef.attribute<String>(this, 'avatar_uri_backend');
}
