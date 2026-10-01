// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastictranscoder_preset`.
const Set<String> _awsElastictranscoderPresetSensitive = <String>{};

/// Elastictranscoder Preset enum for `container`.
enum ElastictranscoderPresetContainer implements TerraformEnum {
  flac('flac'),
  flv('flv'),
  fmp4('fmp4'),
  gif('gif'),
  mp2('mp2'),
  mp3('mp3'),
  mp4('mp4'),
  mpg('mpg'),
  mxf('mxf'),
  oga('oga'),
  ogg('ogg'),
  ts('ts'),
  wav('wav'),
  webm('webm');

  const ElastictranscoderPresetContainer(this.terraformValue);
  @override
  final String terraformValue;
}

/// Elastictranscoder Preset enum for `type`.
enum ElastictranscoderPresetType implements TerraformEnum {
  custom('Custom'),
  system('System');

  const ElastictranscoderPresetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `audio` block of
/// `aws_elastictranscoder_preset` (derived from provider schema).
@immutable
final class ElastictranscoderPresetAudio {
  const ElastictranscoderPresetAudio({
    this.audioPackingMode,
    this.bitRate,
    this.channels,
    this.codec,
    this.sampleRate,
  });

  final TfArg<ElastictranscoderPresetAudioPackingMode>? audioPackingMode;

  final TfArg<String>? bitRate;

  final TfArg<ElastictranscoderPresetChannels>? channels;

  final TfArg<ElastictranscoderPresetAudioCodec>? codec;

  final TfArg<ElastictranscoderPresetSampleRate>? sampleRate;

