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

  GoogleDialogflowAgent(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'default_language_code': defaultLanguageCode,
           'time_zone': timeZone,
           'description': ?description,
           'avatar_uri': ?avatarUri,
           'enable_logging': ?enableLogging,
           'match_mode': ?matchMode,
           'classification_threshold': ?classificationThreshold,
           'api_version': ?apiVersion,
           'tier': ?tier,
           'supported_language_codes': ?supportedLanguageCodes,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowAgent>`.
  RefTo<GoogleDialogflowAgent> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `avatar_uri_backend` attribute.
  TfRef<String> get avatarUriBackend =>
      TfRef.attribute<String>(this, 'avatar_uri_backend');

  /// Reference to `api_version` attribute.
  TfRef<String> get apiVersion => TfRef.attribute<String>(this, 'api_version');

  /// Reference to `avatar_uri` attribute.
  TfRef<String> get avatarUri => TfRef.attribute<String>(this, 'avatar_uri');

  /// Reference to `classification_threshold` attribute.
  TfRef<num> get classificationThreshold =>
      TfRef.attribute<num>(this, 'classification_threshold');

  /// Reference to `default_language_code` attribute.
  TfRef<String> get defaultLanguageCode =>
      TfRef.attribute<String>(this, 'default_language_code');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLogging =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `match_mode` attribute.
  TfRef<String> get matchMode => TfRef.attribute<String>(this, 'match_mode');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `supported_language_codes` attribute.
  TfRef<List<String>> get supportedLanguageCodes =>
      TfRef.attribute<List<String>>(this, 'supported_language_codes');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
