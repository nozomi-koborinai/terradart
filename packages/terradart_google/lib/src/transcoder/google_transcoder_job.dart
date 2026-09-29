// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_transcoder_job`.
const Set<String> _googleTranscoderJobSensitive = <String>{};

/// Typed helper for the `config` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfig {
  const TranscoderJobConfig({
    this.adBreaks,
    this.editList,
    this.elementaryStreams,
    this.encryptions,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
  });

  final List<TranscoderJobConfigAdBreaks>? adBreaks;

  final List<TranscoderJobConfigEditList>? editList;

  final List<TranscoderJobConfigElementaryStreams>? elementaryStreams;

  final List<TranscoderJobConfigEncryptions>? encryptions;

  final List<TranscoderJobConfigInputs>? inputs;

  final List<TranscoderJobConfigManifests>? manifests;

  final List<TranscoderJobConfigMuxStreams>? muxStreams;

  final TranscoderJobConfigOutput? output;

  final List<TranscoderJobConfigOverlays>? overlays;

  final TranscoderJobConfigPubsubDestination? pubsubDestination;

  Map<String, Object?> encode() => {
    if (adBreaks != null) 'ad_breaks': [for (final e in adBreaks!) e.encode()],
    if (editList != null) 'edit_list': [for (final e in editList!) e.encode()],
    if (elementaryStreams != null)
      'elementary_streams': [for (final e in elementaryStreams!) e.encode()],
    if (encryptions != null)
      'encryptions': [for (final e in encryptions!) e.encode()],
    if (inputs != null) 'inputs': [for (final e in inputs!) e.encode()],
    if (manifests != null)
      'manifests': [for (final e in manifests!) e.encode()],
    if (muxStreams != null)
      'mux_streams': [for (final e in muxStreams!) e.encode()],
    'output': ?output?.encode(),
    if (overlays != null) 'overlays': [for (final e in overlays!) e.encode()],
    'pubsub_destination': ?pubsubDestination?.encode(),
  };
}

/// Typed helper for the `config.ad_breaks` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigAdBreaks {
  const TranscoderJobConfigAdBreaks({this.startTimeOffset});

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    'start_time_offset': ?startTimeOffset?.toTfJson(),
  };
}

/// Typed helper for the `config.edit_list` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEditList {
  const TranscoderJobConfigEditList({
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  final TfArg<List<Object?>>? inputs;

  final TfArg<String>? key;

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    'inputs': ?inputs?.toTfJson(),
    'key': ?key?.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
  };
}

/// Typed helper for the `config.elementary_streams` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreams {
  const TranscoderJobConfigElementaryStreams({
    this.key,
    this.audioStream,
    this.videoStream,
  });

  final TfArg<String>? key;

  final TranscoderJobConfigElementaryStreamsAudioStream? audioStream;

  final TranscoderJobConfigElementaryStreamsVideoStream? videoStream;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'audio_stream': ?audioStream?.encode(),
    'video_stream': ?videoStream?.encode(),
  };
}

/// Typed helper for the `config.elementary_streams.audio_stream` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreamsAudioStream {
  const TranscoderJobConfigElementaryStreamsAudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayout,
    this.codec,
    this.sampleRateHertz,
  });

  final TfArg<num> bitrateBps;

  final TfArg<num>? channelCount;

  final TfArg<List<Object?>>? channelLayout;

  final TfArg<String>? codec;

  final TfArg<num>? sampleRateHertz;

  Map<String, Object?> encode() => {
    'bitrate_bps': bitrateBps.toTfJson(),
    'channel_count': ?channelCount?.toTfJson(),
    'channel_layout': ?channelLayout?.toTfJson(),
    'codec': ?codec?.toTfJson(),
    'sample_rate_hertz': ?sampleRateHertz?.toTfJson(),
  };
}

