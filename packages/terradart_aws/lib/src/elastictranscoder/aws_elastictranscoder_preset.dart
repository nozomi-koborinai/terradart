// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastictranscoder_preset`.
const Set<String> _awsElastictranscoderPresetSensitive = <String>{};

/// Elastictranscoder Preset enum for `container`.
extension type const ElastictranscoderPresetContainer._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetContainer.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetContainer.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetContainer.arg(TfArg<String> arg) : this._(arg);

  static const flac = ElastictranscoderPresetContainer._(TfArgLiteral('flac'));
  static const flv = ElastictranscoderPresetContainer._(TfArgLiteral('flv'));
  static const fmp4 = ElastictranscoderPresetContainer._(TfArgLiteral('fmp4'));
  static const gif = ElastictranscoderPresetContainer._(TfArgLiteral('gif'));
  static const mp2 = ElastictranscoderPresetContainer._(TfArgLiteral('mp2'));
  static const mp3 = ElastictranscoderPresetContainer._(TfArgLiteral('mp3'));
  static const mp4 = ElastictranscoderPresetContainer._(TfArgLiteral('mp4'));
  static const mpg = ElastictranscoderPresetContainer._(TfArgLiteral('mpg'));
  static const mxf = ElastictranscoderPresetContainer._(TfArgLiteral('mxf'));
  static const oga = ElastictranscoderPresetContainer._(TfArgLiteral('oga'));
  static const ogg = ElastictranscoderPresetContainer._(TfArgLiteral('ogg'));
  static const ts = ElastictranscoderPresetContainer._(TfArgLiteral('ts'));
  static const wav = ElastictranscoderPresetContainer._(TfArgLiteral('wav'));
  static const webm = ElastictranscoderPresetContainer._(TfArgLiteral('webm'));

  static const List<ElastictranscoderPresetContainer> values = [
    flac,
    flv,
    fmp4,
    gif,
    mp2,
    mp3,
    mp4,
    mpg,
    mxf,
    oga,
    ogg,
    ts,
    wav,
    webm,
  ];
}

/// Elastictranscoder Preset enum for `type`.
extension type const ElastictranscoderPresetType._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetType.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetType.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetType.arg(TfArg<String> arg) : this._(arg);

  static const custom = ElastictranscoderPresetType._(TfArgLiteral('Custom'));
  static const system = ElastictranscoderPresetType._(TfArgLiteral('System'));

  static const List<ElastictranscoderPresetType> values = [custom, system];
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

  final ElastictranscoderPresetAudioPackingMode? audioPackingMode;

  final TfArg<String>? bitRate;

  final ElastictranscoderPresetChannels? channels;

  final ElastictranscoderPresetAudioCodec? codec;

  final ElastictranscoderPresetSampleRate? sampleRate;

  Map<String, Object?> encode() => {
    'audio_packing_mode': ?audioPackingMode?.toTfJson(),
    'bit_rate': ?bitRate?.toTfJson(),
    'channels': ?channels?.toTfJson(),
    'codec': ?codec?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// `audio_packing_mode` — derived from the provider schema description.
extension type const ElastictranscoderPresetAudioPackingMode._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetAudioPackingMode.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetAudioPackingMode.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetAudioPackingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const singletrack = ElastictranscoderPresetAudioPackingMode._(
    TfArgLiteral('SingleTrack'),
  );
  static const onechannelpertrack = ElastictranscoderPresetAudioPackingMode._(
    TfArgLiteral('OneChannelPerTrack'),
  );
  static const onechannelpertrackwithmosto8tracks =
      ElastictranscoderPresetAudioPackingMode._(
        TfArgLiteral('OneChannelPerTrackWithMosTo8Tracks'),
      );

  static const List<ElastictranscoderPresetAudioPackingMode> values = [
    singletrack,
    onechannelpertrack,
    onechannelpertrackwithmosto8tracks,
  ];
}

/// `channels` — derived from the provider schema description.
extension type const ElastictranscoderPresetChannels._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetChannels.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetChannels.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetChannels.arg(TfArg<String> arg) : this._(arg);

  static const auto = ElastictranscoderPresetChannels._(TfArgLiteral('auto'));
  static const v0 = ElastictranscoderPresetChannels._(TfArgLiteral('0'));
  static const v1 = ElastictranscoderPresetChannels._(TfArgLiteral('1'));
  static const v2 = ElastictranscoderPresetChannels._(TfArgLiteral('2'));

  static const List<ElastictranscoderPresetChannels> values = [
    auto,
    v0,
    v1,
    v2,
  ];
}

