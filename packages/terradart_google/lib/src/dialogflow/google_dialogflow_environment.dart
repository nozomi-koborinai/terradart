// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_environment`.
const Set<String> _googleDialogflowEnvironmentSensitive = <String>{};

/// Dialogflow Environment enum for `state`.
enum DialogflowEnvironmentState implements TerraformEnum {
  stopped('STOPPED'),
  loading('LOADING'),
  running('RUNNING');

  const DialogflowEnvironmentState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `fulfillment` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentFulfillment {
  const DialogflowEnvironmentFulfillment({
    this.displayName,
    this.name,
    this.features,
    this.genericWebService,
  });

  final TfArg<String>? displayName;

  final TfArg<String>? name;

  final List<DialogflowEnvironmentFulfillmentFeatures>? features;

  final DialogflowEnvironmentFulfillmentGenericWebService? genericWebService;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (features != null) 'features': [for (final e in features!) e.encode()],
    if (genericWebService != null)
      'generic_web_service': genericWebService!.encode(),
  };
}

/// Typed helper for the `fulfillment.features` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentFulfillmentFeatures {
  const DialogflowEnvironmentFulfillmentFeatures({required this.type});

  final TfArg<DialogflowEnvironmentFulfillmentFeaturesType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum DialogflowEnvironmentFulfillmentFeaturesType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  smalltalk('SMALLTALK');

  const DialogflowEnvironmentFulfillmentFeaturesType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `fulfillment.generic_web_service` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentFulfillmentGenericWebService {
  const DialogflowEnvironmentFulfillmentGenericWebService({
    this.password,
    this.requestHeaders,
    required this.uri,
    this.username,
  });

  final TfArg<String>? password;

  final TfArg<Map<String, String>>? requestHeaders;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (password != null) 'password': password!.toTfJson(),
    if (requestHeaders != null) 'request_headers': requestHeaders!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `text_to_speech_settings` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentTextToSpeechSettings {
  const DialogflowEnvironmentTextToSpeechSettings({
    this.enableTextToSpeech,
    this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  final TfArg<bool>? enableTextToSpeech;

  final TfArg<DialogflowEnvironmentTextToSpeechSettingsOutputAudioEncoding>?
  outputAudioEncoding;

  final TfArg<num>? sampleRateHertz;

  final List<DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigs>?
  synthesizeSpeechConfigs;

  Map<String, Object?> encode() => {
    if (enableTextToSpeech != null)
      'enable_text_to_speech': enableTextToSpeech!.toTfJson(),
    if (outputAudioEncoding != null)
      'output_audio_encoding': outputAudioEncoding!.toTfJson(),
    if (sampleRateHertz != null)
      'sample_rate_hertz': sampleRateHertz!.toTfJson(),
    if (synthesizeSpeechConfigs != null)
      'synthesize_speech_configs': [
        for (final e in synthesizeSpeechConfigs!) e.encode(),
      ],
  };
}

/// `output_audio_encoding` — derived from the provider schema description.
enum DialogflowEnvironmentTextToSpeechSettingsOutputAudioEncoding
    implements TerraformEnum {
  outputAudioEncodingUnspecified('OUTPUT_AUDIO_ENCODING_UNSPECIFIED'),
  outputAudioEncodingLinear16('OUTPUT_AUDIO_ENCODING_LINEAR_16'),
  outputAudioEncodingMp3('OUTPUT_AUDIO_ENCODING_MP3'),
  outputAudioEncodingMp364Kbps('OUTPUT_AUDIO_ENCODING_MP3_64_KBPS'),
  outputAudioEncodingOggOpus('OUTPUT_AUDIO_ENCODING_OGG_OPUS'),
  outputAudioEncodingMulaw('OUTPUT_AUDIO_ENCODING_MULAW'),
  outputAudioEncodingAlaw('OUTPUT_AUDIO_ENCODING_ALAW');

  const DialogflowEnvironmentTextToSpeechSettingsOutputAudioEncoding(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `text_to_speech_settings.synthesize_speech_configs` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigs {
  const DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigs({
    this.effectsProfileId,
    required this.language,
    this.pitch,
    this.speakingRate,
    this.volumeGainDb,
    this.voice,
  });

  final TfArg<List<Object?>>? effectsProfileId;

  final TfArg<String> language;

  final TfArg<num>? pitch;

  final TfArg<num>? speakingRate;

  final TfArg<num>? volumeGainDb;

  final DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoice?
  voice;

  Map<String, Object?> encode() => {
    if (effectsProfileId != null)
      'effects_profile_id': effectsProfileId!.toTfJson(),
    'language': language.toTfJson(),
    if (pitch != null) 'pitch': pitch!.toTfJson(),
    if (speakingRate != null) 'speaking_rate': speakingRate!.toTfJson(),
    if (volumeGainDb != null) 'volume_gain_db': volumeGainDb!.toTfJson(),
    if (voice != null) 'voice': voice!.encode(),
  };
}

/// Typed helper for the `text_to_speech_settings.synthesize_speech_configs.voice` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoice {
  const DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoice({
    this.name,
    this.ssmlGender,
  });

  final TfArg<String>? name;

  final TfArg<
    DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoiceSsmlGender
  >?
  ssmlGender;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (ssmlGender != null) 'ssml_gender': ssmlGender!.toTfJson(),
  };
}

/// `ssml_gender` — derived from the provider schema description.
enum DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoiceSsmlGender
    implements TerraformEnum {
  ssmlVoiceGenderUnspecified('SSML_VOICE_GENDER_UNSPECIFIED'),
  ssmlVoiceGenderMale('SSML_VOICE_GENDER_MALE'),
  ssmlVoiceGenderFemale('SSML_VOICE_GENDER_FEMALE'),
  ssmlVoiceGenderNeutral('SSML_VOICE_GENDER_NEUTRAL');

  const DialogflowEnvironmentTextToSpeechSettingsSynthesizeSpeechConfigsVoiceSsmlGender(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dialogflow_environment`.
///
/// Represents an environment for an agent. You can create multiple versions of
/// your agent and publish them to separate environments.
///
/// Dialogflow ES **environment** — named serving environment that
/// loads an agent version (`environmentid` is the URL id).
///
/// **Cost:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Intent Detection
/// Text Query Operations for Enterprise Essentials Agents `114B-F183-612D`
/// **$0.002/count**. billing-behavior: environments are design-time
/// config; query SKUs fire only on DetectIntent against a published
/// environment (this factory never invokes it). Do not enable
/// `text_to_speech_settings` in apply-smoke (Enterprise TTS SKU
/// `B82E-CE31-1AB6`). Enable `dialogflow.googleapis.com` before apply.
/// Create [GoogleDialogflowAgent] and [GoogleDialogflowVersion] first.
final class GoogleDialogflowEnvironment extends Resource {
  static const String tfType = 'google_dialogflow_environment';

  GoogleDialogflowEnvironment({
    required super.localName,
    required TfArg<String> environmentid,
    TfArg<String>? agentVersion,
    TfArg<String>? location,
    TfArg<String>? description,
    DialogflowEnvironmentFulfillment? fulfillment,
    DialogflowEnvironmentTextToSpeechSettings? textToSpeechSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environmentid': environmentid,
           if (agentVersion != null) 'agent_version': agentVersion,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (fulfillment != null)
             'fulfillment': TfArg.literal(fulfillment.encode()),
           if (textToSpeechSettings != null)
             'text_to_speech_settings': TfArg.literal(
               textToSpeechSettings.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
