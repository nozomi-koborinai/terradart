// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_medialive_multiplex`.
const Set<String> _awsMedialiveMultiplexSensitive = <String>{};

/// Typed helper for the `multiplex_settings` block of
/// `aws_medialive_multiplex` (derived from provider schema).
@immutable
final class MedialiveMultiplexMultiplexSettings {
  const MedialiveMultiplexMultiplexSettings({
    this.maximumVideoBufferDelayMilliseconds,
    required this.transportStreamBitrate,
    required this.transportStreamId,
    this.transportStreamReservedBitrate,
  });

  final TfArg<num>? maximumVideoBufferDelayMilliseconds;

  final TfArg<num> transportStreamBitrate;

  final TfArg<num> transportStreamId;

  final TfArg<num>? transportStreamReservedBitrate;

  Map<String, Object?> encode() => {
    if (maximumVideoBufferDelayMilliseconds != null)
      'maximum_video_buffer_delay_milliseconds':
          maximumVideoBufferDelayMilliseconds!.toTfJson(),
    'transport_stream_bitrate': transportStreamBitrate.toTfJson(),
    'transport_stream_id': transportStreamId.toTfJson(),
    if (transportStreamReservedBitrate != null)
      'transport_stream_reserved_bitrate': transportStreamReservedBitrate!
          .toTfJson(),
  };
}

/// Factory wrapper for `aws_medialive_multiplex`.
final class AwsMedialiveMultiplex extends Resource {
  static const String tfType = 'aws_medialive_multiplex';

  AwsMedialiveMultiplex({
    required super.localName,
    required TfArg<List<String>> availabilityZones,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? startMultiplex,
    TfArg<Map<String, String>>? tags,
    MedialiveMultiplexMultiplexSettings? multiplexSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zones': availabilityZones,
           'name': name,
           if (region != null) 'region': region,
           if (startMultiplex != null) 'start_multiplex': startMultiplex,
           if (tags != null) 'tags': tags,
           if (multiplexSettings != null)
             'multiplex_settings': TfArg.literal(multiplexSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveMultiplexSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