/// `codec` — derived from the provider schema description.
extension type const ElastictranscoderPresetAudioCodec._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetAudioCodec.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetAudioCodec.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetAudioCodec.arg(TfArg<String> arg) : this._(arg);

  static const aac = ElastictranscoderPresetAudioCodec._(TfArgLiteral('AAC'));
  static const flac = ElastictranscoderPresetAudioCodec._(TfArgLiteral('flac'));
  static const mp2 = ElastictranscoderPresetAudioCodec._(TfArgLiteral('mp2'));
  static const mp3 = ElastictranscoderPresetAudioCodec._(TfArgLiteral('mp3'));
  static const pcm = ElastictranscoderPresetAudioCodec._(TfArgLiteral('pcm'));
  static const vorbis = ElastictranscoderPresetAudioCodec._(
    TfArgLiteral('vorbis'),
  );

  static const List<ElastictranscoderPresetAudioCodec> values = [
    aac,
    flac,
    mp2,
    mp3,
    pcm,
    vorbis,
  ];
}

/// `sample_rate` — derived from the provider schema description.
extension type const ElastictranscoderPresetSampleRate._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetSampleRate.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetSampleRate.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetSampleRate.arg(TfArg<String> arg) : this._(arg);

  static const auto = ElastictranscoderPresetSampleRate._(TfArgLiteral('auto'));
  static const v22050 = ElastictranscoderPresetSampleRate._(
    TfArgLiteral('22050'),
  );
  static const v32000 = ElastictranscoderPresetSampleRate._(
    TfArgLiteral('32000'),
  );
  static const v44100 = ElastictranscoderPresetSampleRate._(
    TfArgLiteral('44100'),
  );
  static const v48000 = ElastictranscoderPresetSampleRate._(
    TfArgLiteral('48000'),
  );
  static const v96000 = ElastictranscoderPresetSampleRate._(
    TfArgLiteral('96000'),
  );

  static const List<ElastictranscoderPresetSampleRate> values = [
    auto,
    v22050,
    v32000,
    v44100,
    v48000,
    v96000,
  ];
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

  final ElastictranscoderPresetBitDepth? bitDepth;

  final ElastictranscoderPresetBitOrder? bitOrder;

  final ElastictranscoderPresetProfile? profile;

  final ElastictranscoderPresetSigned? signed;

  Map<String, Object?> encode() => {
    'bit_depth': ?bitDepth?.toTfJson(),
    'bit_order': ?bitOrder?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'signed': ?signed?.toTfJson(),
  };
}

/// `bit_depth` — derived from the provider schema description.
extension type const ElastictranscoderPresetBitDepth._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetBitDepth.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetBitDepth.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetBitDepth.arg(TfArg<String> arg) : this._(arg);

  static const v8 = ElastictranscoderPresetBitDepth._(TfArgLiteral('8'));
  static const v16 = ElastictranscoderPresetBitDepth._(TfArgLiteral('16'));
  static const v24 = ElastictranscoderPresetBitDepth._(TfArgLiteral('24'));
  static const v32 = ElastictranscoderPresetBitDepth._(TfArgLiteral('32'));

  static const List<ElastictranscoderPresetBitDepth> values = [
    v8,
    v16,
    v24,
    v32,
  ];
}

/// `bit_order` — derived from the provider schema description.
extension type const ElastictranscoderPresetBitOrder._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetBitOrder.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetBitOrder.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetBitOrder.arg(TfArg<String> arg) : this._(arg);

  static const littleendian = ElastictranscoderPresetBitOrder._(
    TfArgLiteral('LittleEndian'),
  );

  static const List<ElastictranscoderPresetBitOrder> values = [littleendian];
}

/// `profile` — derived from the provider schema description.
extension type const ElastictranscoderPresetProfile._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetProfile.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetProfile.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetProfile.arg(TfArg<String> arg) : this._(arg);

  static const auto = ElastictranscoderPresetProfile._(TfArgLiteral('auto'));
  static const aacLc = ElastictranscoderPresetProfile._(TfArgLiteral('AAC-LC'));
  static const heAac = ElastictranscoderPresetProfile._(TfArgLiteral('HE-AAC'));
  static const heAacv2 = ElastictranscoderPresetProfile._(
    TfArgLiteral('HE-AACv2'),
  );

  static const List<ElastictranscoderPresetProfile> values = [
    auto,
    aacLc,
    heAac,
    heAacv2,
  ];
}

