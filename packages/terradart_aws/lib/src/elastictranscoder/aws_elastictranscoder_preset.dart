// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elastictranscoder_preset`.
const Set<String> _awsElastictranscoderPresetSensitive = <String>{};

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

  final TfArg<String>? audioPackingMode;

  final TfArg<String>? bitRate;

  final TfArg<String>? channels;

  final TfArg<String>? codec;

  final TfArg<String>? sampleRate;

  Map<String, Object?> encode() => {
    if (audioPackingMode != null)
      'audio_packing_mode': audioPackingMode!.toTfJson(),
    if (bitRate != null) 'bit_rate': bitRate!.toTfJson(),
    if (channels != null) 'channels': channels!.toTfJson(),
    if (codec != null) 'codec': codec!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
  };
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

  final TfArg<String>? bitDepth;

  final TfArg<String>? bitOrder;

  final TfArg<String>? profile;

  final TfArg<String>? signed;

  Map<String, Object?> encode() => {
    if (bitDepth != null) 'bit_depth': bitDepth!.toTfJson(),
    if (bitOrder != null) 'bit_order': bitOrder!.toTfJson(),
    if (profile != null) 'profile': profile!.toTfJson(),
    if (signed != null) 'signed': signed!.toTfJson(),
  };
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

  final TfArg<String>? aspectRatio;

  final TfArg<String>? format;

  final TfArg<String>? interval;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<String>? paddingPolicy;

  final TfArg<String>? resolution;

  final TfArg<String>? sizingPolicy;

  Map<String, Object?> encode() => {
    if (aspectRatio != null) 'aspect_ratio': aspectRatio!.toTfJson(),
    if (format != null) 'format': format!.toTfJson(),
    if (interval != null) 'interval': interval!.toTfJson(),
    if (maxHeight != null) 'max_height': maxHeight!.toTfJson(),
    if (maxWidth != null) 'max_width': maxWidth!.toTfJson(),
    if (paddingPolicy != null) 'padding_policy': paddingPolicy!.toTfJson(),
    if (resolution != null) 'resolution': resolution!.toTfJson(),
    if (sizingPolicy != null) 'sizing_policy': sizingPolicy!.toTfJson(),
  };
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

  final TfArg<String>? aspectRatio;

  final TfArg<String>? bitRate;

  final TfArg<String>? codec;

  final TfArg<String>? displayAspectRatio;

  final TfArg<String>? fixedGop;

  final TfArg<String>? frameRate;

  final TfArg<String>? keyframesMaxDist;

  final TfArg<String>? maxFrameRate;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<String>? paddingPolicy;

  final TfArg<String>? resolution;

  final TfArg<String>? sizingPolicy;

  Map<String, Object?> encode() => {
    if (aspectRatio != null) 'aspect_ratio': aspectRatio!.toTfJson(),
    if (bitRate != null) 'bit_rate': bitRate!.toTfJson(),
    if (codec != null) 'codec': codec!.toTfJson(),
    if (displayAspectRatio != null)
      'display_aspect_ratio': displayAspectRatio!.toTfJson(),
    if (fixedGop != null) 'fixed_gop': fixedGop!.toTfJson(),
    if (frameRate != null) 'frame_rate': frameRate!.toTfJson(),
    if (keyframesMaxDist != null)
      'keyframes_max_dist': keyframesMaxDist!.toTfJson(),
    if (maxFrameRate != null) 'max_frame_rate': maxFrameRate!.toTfJson(),
    if (maxHeight != null) 'max_height': maxHeight!.toTfJson(),
    if (maxWidth != null) 'max_width': maxWidth!.toTfJson(),
    if (paddingPolicy != null) 'padding_policy': paddingPolicy!.toTfJson(),
    if (resolution != null) 'resolution': resolution!.toTfJson(),
    if (sizingPolicy != null) 'sizing_policy': sizingPolicy!.toTfJson(),
  };
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

  final TfArg<String>? horizontalAlign;

  final TfArg<String>? horizontalOffset;

  final TfArg<String>? id;

  final TfArg<String>? maxHeight;

  final TfArg<String>? maxWidth;

  final TfArg<String>? opacity;

  final TfArg<String>? sizingPolicy;

  final TfArg<String>? target;

  final TfArg<String>? verticalAlign;

  final TfArg<String>? verticalOffset;

  Map<String, Object?> encode() => {
    if (horizontalAlign != null)
      'horizontal_align': horizontalAlign!.toTfJson(),
    if (horizontalOffset != null)
      'horizontal_offset': horizontalOffset!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (maxHeight != null) 'max_height': maxHeight!.toTfJson(),
    if (maxWidth != null) 'max_width': maxWidth!.toTfJson(),
    if (opacity != null) 'opacity': opacity!.toTfJson(),
    if (sizingPolicy != null) 'sizing_policy': sizingPolicy!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (verticalAlign != null) 'vertical_align': verticalAlign!.toTfJson(),
    if (verticalOffset != null) 'vertical_offset': verticalOffset!.toTfJson(),
  };
}

/// Factory wrapper for `aws_elastictranscoder_preset`.
final class AwsElastictranscoderPreset extends Resource {
  static const String tfType = 'aws_elastictranscoder_preset';

  AwsElastictranscoderPreset({
    required super.localName,
    required TfArg<String> container,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? type,
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
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           if (videoCodecOptions != null)
             'video_codec_options': videoCodecOptions,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
