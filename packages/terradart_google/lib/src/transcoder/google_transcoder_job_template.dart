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

  final List<TranscoderJobTemplateAdBreaks>? adBreaks;

  final List<TranscoderJobTemplateEditList>? editList;

  final List<TranscoderJobTemplateElementaryStreams>? elementaryStreams;

  final List<TranscoderJobTemplateEncryptions>? encryptions;

  final List<TranscoderJobTemplateInputs>? inputs;

  final List<TranscoderJobTemplateManifests>? manifests;

  final List<TranscoderJobTemplateMuxStreams>? muxStreams;

  final TranscoderJobTemplateOutput? output;

  final List<TranscoderJobTemplateOverlays>? overlays;

  final TranscoderJobTemplatePubsubDestination? pubsubDestination;

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
final class TranscoderJobTemplateAdBreaks {
  const TranscoderJobTemplateAdBreaks({this.startTimeOffset});

  final TfArg<String>? startTimeOffset;

  Map<String, Object?> encode() => {
    'start_time_offset': ?startTimeOffset?.toTfJson(),
  };
}

/// Typed helper for the `config.edit_list` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateEditList {
  const TranscoderJobTemplateEditList({
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  final TfArg<List<String>>? inputs;

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
final class TranscoderJobTemplateElementaryStreams {
  const TranscoderJobTemplateElementaryStreams({
    this.key,
    this.audioStream,
    this.videoStream,
  });

  final TfArg<String>? key;

  final TranscoderJobTemplateAudioStream? audioStream;

  final TranscoderJobTemplateVideoStream? videoStream;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'audio_stream': ?audioStream?.encode(),
    'video_stream': ?videoStream?.encode(),
  };
}

/// Typed helper for the `config.elementary_streams.audio_stream` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateAudioStream {
  const TranscoderJobTemplateAudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayout,
    this.codec,
    this.sampleRateHertz,
  });

  final TfArg<num> bitrateBps;

  final TfArg<num>? channelCount;

  final TfArg<List<String>>? channelLayout;

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
final class TranscoderJobTemplateVideoStream {
  const TranscoderJobTemplateVideoStream({this.h264});

  final TranscoderJobTemplateH264? h264;