/// `signed` — derived from the provider schema description.
extension type const ElastictranscoderPresetSigned._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetSigned.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetSigned.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetSigned.arg(TfArg<String> arg) : this._(arg);

  static const signed = ElastictranscoderPresetSigned._(TfArgLiteral('Signed'));
  static const unsigned = ElastictranscoderPresetSigned._(
    TfArgLiteral('Unsigned'),
  );

  static const List<ElastictranscoderPresetSigned> values = [signed, unsigned];
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

  final ElastictranscoderPresetAspectRatio? aspectRatio;

  final ElastictranscoderPresetFormat? format;

  final TfArg<String>? interval;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final ElastictranscoderPresetPaddingPolicy? paddingPolicy;

  final TfArg<String>? resolution;

  final ElastictranscoderPresetThumbnailsSizingPolicy? sizingPolicy;

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
extension type const ElastictranscoderPresetAspectRatio._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetAspectRatio.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetAspectRatio.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetAspectRatio.arg(TfArg<String> arg) : this._(arg);

  static const auto = ElastictranscoderPresetAspectRatio._(
    TfArgLiteral('auto'),
  );
  static const v1x1 = ElastictranscoderPresetAspectRatio._(TfArgLiteral('1:1'));
  static const v4x3 = ElastictranscoderPresetAspectRatio._(TfArgLiteral('4:3'));
  static const v3x2 = ElastictranscoderPresetAspectRatio._(TfArgLiteral('3:2'));
  static const v16x9 = ElastictranscoderPresetAspectRatio._(
    TfArgLiteral('16:9'),
  );

  static const List<ElastictranscoderPresetAspectRatio> values = [
    auto,
    v1x1,
    v4x3,
    v3x2,
    v16x9,
  ];
}

/// `format` — derived from the provider schema description.
extension type const ElastictranscoderPresetFormat._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetFormat.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetFormat.arg(TfArg<String> arg) : this._(arg);

  static const jpg = ElastictranscoderPresetFormat._(TfArgLiteral('jpg'));
  static const png = ElastictranscoderPresetFormat._(TfArgLiteral('png'));

  static const List<ElastictranscoderPresetFormat> values = [jpg, png];
}

/// `padding_policy` — derived from the provider schema description.
extension type const ElastictranscoderPresetPaddingPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetPaddingPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetPaddingPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetPaddingPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const pad = ElastictranscoderPresetPaddingPolicy._(
    TfArgLiteral('Pad'),
  );
  static const nopad = ElastictranscoderPresetPaddingPolicy._(
    TfArgLiteral('NoPad'),
  );

  static const List<ElastictranscoderPresetPaddingPolicy> values = [pad, nopad];
}

/// `sizing_policy` — derived from the provider schema description.
extension type const ElastictranscoderPresetThumbnailsSizingPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  ElastictranscoderPresetThumbnailsSizingPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetThumbnailsSizingPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetThumbnailsSizingPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const fit = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('Fit'),
  );
  static const fill = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('Fill'),
  );
  static const stretch = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('Stretch'),
  );
  static const keep = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('Keep'),
  );
  static const shrinktofit = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('ShrinkToFit'),
  );
  static const shrinktofill = ElastictranscoderPresetThumbnailsSizingPolicy._(
    TfArgLiteral('ShrinkToFill'),
  );

  static const List<ElastictranscoderPresetThumbnailsSizingPolicy> values = [
    fit,
    fill,
    stretch,
    keep,
    shrinktofit,
    shrinktofill,
  ];
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

  final ElastictranscoderPresetAspectRatio? aspectRatio;

  final TfArg<String>? bitRate;

  final ElastictranscoderPresetVideoCodec? codec;

  final ElastictranscoderPresetDisplayAspectRatio? displayAspectRatio;

  final ElastictranscoderPresetFixedGop? fixedGop;

  final ElastictranscoderPresetFrameRate? frameRate;

  final TfArg<String>? keyframesMaxDist;

  final ElastictranscoderPresetMaxFrameRate? maxFrameRate;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final ElastictranscoderPresetPaddingPolicy? paddingPolicy;

  final TfArg<String>? resolution;

  final ElastictranscoderPresetThumbnailsSizingPolicy? sizingPolicy;

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
extension type const ElastictranscoderPresetVideoCodec._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetVideoCodec.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetVideoCodec.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetVideoCodec.arg(TfArg<String> arg) : this._(arg);

  static const gif = ElastictranscoderPresetVideoCodec._(TfArgLiteral('gif'));
  static const h264 = ElastictranscoderPresetVideoCodec._(
    TfArgLiteral('H.264'),
  );
  static const mpeg2 = ElastictranscoderPresetVideoCodec._(
    TfArgLiteral('mpeg2'),
  );
  static const vp8 = ElastictranscoderPresetVideoCodec._(TfArgLiteral('vp8'));
  static const vp9 = ElastictranscoderPresetVideoCodec._(TfArgLiteral('vp9'));

  static const List<ElastictranscoderPresetVideoCodec> values = [
    gif,
    h264,
    mpeg2,
    vp8,
    vp9,
  ];
}