  Map<String, Object?> encode() => {
    'audio_packing_mode': ?audioPackingMode?.toTfJson(),
    'bit_rate': ?bitRate?.toTfJson(),
    'channels': ?channels?.toTfJson(),
    'codec': ?codec?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// `audio_packing_mode` — derived from the provider schema description.
enum ElastictranscoderPresetAudioPackingMode implements TerraformEnum {
  singletrack('SingleTrack'),
  onechannelpertrack('OneChannelPerTrack'),
  onechannelpertrackwithmosto8tracks('OneChannelPerTrackWithMosTo8Tracks');

  const ElastictranscoderPresetAudioPackingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `channels` — derived from the provider schema description.
enum ElastictranscoderPresetChannels implements TerraformEnum {
  auto('auto'),
  v0('0'),
  v1('1'),
  v2('2');

  const ElastictranscoderPresetChannels(this.terraformValue);
  @override
  final String terraformValue;
}

/// `codec` — derived from the provider schema description.
enum ElastictranscoderPresetAudioCodec implements TerraformEnum {
  aac('AAC'),
  flac('flac'),
  mp2('mp2'),
  mp3('mp3'),
  pcm('pcm'),
  vorbis('vorbis');

  const ElastictranscoderPresetAudioCodec(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sample_rate` — derived from the provider schema description.
enum ElastictranscoderPresetSampleRate implements TerraformEnum {
  auto('auto'),
  v22050('22050'),
  v32000('32000'),
  v44100('44100'),
  v48000('48000'),
  v96000('96000');

  const ElastictranscoderPresetSampleRate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `audio_codec_options` block of
/// `aws_elastictranscoder_preset` (derived from provider schema).
@immutable
final class ElastictranscoderPresetAudioCodecOptions {
  const ElastictranscoderPresetAudioCodecOptions({
    this.bitDepth,
    this.bitOrder,
    this.profile,
    this.signed,
  });

  final TfArg<ElastictranscoderPresetBitDepth>? bitDepth;

  final TfArg<ElastictranscoderPresetBitOrder>? bitOrder;

  final TfArg<ElastictranscoderPresetProfile>? profile;

  final TfArg<ElastictranscoderPresetSigned>? signed;

  Map<String, Object?> encode() => {
    'bit_depth': ?bitDepth?.toTfJson(),
    'bit_order': ?bitOrder?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'signed': ?signed?.toTfJson(),
  };
}

/// `bit_depth` — derived from the provider schema description.
enum ElastictranscoderPresetBitDepth implements TerraformEnum {
  v8('8'),
  v16('16'),
  v24('24'),
  v32('32');

  const ElastictranscoderPresetBitDepth(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bit_order` — derived from the provider schema description.
enum ElastictranscoderPresetBitOrder implements TerraformEnum {
  littleendian('LittleEndian');

  const ElastictranscoderPresetBitOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `profile` — derived from the provider schema description.
enum ElastictranscoderPresetProfile implements TerraformEnum {
  auto('auto'),
  aacLc('AAC-LC'),
  heAac('HE-AAC'),
  heAacv2('HE-AACv2');

  const ElastictranscoderPresetProfile(this.terraformValue);
  @override
  final String terraformValue;
}

/// `signed` — derived from the provider schema description.
enum ElastictranscoderPresetSigned implements TerraformEnum {
  signed('Signed'),
  unsigned('Unsigned');

  const ElastictranscoderPresetSigned(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `thumbnails` block of
/// `aws_elastictranscoder_preset` (derived from provider schema).
@immutable
final class ElastictranscoderPresetThumbnails {
  const ElastictranscoderPresetThumbnails({
    this.aspectRatio,
    this.format,
    this.interval,
    this.maxHeight,
    this.maxWidth,
    this.paddingPolicy,
    this.resolution,
    this.sizingPolicy,
  });

  final TfArg<ElastictranscoderPresetAspectRatio>? aspectRatio;

  final TfArg<ElastictranscoderPresetFormat>? format;

  final TfArg<String>? interval;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<ElastictranscoderPresetPaddingPolicy>? paddingPolicy;

  final TfArg<String>? resolution;

  final TfArg<ElastictranscoderPresetThumbnailsSizingPolicy>? sizingPolicy;

  Map<String, Object?> encode() => {
    'aspect_ratio': ?aspectRatio?.toTfJson(),
    'format': ?format?.toTfJson(),
    'interval': ?interval?.toTfJson(),
    'max_height': ?maxHeight?.toTfJson(),
    'max_width': ?maxWidth?.toTfJson(),
    'padding_policy': ?paddingPolicy?.toTfJson(),
    'resolution': ?resolution?.toTfJson(),
    'sizing_policy': ?sizingPolicy?.toTfJson(),
  };
}

/// `aspect_ratio` — derived from the provider schema description.
enum ElastictranscoderPresetAspectRatio implements TerraformEnum {
  auto('auto'),
  v1x1('1:1'),
  v4x3('4:3'),
  v3x2('3:2'),
  v16x9('16:9');

  const ElastictranscoderPresetAspectRatio(this.terraformValue);
  @override
  final String terraformValue;
}

/// `format` — derived from the provider schema description.
enum ElastictranscoderPresetFormat implements TerraformEnum {
  jpg('jpg'),
  png('png');

  const ElastictranscoderPresetFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `padding_policy` — derived from the provider schema description.
enum ElastictranscoderPresetPaddingPolicy implements TerraformEnum {
  pad('Pad'),
  nopad('NoPad');

  const ElastictranscoderPresetPaddingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sizing_policy` — derived from the provider schema description.
enum ElastictranscoderPresetThumbnailsSizingPolicy implements TerraformEnum {
  fit('Fit'),
  fill('Fill'),
  stretch('Stretch'),
  keep('Keep'),
  shrinktofit('ShrinkToFit'),
  shrinktofill('ShrinkToFill');

  const ElastictranscoderPresetThumbnailsSizingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `video` block of
/// `aws_elastictranscoder_preset` (derived from provider schema).
@immutable
final class ElastictranscoderPresetVideo {
  const ElastictranscoderPresetVideo({
    this.aspectRatio,
    this.bitRate,
    this.codec,
    this.displayAspectRatio,
    this.fixedGop,
    this.frameRate,
    this.keyframesMaxDist,
    this.maxFrameRate,
    this.maxHeight,
    this.maxWidth,
    this.paddingPolicy,
    this.resolution,
    this.sizingPolicy,
  });

  final TfArg<ElastictranscoderPresetAspectRatio>? aspectRatio;

  final TfArg<String>? bitRate;

  final TfArg<ElastictranscoderPresetVideoCodec>? codec;

  final TfArg<ElastictranscoderPresetDisplayAspectRatio>? displayAspectRatio;

  final TfArg<ElastictranscoderPresetFixedGop>? fixedGop;

  final TfArg<ElastictranscoderPresetFrameRate>? frameRate;

  final TfArg<String>? keyframesMaxDist;

  final TfArg<ElastictranscoderPresetMaxFrameRate>? maxFrameRate;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<ElastictranscoderPresetPaddingPolicy>? paddingPolicy;

  final TfArg<String>? resolution;

  final TfArg<ElastictranscoderPresetThumbnailsSizingPolicy>? sizingPolicy;

  Map<String, Object?> encode() => {
    'aspect_ratio': ?aspectRatio?.toTfJson(),
    'bit_rate': ?bitRate?.toTfJson(),
    'codec': ?codec?.toTfJson(),
    'display_aspect_ratio': ?displayAspectRatio?.toTfJson(),
    'fixed_gop': ?fixedGop?.toTfJson(),
    'frame_rate': ?frameRate?.toTfJson(),
    'keyframes_max_dist': ?keyframesMaxDist?.toTfJson(),
    'max_frame_rate': ?maxFrameRate?.toTfJson(),
    'max_height': ?maxHeight?.toTfJson(),
    'max_width': ?maxWidth?.toTfJson(),
    'padding_policy': ?paddingPolicy?.toTfJson(),
    'resolution': ?resolution?.toTfJson(),
    'sizing_policy': ?sizingPolicy?.toTfJson(),
  };
}

/// `codec` — derived from the provider schema description.
enum ElastictranscoderPresetVideoCodec implements TerraformEnum {
  gif('gif'),
  h264('H.264'),
  mpeg2('mpeg2'),
  vp8('vp8'),
  vp9('vp9');

  const ElastictranscoderPresetVideoCodec(this.terraformValue);
  @override
  final String terraformValue;
}

/// `display_aspect_ratio` — derived from the provider schema description.
enum ElastictranscoderPresetDisplayAspectRatio implements TerraformEnum {
  auto('auto'),
  v1x1('1:1'),
  v4x3('4:3'),
  v3x2('3:2'),
  v16x9('16:9');

  const ElastictranscoderPresetDisplayAspectRatio(this.terraformValue);
  @override
  final String terraformValue;
}

/// `fixed_gop` — derived from the provider schema description.
enum ElastictranscoderPresetFixedGop implements TerraformEnum {
  trueCase('true'),
  falseCase('false');

  const ElastictranscoderPresetFixedGop(this.terraformValue);
  @override
  final String terraformValue;
}

/// `frame_rate` — derived from the provider schema description.
enum ElastictranscoderPresetFrameRate implements TerraformEnum {
  auto('auto'),
  v10('10'),
  v15('15'),
  v23p97('23.97'),
  v24('24'),
  v25('25'),
  v29p97('29.97'),
  v30('30'),
  v50('50'),
  v60('60');

  const ElastictranscoderPresetFrameRate(this.terraformValue);
  @override
  final String terraformValue;
}

/// `max_frame_rate` — derived from the provider schema description.
enum ElastictranscoderPresetMaxFrameRate implements TerraformEnum {
  v10('10'),
  v15('15'),
  v23p97('23.97'),
  v24('24'),
  v25('25'),
  v29p97('29.97'),
  v30('30'),
  v50('50'),
  v60('60');

  const ElastictranscoderPresetMaxFrameRate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `video_watermarks` block of
/// `aws_elastictranscoder_preset` (derived from provider schema).
@immutable
final class ElastictranscoderPresetVideoWatermarks {
  const ElastictranscoderPresetVideoWatermarks({
    this.horizontalAlign,
    this.horizontalOffset,
    this.id,
    this.maxHeight,
    this.maxWidth,
    this.opacity,
    this.sizingPolicy,
    this.target,
    this.verticalAlign,
    this.verticalOffset,
  });

  final TfArg<ElastictranscoderPresetHorizontalAlign>? horizontalAlign;

  final TfArg<String>? horizontalOffset;

  final TfArg<String>? id;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<String>? opacity;

  final TfArg<ElastictranscoderPresetVideoWatermarksSizingPolicy>? sizingPolicy;

  final TfArg<ElastictranscoderPresetTarget>? target;

  final TfArg<ElastictranscoderPresetVerticalAlign>? verticalAlign;

  final TfArg<String>? verticalOffset;

  Map<String, Object?> encode() => {
    'horizontal_align': ?horizontalAlign?.toTfJson(),
    'horizontal_offset': ?horizontalOffset?.toTfJson(),
    'id': ?id?.toTfJson(),
    'max_height': ?maxHeight?.toTfJson(),
    'max_width': ?maxWidth?.toTfJson(),
    'opacity': ?opacity?.toTfJson(),
    'sizing_policy': ?sizingPolicy?.toTfJson(),
    'target': ?target?.toTfJson(),
    'vertical_align': ?verticalAlign?.toTfJson(),
    'vertical_offset': ?verticalOffset?.toTfJson(),
  };
}

/// `horizontal_align` — derived from the provider schema description.
enum ElastictranscoderPresetHorizontalAlign implements TerraformEnum {
  left('Left'),
  right('Right'),
  center('Center');

  const ElastictranscoderPresetHorizontalAlign(this.terraformValue);
  @override
  final String terraformValue;
}

/// `sizing_policy` — derived from the provider schema description.
enum ElastictranscoderPresetVideoWatermarksSizingPolicy
    implements TerraformEnum {
  fit('Fit'),
  stretch('Stretch'),
  shrinktofit('ShrinkToFit');

  const ElastictranscoderPresetVideoWatermarksSizingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target` — derived from the provider schema description.
enum ElastictranscoderPresetTarget implements TerraformEnum {
  content('Content'),
  frame('Frame');

  const ElastictranscoderPresetTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// `vertical_align` — derived from the provider schema description.
enum ElastictranscoderPresetVerticalAlign implements TerraformEnum {
  top('Top'),
  bottom('Bottom'),
  center('Center');

  const ElastictranscoderPresetVerticalAlign(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_elastictranscoder_preset`.
final class AwsElastictranscoderPreset extends Resource {
  static const String tfType = 'aws_elastictranscoder_preset';

  AwsElastictranscoderPreset({
    required super.localName,
    required TfArg<ElastictranscoderPresetContainer> container,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<ElastictranscoderPresetType>? type,
    TfArg<Map<String, String>>? videoCodecOptions,
    ElastictranscoderPresetAudio? audio,
    ElastictranscoderPresetAudioCodecOptions? audioCodecOptions,
    ElastictranscoderPresetThumbnails? thumbnails,
    ElastictranscoderPresetVideo? video,
    List<ElastictranscoderPresetVideoWatermarks>? videoWatermarks,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container': container,
           'description': ?description,
           'name': ?name,
           'region': ?region,
           'type': ?type,
           'video_codec_options': ?videoCodecOptions,
           if (audio != null) 'audio': TfArg.literal(audio.encode()),
           if (audioCodecOptions != null)
             'audio_codec_options': TfArg.literal(audioCodecOptions.encode()),
           if (thumbnails != null)
             'thumbnails': TfArg.literal(thumbnails.encode()),
           if (video != null) 'video': TfArg.literal(video.encode()),
           if (videoWatermarks != null)
             'video_watermarks': TfArg.literal([
               for (final e in videoWatermarks) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElastictranscoderPresetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElastictranscoderPreset>`.
  RefTo<AwsElastictranscoderPreset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `container` attribute.
  TfRef<String> get container => TfRef.attribute<String>(this, 'container');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `video_codec_options` attribute.
  TfRef<Map<String, String>> get videoCodecOptions =>
      TfRef.attribute<Map<String, String>>(this, 'video_codec_options');
}