  Map<String, Object?> encode() => {'h264': ?h264?.encode()};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateH264 {
  const TranscoderJobTemplateH264({
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

  final TranscoderJobTemplateHlg? hlg;

  final TranscoderJobTemplateSdr? sdr;

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
final class TranscoderJobTemplateHlg {
  const TranscoderJobTemplateHlg();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.elementary_streams.video_stream.h264.sdr` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateSdr {
  const TranscoderJobTemplateSdr();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateEncryptions {
  const TranscoderJobTemplateEncryptions({
    required this.id,
    this.aes128,
    this.drmSystems,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  final TfArg<String> id;

  final TranscoderJobTemplateAes128? aes128;

  final TranscoderJobTemplateDrmSystems? drmSystems;

  final TranscoderJobTemplateMpegCenc? mpegCenc;

  final TranscoderJobTemplateSampleAes? sampleAes;

  final TranscoderJobTemplateSecretManagerKeySource? secretManagerKeySource;

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
final class TranscoderJobTemplateAes128 {
  const TranscoderJobTemplateAes128();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateDrmSystems {
  const TranscoderJobTemplateDrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  final TranscoderJobTemplateClearkey? clearkey;

  final TranscoderJobTemplateFairplay? fairplay;

  final TranscoderJobTemplatePlayready? playready;

  final TranscoderJobTemplateWidevine? widevine;

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
final class TranscoderJobTemplateClearkey {
  const TranscoderJobTemplateClearkey();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.fairplay` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateFairplay {
  const TranscoderJobTemplateFairplay();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.playready` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplatePlayready {
  const TranscoderJobTemplatePlayready();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.drm_systems.widevine` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateWidevine {
  const TranscoderJobTemplateWidevine();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.mpeg_cenc` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateMpegCenc {
  const TranscoderJobTemplateMpegCenc({required this.scheme});

  final TfArg<String> scheme;

  Map<String, Object?> encode() => {'scheme': scheme.toTfJson()};
}

/// Typed helper for the `config.encryptions.sample_aes` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateSampleAes {
  const TranscoderJobTemplateSampleAes();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `config.encryptions.secret_manager_key_source` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateSecretManagerKeySource {
  const TranscoderJobTemplateSecretManagerKeySource({
    required this.secretVersion,
  });

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {'secret_version': secretVersion.toTfJson()};
}

/// Typed helper for the `config.inputs` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateInputs {
  const TranscoderJobTemplateInputs({this.key, this.uri});

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
final class TranscoderJobTemplateManifests {
  const TranscoderJobTemplateManifests({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  final TfArg<String>? fileName;

  final TfArg<List<String>>? muxStreams;

  final TfArg<TranscoderJobTemplateType>? type;

  Map<String, Object?> encode() => {
    'file_name': ?fileName?.toTfJson(),
    'mux_streams': ?muxStreams?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum TranscoderJobTemplateType implements TerraformEnum {
  manifestTypeUnspecified('MANIFEST_TYPE_UNSPECIFIED'),
  hls('HLS'),
  dash('DASH');

  const TranscoderJobTemplateType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.mux_streams` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateMuxStreams {
  const TranscoderJobTemplateMuxStreams({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  final TfArg<String>? container;

  final TfArg<List<String>>? elementaryStreams;

  final TfArg<String>? encryptionId;

  final TfArg<String>? fileName;

  final TfArg<String>? key;

  final TranscoderJobTemplateSegmentSettings? segmentSettings;

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
final class TranscoderJobTemplateSegmentSettings {
  const TranscoderJobTemplateSegmentSettings({this.segmentDuration});

  final TfArg<String>? segmentDuration;

  Map<String, Object?> encode() => {
    'segment_duration': ?segmentDuration?.toTfJson(),
  };
}

/// Typed helper for the `config.output` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateOutput {
  const TranscoderJobTemplateOutput({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `config.overlays` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateOverlays {
  const TranscoderJobTemplateOverlays({this.animations, this.image});

  final List<TranscoderJobTemplateAnimations>? animations;

  final TranscoderJobTemplateImage? image;

  Map<String, Object?> encode() => {
    if (animations != null)
      'animations': [for (final e in animations!) e.encode()],
    'image': ?image?.encode(),
  };
}

/// Typed helper for the `config.overlays.animations` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateAnimations {
  const TranscoderJobTemplateAnimations({this.animationFade});

  final TranscoderJobTemplateAnimationFade? animationFade;

  Map<String, Object?> encode() => {'animation_fade': ?animationFade?.encode()};
}

/// Typed helper for the `config.overlays.animations.animation_fade` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateAnimationFade {
  const TranscoderJobTemplateAnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  final TfArg<String>? endTimeOffset;

  final TfArg<TranscoderJobTemplateFadeType> fadeType;

  final TfArg<String>? startTimeOffset;

  final TranscoderJobTemplateXy? xy;

  Map<String, Object?> encode() => {
    'end_time_offset': ?endTimeOffset?.toTfJson(),
    'fade_type': fadeType.toTfJson(),
    'start_time_offset': ?startTimeOffset?.toTfJson(),
    'xy': ?xy?.encode(),
  };
}

/// `fade_type` — derived from the provider schema description.
enum TranscoderJobTemplateFadeType implements TerraformEnum {
  fadeTypeUnspecified('FADE_TYPE_UNSPECIFIED'),
  fadeIn('FADE_IN'),
  fadeOut('FADE_OUT');

  const TranscoderJobTemplateFadeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.overlays.animations.animation_fade.xy` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateXy {
  const TranscoderJobTemplateXy({this.x, this.y});

  final TfArg<num>? x;

  final TfArg<num>? y;

  Map<String, Object?> encode() => {'x': ?x?.toTfJson(), 'y': ?y?.toTfJson()};
}

/// Typed helper for the `config.overlays.image` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplateImage {
  const TranscoderJobTemplateImage({required this.uri});

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `config.pubsub_destination` block of
/// `google_transcoder_job_template` (derived from provider schema).
@immutable
final class TranscoderJobTemplatePubsubDestination {
  const TranscoderJobTemplatePubsubDestination({this.topic});

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
///       .new(
///         key: TfArg.literal('video-stream0'),
///         videoStream: .new(
///           h264: .new(
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `job_template_id` attribute.
  TfRef<String> get jobTemplateIdRef =>
      TfRef.attribute<String>(this, 'job_template_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
