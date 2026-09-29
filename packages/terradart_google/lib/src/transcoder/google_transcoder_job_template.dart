// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_transcoder_job_template`.
const Set<String> _googleTranscoderJobTemplateSensitive = <String>{};

/// Typed helper for the `config` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfig {
  const TranscoderJobTemplateConfig({
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

  final List<TranscoderJobTemplateConfigAdBreaks>? adBreaks;

  final List<TranscoderJobTemplateConfigEditList>? editList;

  final List<TranscoderJobTemplateConfigElementaryStreams>? elementaryStreams;

  final List<TranscoderJobTemplateConfigEncryptions>? encryptions;

  final List<TranscoderJobTemplateConfigInputs>? inputs;

  final List<TranscoderJobTemplateConfigManifests>? manifests;

  final List<TranscoderJobTemplateConfigMuxStreams>? muxStreams;

  final TranscoderJobTemplateConfigOutput? output;

  final List<TranscoderJobTemplateConfigOverlays>? overlays;

  final TranscoderJobTemplateConfigPubsubDestination? pubsubDestination;

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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigAdBreaks {
  const TranscoderJobTemplateConfigAdBreaks({this.startTimeOffset});

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    'start_time_offset': ?startTimeOffset?.toTfJson(),
  };
}

/// Typed helper for the `config.edit_list` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEditList {
  const TranscoderJobTemplateConfigEditList({
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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreams {
  const TranscoderJobTemplateConfigElementaryStreams({
    this.key,
    this.audioStream,
    this.videoStream,
  });

  final TfArg<String>? key;

  final TranscoderJobTemplateConfigElementaryStreamsAudioStream? audioStream;

  final TranscoderJobTemplateConfigElementaryStreamsVideoStream? videoStream;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'audio_stream': ?audioStream?.encode(),
    'video_stream': ?videoStream?.encode(),
  };
}

/// Typed helper for the `config.elementary_streams.audio_stream` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreamsAudioStream {
  const TranscoderJobTemplateConfigElementaryStreamsAudioStream({
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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreamsVideoStream {
  const TranscoderJobTemplateConfigElementaryStreamsVideoStream({this.h264});

  final TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264? h264;

  Map<String, Object?> encode() => {'h264': ?h264?.encode()};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264 {
  const TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264({
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

  final TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Hlg? hlg;

  final TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Sdr? sdr;

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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Hlg {
  const TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Hlg();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264.sdr` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Sdr {
  const TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264Sdr();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptions {
  const TranscoderJobTemplateConfigEncryptions({
    required this.id,
    this.aes128,
    this.drmSystems,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  final TfArg<String> id;

  final TranscoderJobTemplateConfigEncryptionsAes128? aes128;

  final TranscoderJobTemplateConfigEncryptionsDrmSystems? drmSystems;

  final TranscoderJobTemplateConfigEncryptionsMpegCenc? mpegCenc;

  final TranscoderJobTemplateConfigEncryptionsSampleAes? sampleAes;

  final TranscoderJobTemplateConfigEncryptionsSecretManagerKeySource?
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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsAes128 {
  const TranscoderJobTemplateConfigEncryptionsAes128();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsDrmSystems {
  const TranscoderJobTemplateConfigEncryptionsDrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  final TranscoderJobTemplateConfigEncryptionsDrmSystemsClearkey? clearkey;

  final TranscoderJobTemplateConfigEncryptionsDrmSystemsFairplay? fairplay;

  final TranscoderJobTemplateConfigEncryptionsDrmSystemsPlayready? playready;

  final TranscoderJobTemplateConfigEncryptionsDrmSystemsWidevine? widevine;

  Map<String, Object?> encode() => {
    'clearkey': ?clearkey?.encode(),
    'fairplay': ?fairplay?.encode(),
    'playready': ?playready?.encode(),
    'widevine': ?widevine?.encode(),
  };
}

/// Typed helper for the `config.encryptions.drm_systems.clearkey` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsDrmSystemsClearkey {
  const TranscoderJobTemplateConfigEncryptionsDrmSystemsClearkey();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.fairplay` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsDrmSystemsFairplay {
  const TranscoderJobTemplateConfigEncryptionsDrmSystemsFairplay();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.playready` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsDrmSystemsPlayready {
  const TranscoderJobTemplateConfigEncryptionsDrmSystemsPlayready();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.widevine` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsDrmSystemsWidevine {
  const TranscoderJobTemplateConfigEncryptionsDrmSystemsWidevine();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.mpeg_cenc` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsMpegCenc {
  const TranscoderJobTemplateConfigEncryptionsMpegCenc({required this.scheme});

  final TfArg<String> scheme;

  Map<String, Object?> encode() => {'scheme': scheme.toTfJson()};
}

/// Typed helper for the `config.encryptions.sample_aes` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsSampleAes {
  const TranscoderJobTemplateConfigEncryptionsSampleAes();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.secret_manager_key_source` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigEncryptionsSecretManagerKeySource {
  const TranscoderJobTemplateConfigEncryptionsSecretManagerKeySource({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `config.inputs` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigInputs {
  const TranscoderJobTemplateConfigInputs({this.key, this.uri});

  final TfArg<String>? key;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Typed helper for the `config.manifests` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigManifests {
  const TranscoderJobTemplateConfigManifests({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  final TfArg<String>? fileName;

  final TfArg<List<Object?>>? muxStreams;

  final TfArg<TranscoderJobTemplateConfigManifestsType>? type;

  Map<String, Object?> encode() => {
    'file_name': ?fileName?.toTfJson(),
    'mux_streams': ?muxStreams?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum TranscoderJobTemplateConfigManifestsType implements TerraformEnum {
  manifestTypeUnspecified('MANIFEST_TYPE_UNSPECIFIED'),
  hls('HLS'),
  dash('DASH');

  const TranscoderJobTemplateConfigManifestsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.mux_streams` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigMuxStreams {
  const TranscoderJobTemplateConfigMuxStreams({
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

  final TranscoderJobTemplateConfigMuxStreamsSegmentSettings? segmentSettings;

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
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigMuxStreamsSegmentSettings {
  const TranscoderJobTemplateConfigMuxStreamsSegmentSettings({
    this.segmentDuration,
  });

  final TfArg<String>? segmentDuration;

  Map<String, Object?> encode() => {
    'segment_duration': ?segmentDuration?.toTfJson(),
  };
}

/// Typed helper for the `config.output` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOutput {
  const TranscoderJobTemplateConfigOutput({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `config.overlays` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOverlays {
  const TranscoderJobTemplateConfigOverlays({this.animations, this.image});

  final List<TranscoderJobTemplateConfigOverlaysAnimations>? animations;

  final TranscoderJobTemplateConfigOverlaysImage? image;

  Map<String, Object?> encode() => {
    if (animations != null)
      'animations': [for (final e in animations!) e.encode()],
    'image': ?image?.encode(),
  };
}

/// Typed helper for the `config.overlays.animations` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOverlaysAnimations {
  const TranscoderJobTemplateConfigOverlaysAnimations({this.animationFade});

  final TranscoderJobTemplateConfigOverlaysAnimationsAnimationFade?
  animationFade;

  Map<String, Object?> encode() => {'animation_fade': ?animationFade?.encode()};
}

/// Typed helper for the `config.overlays.animations.animation_fade` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOverlaysAnimationsAnimationFade {
  const TranscoderJobTemplateConfigOverlaysAnimationsAnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  final TfArg<String>? endTimeOffset;

  final TfArg<
    TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeFadeType
  >
  fadeType;

  final TfArg<String>? startTimeOffset;

  final TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeXy? xy;

  Map<String, Object?> encode() => {
    'end_time_offset': ?endTimeOffset?.toTfJson(),
    'fade_type': fadeType.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
    'xy': ?xy?.encode(),
  };
}

/// `fade_type` — derived from the provider schema description.
enum TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeFadeType
    implements TerraformEnum {
  fadeTypeUnspecified('FADE_TYPE_UNSPECIFIED'),
  fadeIn('FADE_IN'),
  fadeOut('FADE_OUT');

  const TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeFadeType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `config.overlays.animations.animation_fade.xy` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeXy {
  const TranscoderJobTemplateConfigOverlaysAnimationsAnimationFadeXy({
    this.x,
    this.y,
  });

  final TfArg<num>? x;

  final TfArg<num>? y;

  Map<String, Object?> encode() => {'x': ?x?.toTfJson(), 'y': ?y?.toTfJson()};
}

/// Typed helper for the `config.overlays.image` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigOverlaysImage {
  const TranscoderJobTemplateConfigOverlaysImage({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `config.pubsub_destination` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateConfigPubsubDestination {
  const TranscoderJobTemplateConfigPubsubDestination({this.topic});

  final RefTo<GooglePubsubTopic>? topic;

  Map<String, Object?> encode() => {'topic': ?topic?.encodeAs('id').toTfJson()};
}

/// Factory wrapper for `google_transcoder_job_template`.
///
/// Transcoding Job Template Resource
///
/// Transcoder **job template** — reusable JobConfig (elementary streams,
/// mux streams, optional inputs) for later `google_transcoder_job` runs.
///
/// Creating a template does not transcode media and does not bill Transcoder
/// output-minute SKUs. A job that references this template is a separate
/// resource and is not curated here.
///
/// Enable `transcoder.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleTranscoderJobTemplate(
///   localName: 'sd',
///   jobTemplateId: TfArg.literal('terradart-sd'),
///   location: TfArg.literal('us-central1'),
///   config: TranscoderJobTemplateConfig(
///     elementaryStreams: [
///       TranscoderJobTemplateConfigElementaryStreams(
///         key: TfArg.literal('video-stream0'),
///         videoStream: TranscoderJobTemplateConfigElementaryStreamsVideoStream(
///           h264: TranscoderJobTemplateConfigElementaryStreamsVideoStreamH264(
///             widthPixels: TfArg.literal(640),
///             heightPixels: TfArg.literal(360),
///             bitrateBps: TfArg.literal(550000),
///             frameRate: TfArg.literal(60),
///           ),
///         ),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleTranscoderJobTemplate extends Resource {
  static const String tfType = 'google_transcoder_job_template';

  GoogleTranscoderJobTemplate({
    required super.localName,
    required TfArg<String> jobTemplateId,
    required TfArg<String> location,
    TranscoderJobTemplateConfig? config,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_template_id': jobTemplateId,
           'location': location,
           if (config != null) 'config': TfArg.literal(config.encode()),
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTranscoderJobTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTranscoderJobTemplate>`.
  RefTo<GoogleTranscoderJobTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
