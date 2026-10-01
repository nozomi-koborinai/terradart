// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_medialive_multiplex_program`.
const Set<String> _awsMedialiveMultiplexProgramSensitive = <String>{};

/// Typed helper for the `multiplex_program_settings` block of
/// `aws_medialive_multiplex_program` (derived from provider schema).
@immutable
final class MedialiveMultiplexProgramSettings {
  const MedialiveMultiplexProgramSettings({
    required this.preferredChannelPipeline,
    required this.programNumber,
    this.serviceDescriptor,
    this.videoSettings,
  });

  final TfArg<String> preferredChannelPipeline;

  final TfArg<num> programNumber;

  final List<MedialiveMultiplexProgramServiceDescriptor>? serviceDescriptor;

  final List<MedialiveMultiplexProgramVideoSettings>? videoSettings;

  Map<String, Object?> encode() => {
    'preferred_channel_pipeline': preferredChannelPipeline.toTfJson(),
    'program_number': programNumber.toTfJson(),
    if (serviceDescriptor != null)
      'service_descriptor': [for (final e in serviceDescriptor!) e.encode()],
    if (videoSettings != null)
      'video_settings': [for (final e in videoSettings!) e.encode()],
  };
}

/// Typed helper for the `multiplex_program_settings.service_descriptor` block of
/// `aws_medialive_multiplex_program` (derived from provider schema).
@immutable
final class MedialiveMultiplexProgramServiceDescriptor {
  const MedialiveMultiplexProgramServiceDescriptor({
    required this.providerName,
    required this.serviceName,
  });

  final TfArg<String> providerName;

  final TfArg<String> serviceName;

  Map<String, Object?> encode() => {
    'provider_name': providerName.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `multiplex_program_settings.video_settings` block of
/// `aws_medialive_multiplex_program` (derived from provider schema).
@immutable
final class MedialiveMultiplexProgramVideoSettings {
  const MedialiveMultiplexProgramVideoSettings({
    this.constantBitrate,
    this.statmuxSettings,
  });

  final TfArg<num>? constantBitrate;

  final List<MedialiveMultiplexProgramStatmuxSettings>? statmuxSettings;

  Map<String, Object?> encode() => {
    'constant_bitrate': ?constantBitrate?.toTfJson(),
    if (statmuxSettings != null)
      'statmux_settings': [for (final e in statmuxSettings!) e.encode()],
  };
}

/// Typed helper for the `multiplex_program_settings.video_settings.statmux_settings` block of
/// `aws_medialive_multiplex_program` (derived from provider schema).
@immutable
final class MedialiveMultiplexProgramStatmuxSettings {
  const MedialiveMultiplexProgramStatmuxSettings({
    this.maximumBitrate,
    this.minimumBitrate,
    this.priority,
  });

  final TfArg<num>? maximumBitrate;

  final TfArg<num>? minimumBitrate;

  final TfArg<num>? priority;

  Map<String, Object?> encode() => {
    'maximum_bitrate': ?maximumBitrate?.toTfJson(),
    'minimum_bitrate': ?minimumBitrate?.toTfJson(),
    'priority': ?priority?.toTfJson(),
  };
}

/// Factory wrapper for `aws_medialive_multiplex_program`.
final class AwsMedialiveMultiplexProgram extends Resource {
  static const String tfType = 'aws_medialive_multiplex_program';

  AwsMedialiveMultiplexProgram(
    super.localName, {
    required TfArg<String> multiplexId,
    required TfArg<String> programName,
    TfArg<String>? region,
    List<MedialiveMultiplexProgramSettings>? multiplexProgramSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'multiplex_id': multiplexId,
           'program_name': programName,
           'region': ?region,
           if (multiplexProgramSettings != null)
             'multiplex_program_settings': TfArg.literal([
               for (final e in multiplexProgramSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveMultiplexProgramSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMedialiveMultiplexProgram>`.
  RefTo<AwsMedialiveMultiplexProgram> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `multiplex_id` attribute.
  TfRef<String> get multiplexId =>
      TfRef.attribute<String>(this, 'multiplex_id');

  /// Reference to `program_name` attribute.
  TfRef<String> get programName =>
      TfRef.attribute<String>(this, 'program_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