/// `display_aspect_ratio` — derived from the provider schema description.
extension type const ElastictranscoderPresetDisplayAspectRatio._(
  TfArg<String> _
) implements TfArg<String> {
  ElastictranscoderPresetDisplayAspectRatio.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetDisplayAspectRatio.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetDisplayAspectRatio.arg(TfArg<String> arg)
    : this._(arg);

  static const auto = ElastictranscoderPresetDisplayAspectRatio._(
    TfArgLiteral('auto'),
  );
  static const v1x1 = ElastictranscoderPresetDisplayAspectRatio._(
    TfArgLiteral('1:1'),
  );
  static const v4x3 = ElastictranscoderPresetDisplayAspectRatio._(
    TfArgLiteral('4:3'),
  );
  static const v3x2 = ElastictranscoderPresetDisplayAspectRatio._(
    TfArgLiteral('3:2'),
  );
  static const v16x9 = ElastictranscoderPresetDisplayAspectRatio._(
    TfArgLiteral('16:9'),
  );

  static const List<ElastictranscoderPresetDisplayAspectRatio> values = [
    auto,
    v1x1,
    v4x3,
    v3x2,
    v16x9,
  ];
}

/// `fixed_gop` — derived from the provider schema description.
extension type const ElastictranscoderPresetFixedGop._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetFixedGop.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetFixedGop.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetFixedGop.arg(TfArg<String> arg) : this._(arg);

  static const trueCase = ElastictranscoderPresetFixedGop._(
    TfArgLiteral('true'),
  );
  static const falseCase = ElastictranscoderPresetFixedGop._(
    TfArgLiteral('false'),
  );

  static const List<ElastictranscoderPresetFixedGop> values = [
    trueCase,
    falseCase,
  ];
}

/// `frame_rate` — derived from the provider schema description.
extension type const ElastictranscoderPresetFrameRate._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetFrameRate.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetFrameRate.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetFrameRate.arg(TfArg<String> arg) : this._(arg);

  static const auto = ElastictranscoderPresetFrameRate._(TfArgLiteral('auto'));
  static const v10 = ElastictranscoderPresetFrameRate._(TfArgLiteral('10'));
  static const v15 = ElastictranscoderPresetFrameRate._(TfArgLiteral('15'));
  static const v23p97 = ElastictranscoderPresetFrameRate._(
    TfArgLiteral('23.97'),
  );
  static const v24 = ElastictranscoderPresetFrameRate._(TfArgLiteral('24'));
  static const v25 = ElastictranscoderPresetFrameRate._(TfArgLiteral('25'));
  static const v29p97 = ElastictranscoderPresetFrameRate._(
    TfArgLiteral('29.97'),
  );
  static const v30 = ElastictranscoderPresetFrameRate._(TfArgLiteral('30'));
  static const v50 = ElastictranscoderPresetFrameRate._(TfArgLiteral('50'));
  static const v60 = ElastictranscoderPresetFrameRate._(TfArgLiteral('60'));

  static const List<ElastictranscoderPresetFrameRate> values = [
    auto,
    v10,
    v15,
    v23p97,
    v24,
    v25,
    v29p97,
    v30,
    v50,
    v60,
  ];
}