/// Typed helper for the `config.elementary_streams.video_stream` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreamsVideoStream {
  const TranscoderJobConfigElementaryStreamsVideoStream({this.h264});

  final TranscoderJobConfigElementaryStreamsVideoStreamH264? h264;

  Map<String, Object?> encode() => {'h264': ?h264?.encode()};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreamsVideoStreamH264 {
  const TranscoderJobConfigElementaryStreamsVideoStreamH264({
    required this.bitrateBps,
    this.crfLevel,
    this.entropyCoder,
    required this.frameRate,
    this.gopDuration,
    this.heightPixels,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
    this.hlg,
    this.sdr,
  });

  final TfArg<num> bitrateBps;

  final TfArg<num>? crfLevel;

  final TfArg<String>? entropyCoder;

  final TfArg<num> frameRate;

  final TfArg<String>? gopDuration;

  final TfArg<num>? heightPixels;

  final TfArg<String>? pixelFormat;

  final TfArg<String>? preset;

  final TfArg<String>? profile;

  final TfArg<String>? rateControlMode;

  final TfArg<num>? vbvFullnessBits;

  final TfArg<num>? vbvSizeBits;

  final TfArg<num>? widthPixels;

  final TranscoderJobConfigElementaryStreamsVideoStreamH264Hlg? hlg;

  final TranscoderJobConfigElementaryStreamsVideoStreamH264Sdr? sdr;

  Map<String, Object?> encode() => {
    'bitrate_bps': bitrateBps.toTfJson(),
    'crf_level': ?crfLevel?.toTfJson(),
    'entropy_coder': ?entropyCoder?.toTfJson(),
    'frame_rate': frameRate.toTfJson(),
    'gop_duration': ?gopDuration?.toTfJson(),
    'height_pixels': ?heightPixels?.toTfJson(),
    'pixel_format': ?pixelFormat?.toTfJson(),
    'preset': ?preset?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'rate_control_mode': ?rateControlMode?.toTfJson(),
    'vbv_fullness_bits': ?vbvFullnessBits?.toTfJson(),
    'vbv_size_bits': ?vbvSizeBits?.toTfJson(),
    'width_pixels': ?widthPixels?.toTfJson(),
    'hlg': ?hlg?.encode(),
    'sdr': ?sdr?.encode(),
  };
}

