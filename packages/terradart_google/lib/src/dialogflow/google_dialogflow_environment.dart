// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dialogflow/google_dialogflow_version.dart'
    show GoogleDialogflowVersion;

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

  final List<DialogflowEnvironmentFeatures>? features;

  final DialogflowEnvironmentGenericWebService? genericWebService;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'name': ?name?.toTfJson(),
    if (features != null) 'features': [for (final e in features!) e.encode()],
    'generic_web_service': ?genericWebService?.encode(),
  };
}

/// Typed helper for the `fulfillment.features` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentFeatures {
  const DialogflowEnvironmentFeatures({required this.type});

  final TfArg<DialogflowEnvironmentType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum DialogflowEnvironmentType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  smalltalk('SMALLTALK');

  const DialogflowEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `fulfillment.generic_web_service` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentGenericWebService {
  const DialogflowEnvironmentGenericWebService({
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
    'password': ?password?.toTfJson(),
    'request_headers': ?requestHeaders?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
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

  final TfArg<DialogflowEnvironmentOutputAudioEncoding>? outputAudioEncoding;

  final TfArg<num>? sampleRateHertz;

  final List<DialogflowEnvironmentSynthesizeSpeechConfigs>?
  synthesizeSpeechConfigs;

  Map<String, Object?> encode() => {
    'enable_text_to_speech': ?enableTextToSpeech?.toTfJson(),
    'output_audio_encoding': ?outputAudioEncoding?.toTfJson(),
    'sample_rate_hertz': ?sampleRateHertz?.toTfJson(),
    if (synthesizeSpeechConfigs != null)
      'synthesize_speech_configs': [
        for (final e in synthesizeSpeechConfigs!) e.encode(),
      ],
  };
}

/// `output_audio_encoding` — derived from the provider schema description.
enum DialogflowEnvironmentOutputAudioEncoding implements TerraformEnum {
  outputAudioEncodingUnspecified('OUTPUT_AUDIO_ENCODING_UNSPECIFIED'),
  outputAudioEncodingLinear16('OUTPUT_AUDIO_ENCODING_LINEAR_16'),
  outputAudioEncodingMp3('OUTPUT_AUDIO_ENCODING_MP3'),
  outputAudioEncodingMp364Kbps('OUTPUT_AUDIO_ENCODING_MP3_64_KBPS'),
  outputAudioEncodingOggOpus('OUTPUT_AUDIO_ENCODING_OGG_OPUS'),
  outputAudioEncodingMulaw('OUTPUT_AUDIO_ENCODING_MULAW'),
  outputAudioEncodingAlaw('OUTPUT_AUDIO_ENCODING_ALAW');

  const DialogflowEnvironmentOutputAudioEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `text_to_speech_settings.synthesize_speech_configs` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentSynthesizeSpeechConfigs {
  const DialogflowEnvironmentSynthesizeSpeechConfigs({
    this.effectsProfileId,
    required this.language,
    this.pitch,
    this.speakingRate,
    this.volumeGainDb,
    this.voice,
  });

  final TfArg<List<String>>? effectsProfileId;

  final TfArg<String> language;

  final TfArg<num>? pitch;

  final TfArg<num>? speakingRate;

  final TfArg<num>? volumeGainDb;

  final DialogflowEnvironmentVoice? voice;

  Map<String, Object?> encode() => {
    'effects_profile_id': ?effectsProfileId?.toTfJson(),
    'language': language.toTfJson(),
    'pitch': ?pitch?.toTfJson(),
    'speaking_rate': ?speakingRate?.toTfJson(),
    'volume_gain_db': ?volumeGainDb?.toTfJson(),
    'voice': ?voice?.encode(),
  };
}

/// Typed helper for the `text_to_speech_settings.synthesize_speech_configs.voice` block of
/// `google_dialogflow_environment` (derived from provider schema).
@immutable
final class DialogflowEnvironmentVoice {
  const DialogflowEnvironmentVoice({this.name, this.ssmlGender});

  final TfArg<String>? name;

  final TfArg<DialogflowEnvironmentSsmlGender>? ssmlGender;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'ssml_gender': ?ssmlGender?.toTfJson(),
  };
}

/// `ssml_gender` — derived from the provider schema description.
enum DialogflowEnvironmentSsmlGender implements TerraformEnum {
  ssmlVoiceGenderUnspecified('SSML_VOICE_GENDER_UNSPECIFIED'),
  ssmlVoiceGenderMale('SSML_VOICE_GENDER_MALE'),
  ssmlVoiceGenderFemale('SSML_VOICE_GENDER_FEMALE'),
  ssmlVoiceGenderNeutral('SSML_VOICE_GENDER_NEUTRAL');

  const DialogflowEnvironmentSsmlGender(this.terraformValue);
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
    RefTo<GoogleDialogflowVersion>? agentVersion,
    TfArg<String>? location,
    TfArg<String>? description,
    DialogflowEnvironmentFulfillment? fulfillment,
    DialogflowEnvironmentTextToSpeechSettings? textToSpeechSettings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environmentid': environmentid,
           'agent_version': ?agentVersion?.encodeAs('id'),
           'location': ?location,
           'description': ?description,
           if (fulfillment != null)
             'fulfillment': TfArg.literal(fulfillment.encode()),
           if (textToSpeechSettings != null)
             'text_to_speech_settings': TfArg.literal(
               textToSpeechSettings.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowEnvironment>`.
  RefTo<GoogleDialogflowEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersionRef =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `environmentid` attribute.
  TfRef<String> get environmentidRef =>
      TfRef.attribute<String>(this, 'environmentid');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