/// `max_frame_rate` — derived from the provider schema description.
extension type const ElastictranscoderPresetMaxFrameRate._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetMaxFrameRate.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetMaxFrameRate.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetMaxFrameRate.arg(TfArg<String> arg)
    : this._(arg);

  static const v10 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('10'));
  static const v15 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('15'));
  static const v23p97 = ElastictranscoderPresetMaxFrameRate._(
    TfArgLiteral('23.97'),
  );
  static const v24 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('24'));
  static const v25 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('25'));
  static const v29p97 = ElastictranscoderPresetMaxFrameRate._(
    TfArgLiteral('29.97'),
  );
  static const v30 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('30'));
  static const v50 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('50'));
  static const v60 = ElastictranscoderPresetMaxFrameRate._(TfArgLiteral('60'));

  static const List<ElastictranscoderPresetMaxFrameRate> values = [
    v10,
    v15,
    v23p97,
    v24,
    v25,
    v29p97,
    v30,
    v50,
    v60,
  ];
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

  final ElastictranscoderPresetHorizontalAlign? horizontalAlign;

  final TfArg<String>? horizontalOffset;

  final TfArg<String>? id;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<String>? opacity;

  final ElastictranscoderPresetVideoWatermarksSizingPolicy? sizingPolicy;

  final ElastictranscoderPresetTarget? target;

  final ElastictranscoderPresetVerticalAlign? verticalAlign;

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
extension type const ElastictranscoderPresetHorizontalAlign._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetHorizontalAlign.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetHorizontalAlign.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetHorizontalAlign.arg(TfArg<String> arg)
    : this._(arg);

  static const left = ElastictranscoderPresetHorizontalAlign._(
    TfArgLiteral('Left'),
  );
  static const right = ElastictranscoderPresetHorizontalAlign._(
    TfArgLiteral('Right'),
  );
  static const center = ElastictranscoderPresetHorizontalAlign._(
    TfArgLiteral('Center'),
  );

  static const List<ElastictranscoderPresetHorizontalAlign> values = [
    left,
    right,
    center,
  ];
}

/// `sizing_policy` — derived from the provider schema description.
extension type const ElastictranscoderPresetVideoWatermarksSizingPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  ElastictranscoderPresetVideoWatermarksSizingPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetVideoWatermarksSizingPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetVideoWatermarksSizingPolicy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const fit = ElastictranscoderPresetVideoWatermarksSizingPolicy._(
    TfArgLiteral('Fit'),
  );
  static const stretch = ElastictranscoderPresetVideoWatermarksSizingPolicy._(
    TfArgLiteral('Stretch'),
  );
  static const shrinktofit =
      ElastictranscoderPresetVideoWatermarksSizingPolicy._(
        TfArgLiteral('ShrinkToFit'),
      );

  static const List<ElastictranscoderPresetVideoWatermarksSizingPolicy> values =
      [fit, stretch, shrinktofit];
}

/// `target` — derived from the provider schema description.
extension type const ElastictranscoderPresetTarget._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetTarget.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetTarget.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetTarget.arg(TfArg<String> arg) : this._(arg);

  static const content = ElastictranscoderPresetTarget._(
    TfArgLiteral('Content'),
  );
  static const frame = ElastictranscoderPresetTarget._(TfArgLiteral('Frame'));

  static const List<ElastictranscoderPresetTarget> values = [content, frame];
}

/// `vertical_align` — derived from the provider schema description.
extension type const ElastictranscoderPresetVerticalAlign._(TfArg<String> _)
    implements TfArg<String> {
  ElastictranscoderPresetVerticalAlign.variable(String name)
    : this._(TfArg.variable(name));
  ElastictranscoderPresetVerticalAlign.expression(String template)
    : this._(TfArg.expression(template));
  const ElastictranscoderPresetVerticalAlign.arg(TfArg<String> arg)
    : this._(arg);

  static const top = ElastictranscoderPresetVerticalAlign._(
    TfArgLiteral('Top'),
  );
  static const bottom = ElastictranscoderPresetVerticalAlign._(
    TfArgLiteral('Bottom'),
  );
  static const center = ElastictranscoderPresetVerticalAlign._(
    TfArgLiteral('Center'),
  );

  static const List<ElastictranscoderPresetVerticalAlign> values = [
    top,
    bottom,
    center,
  ];
}

/// Factory wrapper for `aws_elastictranscoder_preset`.
final class AwsElastictranscoderPreset extends Resource {
  static const String tfType = 'aws_elastictranscoder_preset';

  AwsElastictranscoderPreset(
    super.localName, {
    required ElastictranscoderPresetContainer container,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? region,
    ElastictranscoderPresetType? type,
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