/// Typed helper for the `config.elementary_streams.video_stream.h264.hlg` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreamsVideoStreamH264Hlg {
  const TranscoderJobConfigElementaryStreamsVideoStreamH264Hlg();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264.sdr` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigElementaryStreamsVideoStreamH264Sdr {
  const TranscoderJobConfigElementaryStreamsVideoStreamH264Sdr();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptions {
  const TranscoderJobConfigEncryptions({
    required this.id,
    this.aes128,
    this.drmSystems,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  final TfArg<String> id;

  final TranscoderJobConfigEncryptionsAes128? aes128;

  final TranscoderJobConfigEncryptionsDrmSystems? drmSystems;

  final TranscoderJobConfigEncryptionsMpegCenc? mpegCenc;

  final TranscoderJobConfigEncryptionsSampleAes? sampleAes;

  final TranscoderJobConfigEncryptionsSecretManagerKeySource?
  secretManagerKeySource;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'aes128': ?aes128?.encode(),
    'drm_systems': ?drmSystems?.encode(),
    'mpeg_cenc': ?mpegCenc?.encode(),
    'sample_aes': ?sampleAes?.encode(),
    'secret_manager_key_source': ?secretManagerKeySource?.encode(),
  };
}

/// Typed helper for the `config.encryptions.aes128` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsAes128 {
  const TranscoderJobConfigEncryptionsAes128();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsDrmSystems {
  const TranscoderJobConfigEncryptionsDrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  final TranscoderJobConfigEncryptionsDrmSystemsClearkey? clearkey;

  final TranscoderJobConfigEncryptionsDrmSystemsFairplay? fairplay;

  final TranscoderJobConfigEncryptionsDrmSystemsPlayready? playready;

  final TranscoderJobConfigEncryptionsDrmSystemsWidevine? widevine;

  Map<String, Object?> encode() => {
    'clearkey': ?clearkey?.encode(),
    'fairplay': ?fairplay?.encode(),
    'playready': ?playready?.encode(),
    'widevine': ?widevine?.encode(),
  };
}

/// Typed helper for the `config.encryptions.drm_systems.clearkey` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsDrmSystemsClearkey {
  const TranscoderJobConfigEncryptionsDrmSystemsClearkey();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.fairplay` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsDrmSystemsFairplay {
  const TranscoderJobConfigEncryptionsDrmSystemsFairplay();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.playready` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsDrmSystemsPlayready {
  const TranscoderJobConfigEncryptionsDrmSystemsPlayready();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.widevine` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsDrmSystemsWidevine {
  const TranscoderJobConfigEncryptionsDrmSystemsWidevine();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.mpeg_cenc` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsMpegCenc {
  const TranscoderJobConfigEncryptionsMpegCenc({required this.scheme});

  final TfArg<String> scheme;

  Map<String, Object?> encode() => {'scheme': scheme.toTfJson()};
}

/// Typed helper for the `config.encryptions.sample_aes` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsSampleAes {
  const TranscoderJobConfigEncryptionsSampleAes();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.secret_manager_key_source` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigEncryptionsSecretManagerKeySource {
  const TranscoderJobConfigEncryptionsSecretManagerKeySource({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `config.inputs` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigInputs {
  const TranscoderJobConfigInputs({this.key, this.uri});

  final TfArg<String>? key;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `config.manifests` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigManifests {
  const TranscoderJobConfigManifests({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  final TfArg<String>? fileName;

  final TfArg<List<Object?>>? muxStreams;

  final TfArg<TranscoderJobConfigManifestsType>? type;

  Map<String, Object?> encode() => {
    'file_name': ?fileName?.toTfJson(),
    'mux_streams': ?muxStreams?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum TranscoderJobConfigManifestsType implements TerraformEnum {
  manifestTypeUnspecified('MANIFEST_TYPE_UNSPECIFIED'),
  hls('HLS'),
  dash('DASH');

  const TranscoderJobConfigManifestsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.mux_streams` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigMuxStreams {
  const TranscoderJobConfigMuxStreams({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  final TfArg<String>? container;

  final TfArg<List<Object?>>? elementaryStreams;

  final TfArg<String>? encryptionId;

  final TfArg<String>? fileName;

  final TfArg<String>? key;

  final TranscoderJobConfigMuxStreamsSegmentSettings? segmentSettings;

  Map<String, Object?> encode() => {
    'container': ?container?.toTfJson(),
    'elementary_streams': ?elementaryStreams?.toTfJson(),
    'encryption_id': ?encryptionId?.toTfJson(),
    'file_name': ?fileName?.toTfJson(),
    'key': ?key?.toTfJson(),
    'segment_settings': ?segmentSettings?.encode(),
  };
}

/// Typed helper for the `config.mux_streams.segment_settings` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigMuxStreamsSegmentSettings {
  const TranscoderJobConfigMuxStreamsSegmentSettings({this.segmentDuration});

  final TfArg<String>? segmentDuration;

  Map<String, Object?> encode() => {
    'segment_duration': ?segmentDuration?.toTfJson(),
  };
}

/// Typed helper for the `config.output` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOutput {
  const TranscoderJobConfigOutput({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `config.overlays` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOverlays {
  const TranscoderJobConfigOverlays({this.animations, this.image});

  final List<TranscoderJobConfigOverlaysAnimations>? animations;

  final TranscoderJobConfigOverlaysImage? image;

  Map<String, Object?> encode() => {
    if (animations != null)
      'animations': [for (final e in animations!) e.encode()],
    'image': ?image?.encode(),
  };
}

/// Typed helper for the `config.overlays.animations` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOverlaysAnimations {
  const TranscoderJobConfigOverlaysAnimations({this.animationFade});

  final TranscoderJobConfigOverlaysAnimationsAnimationFade? animationFade;

  Map<String, Object?> encode() => {'animation_fade': ?animationFade?.encode()};
}

/// Typed helper for the `config.overlays.animations.animation_fade` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOverlaysAnimationsAnimationFade {
  const TranscoderJobConfigOverlaysAnimationsAnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  final TfArg<String>? endTimeOffset;

  final TfArg<TranscoderJobConfigOverlaysAnimationsAnimationFadeFadeType>
  fadeType;

  final TfArg<String>? startTimeOffset;

  final TranscoderJobConfigOverlaysAnimationsAnimationFadeXy? xy;

  Map<String, Object?> encode() => {
    'end_time_offset': ?endTimeOffset?.toTfJson(),
    'fade_type': fadeType.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
    'xy': ?xy?.encode(),
  };
}

/// `fade_type` — derived from the provider schema description.
enum TranscoderJobConfigOverlaysAnimationsAnimationFadeFadeType
    implements TerraformEnum {
  fadeTypeUnspecified('FADE_TYPE_UNSPECIFIED'),
  fadeIn('FADE_IN'),
  fadeOut('FADE_OUT');

  const TranscoderJobConfigOverlaysAnimationsAnimationFadeFadeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `config.overlays.animations.animation_fade.xy` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOverlaysAnimationsAnimationFadeXy {
  const TranscoderJobConfigOverlaysAnimationsAnimationFadeXy({this.x, this.y});

  final TfArg<num>? x;

  final TfArg<num>? y;

  Map<String, Object?> encode() => {'x': ?x?.toTfJson(), 'y': ?y?.toTfJson()};
}

/// Typed helper for the `config.overlays.image` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigOverlaysImage {
  const TranscoderJobConfigOverlaysImage({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `config.pubsub_destination` block of
/// `google_transcoder_job` (derived from provider schema).
@immutable
final class TranscoderJobConfigPubsubDestination {
  const TranscoderJobConfigPubsubDestination({this.topic});

  final RefTo<GooglePubsubTopic>? topic;

  Map<String, Object?> encode() => {'topic': ?topic?.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `google_transcoder_job`.
///
/// Transcoding Job Resource
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleTranscoderJob extends Resource {
  static const String tfType = 'google_transcoder_job';

  GoogleTranscoderJob({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<String>? templateId,
    TranscoderJobConfig? config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'template_id': ?templateId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTranscoderJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTranscoderJob>`.
  RefTo<GoogleTranscoderJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
