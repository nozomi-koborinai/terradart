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
extension type const DialogflowEnvironmentState._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowEnvironmentState.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowEnvironmentState.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowEnvironmentState.arg(TfArg<String> arg) : this._(arg);

  static const stopped = DialogflowEnvironmentState._(TfArgLiteral('STOPPED'));
  static const loading = DialogflowEnvironmentState._(TfArgLiteral('LOADING'));
  static const running = DialogflowEnvironmentState._(TfArgLiteral('RUNNING'));

  static const List<DialogflowEnvironmentState> values = [
    stopped,
    loading,
    running,
  ];
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

  final DialogflowEnvironmentType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const DialogflowEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const typeUnspecified = DialogflowEnvironmentType._(
    TfArgLiteral('TYPE_UNSPECIFIED'),
  );
  static const smalltalk = DialogflowEnvironmentType._(
    TfArgLiteral('SMALLTALK'),
  );

  static const List<DialogflowEnvironmentType> values = [
    typeUnspecified,
    smalltalk,
  ];
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

  final DialogflowEnvironmentOutputAudioEncoding? outputAudioEncoding;

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
extension type const DialogflowEnvironmentOutputAudioEncoding._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowEnvironmentOutputAudioEncoding.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowEnvironmentOutputAudioEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowEnvironmentOutputAudioEncoding.arg(TfArg<String> arg)
    : this._(arg);

  static const outputAudioEncodingUnspecified =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_UNSPECIFIED'),
      );
  static const outputAudioEncodingLinear16 =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_LINEAR_16'),
      );
  static const outputAudioEncodingMp3 =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_MP3'),
      );
  static const outputAudioEncodingMp364Kbps =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_MP3_64_KBPS'),
      );
  static const outputAudioEncodingOggOpus =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_OGG_OPUS'),
      );
  static const outputAudioEncodingMulaw =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_MULAW'),
      );
  static const outputAudioEncodingAlaw =
      DialogflowEnvironmentOutputAudioEncoding._(
        TfArgLiteral('OUTPUT_AUDIO_ENCODING_ALAW'),
      );

  static const List<DialogflowEnvironmentOutputAudioEncoding> values = [
    outputAudioEncodingUnspecified,
    outputAudioEncodingLinear16,
    outputAudioEncodingMp3,
    outputAudioEncodingMp364Kbps,
    outputAudioEncodingOggOpus,
    outputAudioEncodingMulaw,
    outputAudioEncodingAlaw,
  ];
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

  final DialogflowEnvironmentSsmlGender? ssmlGender;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'ssml_gender': ?ssmlGender?.toTfJson(),
  };
}

/// `ssml_gender` — derived from the provider schema description.
extension type const DialogflowEnvironmentSsmlGender._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowEnvironmentSsmlGender.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowEnvironmentSsmlGender.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowEnvironmentSsmlGender.arg(TfArg<String> arg) : this._(arg);

  static const ssmlVoiceGenderUnspecified = DialogflowEnvironmentSsmlGender._(
    TfArgLiteral('SSML_VOICE_GENDER_UNSPECIFIED'),
  );
  static const ssmlVoiceGenderMale = DialogflowEnvironmentSsmlGender._(
    TfArgLiteral('SSML_VOICE_GENDER_MALE'),
  );
  static const ssmlVoiceGenderFemale = DialogflowEnvironmentSsmlGender._(
    TfArgLiteral('SSML_VOICE_GENDER_FEMALE'),
  );
  static const ssmlVoiceGenderNeutral = DialogflowEnvironmentSsmlGender._(
    TfArgLiteral('SSML_VOICE_GENDER_NEUTRAL'),
  );

  static const List<DialogflowEnvironmentSsmlGender> values = [
    ssmlVoiceGenderUnspecified,
    ssmlVoiceGenderMale,
    ssmlVoiceGenderFemale,
    ssmlVoiceGenderNeutral,
  ];
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

  GoogleDialogflowEnvironment(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `agent_version` attribute.
  TfRef<String> get agentVersion =>
      TfRef.attribute<String>(this, 'agent_version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environmentid` attribute.
  TfRef<String> get environmentid =>
      TfRef.attribute<String>(this, 'environmentid');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
