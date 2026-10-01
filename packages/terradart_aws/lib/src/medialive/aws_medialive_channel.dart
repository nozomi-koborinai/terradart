// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_medialive_channel`.
const Set<String> _awsMedialiveChannelSensitive = <String>{};

/// Medialive Channel enum for `channel_class`.
enum MedialiveChannelClass implements TerraformEnum {
  standard('STANDARD'),
  singlePipeline('SINGLE_PIPELINE');

  const MedialiveChannelClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Medialive Channel Log enum for `log_level`.
enum MedialiveChannelLogLevel implements TerraformEnum {
  error('ERROR'),
  warning('WARNING'),
  info('INFO'),
  debug('DEBUG'),
  disabled('DISABLED');

  const MedialiveChannelLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cdi_input_specification` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCdiInputSpecification {
  const MedialiveChannelCdiInputSpecification({required this.resolution});

  final TfArg<MedialiveChannelResolution> resolution;

  Map<String, Object?> encode() => {'resolution': resolution.toTfJson()};
}

/// `resolution` — derived from the provider schema description.
enum MedialiveChannelResolution implements TerraformEnum {
  sd('SD'),
  hd('HD'),
  fhd('FHD'),
  uhd('UHD');

  const MedialiveChannelResolution(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `destinations` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDestinations {
  const MedialiveChannelDestinations({
    required this.id,
    this.mediaPackageSettings,
    this.multiplexSettings,
    this.settings,
  });

  final TfArg<String> id;

  final List<MedialiveChannelMediaPackageSettings>? mediaPackageSettings;

  final MedialiveChannelMultiplexSettings? multiplexSettings;

  final List<MedialiveChannelSettings>? settings;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (mediaPackageSettings != null)
      'media_package_settings': [
        for (final e in mediaPackageSettings!) e.encode(),
      ],
    'multiplex_settings': ?multiplexSettings?.encode(),
    if (settings != null) 'settings': [for (final e in settings!) e.encode()],
  };
}

/// Typed helper for the `destinations.media_package_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMediaPackageSettings {
  const MedialiveChannelMediaPackageSettings({required this.channelId});

  final TfArg<String> channelId;

  Map<String, Object?> encode() => {'channel_id': channelId.toTfJson()};
}

/// Typed helper for the `destinations.multiplex_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMultiplexSettings {
  const MedialiveChannelMultiplexSettings({
    required this.multiplexId,
    required this.programName,
  });

  final TfArg<String> multiplexId;

  final TfArg<String> programName;

  Map<String, Object?> encode() => {
    'multiplex_id': multiplexId.toTfJson(),
    'program_name': programName.toTfJson(),
  };
}

/// Typed helper for the `destinations.settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelSettings {
  const MedialiveChannelSettings({
    this.passwordParam,
    this.streamName,
    this.url,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String>? streamName;

  final TfArg<String>? url;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'stream_name': ?streamName?.toTfJson(),
    'url': ?url?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettings {
  const MedialiveChannelEncoderSettings({
    this.audioDescriptions,
    this.availBlanking,
    this.captionDescriptions,
    this.globalConfiguration,
    this.motionGraphicsConfiguration,
    this.nielsenConfiguration,
    required this.outputGroups,
    required this.timecodeConfig,
    this.videoDescriptions,
  });

  final List<MedialiveChannelAudioDescriptions>? audioDescriptions;

  final MedialiveChannelAvailBlanking? availBlanking;

  final List<MedialiveChannelCaptionDescriptions>? captionDescriptions;

  final MedialiveChannelGlobalConfiguration? globalConfiguration;

  final MedialiveChannelMotionGraphicsConfiguration?
  motionGraphicsConfiguration;

  final MedialiveChannelNielsenConfiguration? nielsenConfiguration;

  final List<MedialiveChannelOutputGroups> outputGroups;

  final MedialiveChannelTimecodeConfig timecodeConfig;

  final List<MedialiveChannelVideoDescriptions>? videoDescriptions;

  Map<String, Object?> encode() => {
    if (audioDescriptions != null)
      'audio_descriptions': [for (final e in audioDescriptions!) e.encode()],
    'avail_blanking': ?availBlanking?.encode(),
    if (captionDescriptions != null)
      'caption_descriptions': [
        for (final e in captionDescriptions!) e.encode(),
      ],
    'global_configuration': ?globalConfiguration?.encode(),
    'motion_graphics_configuration': ?motionGraphicsConfiguration?.encode(),
    'nielsen_configuration': ?nielsenConfiguration?.encode(),
    'output_groups': [for (final e in outputGroups) e.encode()],
    'timecode_config': timecodeConfig.encode(),
    if (videoDescriptions != null)
      'video_descriptions': [for (final e in videoDescriptions!) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioDescriptions {
  const MedialiveChannelAudioDescriptions({
    required this.audioSelectorName,
    this.audioType,
    this.audioTypeControl,
    this.languageCode,
    this.languageCodeControl,
    required this.name,
    this.streamName,
    this.audioNormalizationSettings,
    this.audioWatermarkSettings,
    this.codecSettings,
    this.remixSettings,
  });

  final TfArg<String> audioSelectorName;

  final TfArg<String>? audioType;

  final TfArg<String>? audioTypeControl;

  final TfArg<String>? languageCode;

  final TfArg<String>? languageCodeControl;

  final TfArg<String> name;

  final TfArg<String>? streamName;

  final MedialiveChannelAudioNormalizationSettings? audioNormalizationSettings;

  final MedialiveChannelAudioWatermarkSettings? audioWatermarkSettings;

  final MedialiveChannelAudioDescriptionsCodecSettings? codecSettings;

  final MedialiveChannelRemixSettings? remixSettings;

  Map<String, Object?> encode() => {
    'audio_selector_name': audioSelectorName.toTfJson(),
    'audio_type': ?audioType?.toTfJson(),
    'audio_type_control': ?audioTypeControl?.toTfJson(),
    'language_code': ?languageCode?.toTfJson(),
    'language_code_control': ?languageCodeControl?.toTfJson(),
    'name': name.toTfJson(),
    'stream_name': ?streamName?.toTfJson(),
    'audio_normalization_settings': ?audioNormalizationSettings?.encode(),
    'audio_watermark_settings': ?audioWatermarkSettings?.encode(),
    'codec_settings': ?codecSettings?.encode(),
    'remix_settings': ?remixSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_normalization_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioNormalizationSettings {
  const MedialiveChannelAudioNormalizationSettings({
    this.algorithm,
    this.algorithmControl,
    this.targetLkfs,
  });

  final TfArg<String>? algorithm;

  final TfArg<String>? algorithmControl;

  final TfArg<num>? targetLkfs;

  Map<String, Object?> encode() => {
    'algorithm': ?algorithm?.toTfJson(),
    'algorithm_control': ?algorithmControl?.toTfJson(),
    'target_lkfs': ?targetLkfs?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioWatermarkSettings {
  const MedialiveChannelAudioWatermarkSettings({
    this.nielsenWatermarksSettings,
  });

  final MedialiveChannelNielsenWatermarksSettings? nielsenWatermarksSettings;

  Map<String, Object?> encode() => {
    'nielsen_watermarks_settings': ?nielsenWatermarksSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings.nielsen_watermarks_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelNielsenWatermarksSettings {
  const MedialiveChannelNielsenWatermarksSettings({
    this.nielsenDistributionType,
    this.nielsenCbetSettings,
    this.nielsenNaesIiNwSettings,
  });

  final TfArg<String>? nielsenDistributionType;

  final MedialiveChannelNielsenCbetSettings? nielsenCbetSettings;

  final List<MedialiveChannelNielsenNaesIiNwSettings>? nielsenNaesIiNwSettings;

  Map<String, Object?> encode() => {
    'nielsen_distribution_type': ?nielsenDistributionType?.toTfJson(),
    'nielsen_cbet_settings': ?nielsenCbetSettings?.encode(),
    if (nielsenNaesIiNwSettings != null)
      'nielsen_naes_ii_nw_settings': [
        for (final e in nielsenNaesIiNwSettings!) e.encode(),
      ],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings.nielsen_watermarks_settings.nielsen_cbet_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelNielsenCbetSettings {
  const MedialiveChannelNielsenCbetSettings({
    required this.cbetCheckDigitString,
    required this.cbetStepaside,
    required this.csid,
  });

  final TfArg<String> cbetCheckDigitString;

  final TfArg<String> cbetStepaside;

  final TfArg<String> csid;

  Map<String, Object?> encode() => {
    'cbet_check_digit_string': cbetCheckDigitString.toTfJson(),
    'cbet_stepaside': cbetStepaside.toTfJson(),
    'csid': csid.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings.nielsen_watermarks_settings.nielsen_naes_ii_nw_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelNielsenNaesIiNwSettings {
  const MedialiveChannelNielsenNaesIiNwSettings({
    required this.checkDigitString,
    required this.sid,
  });

  final TfArg<String> checkDigitString;

  final TfArg<num> sid;

  Map<String, Object?> encode() => {
    'check_digit_string': checkDigitString.toTfJson(),
    'sid': sid.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioDescriptionsCodecSettings {
  const MedialiveChannelAudioDescriptionsCodecSettings({
    this.aacSettings,
    this.ac3Settings,
    this.eac3AtmosSettings,
    this.eac3Settings,
    this.mp2Settings,
    this.passThroughSettings,
    this.wavSettings,
  });

  final MedialiveChannelAacSettings? aacSettings;

  final MedialiveChannelAc3Settings? ac3Settings;

  final MedialiveChannelEac3AtmosSettings? eac3AtmosSettings;

  final MedialiveChannelEac3Settings? eac3Settings;

  final MedialiveChannelMp2Settings? mp2Settings;

  final MedialiveChannelPassThroughSettings? passThroughSettings;

  final MedialiveChannelWavSettings? wavSettings;

  Map<String, Object?> encode() => {
    'aac_settings': ?aacSettings?.encode(),
    'ac3_settings': ?ac3Settings?.encode(),
    'eac3_atmos_settings': ?eac3AtmosSettings?.encode(),
    'eac3_settings': ?eac3Settings?.encode(),
    'mp2_settings': ?mp2Settings?.encode(),
    'pass_through_settings': ?passThroughSettings?.encode(),
    'wav_settings': ?wavSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.aac_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAacSettings {
  const MedialiveChannelAacSettings({
    this.bitrate,
    this.codingMode,
    this.inputType,
    this.profile,
    this.rateControlMode,
    this.rawFormat,
    this.sampleRate,
    this.spec,
    this.vbrQuality,
  });

  final TfArg<num>? bitrate;

  final TfArg<String>? codingMode;

  final TfArg<String>? inputType;

  final TfArg<String>? profile;

  final TfArg<String>? rateControlMode;

  final TfArg<String>? rawFormat;

  final TfArg<num>? sampleRate;

  final TfArg<String>? spec;

  final TfArg<String>? vbrQuality;

  Map<String, Object?> encode() => {
    'bitrate': ?bitrate?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'input_type': ?inputType?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'rate_control_mode': ?rateControlMode?.toTfJson(),
    'raw_format': ?rawFormat?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
    'spec': ?spec?.toTfJson(),
    'vbr_quality': ?vbrQuality?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.ac3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAc3Settings {
  const MedialiveChannelAc3Settings({
    this.bitrate,
    this.bitstreamMode,
    this.codingMode,
    this.dialnorm,
    this.drcProfile,
    this.lfeFilter,
    this.metadataControl,
  });

  final TfArg<num>? bitrate;

  final TfArg<String>? bitstreamMode;

  final TfArg<String>? codingMode;

  final TfArg<num>? dialnorm;

  final TfArg<String>? drcProfile;

  final TfArg<String>? lfeFilter;

  final TfArg<String>? metadataControl;

  Map<String, Object?> encode() => {
    'bitrate': ?bitrate?.toTfJson(),
    'bitstream_mode': ?bitstreamMode?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'dialnorm': ?dialnorm?.toTfJson(),
    'drc_profile': ?drcProfile?.toTfJson(),
    'lfe_filter': ?lfeFilter?.toTfJson(),
    'metadata_control': ?metadataControl?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.eac3_atmos_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEac3AtmosSettings {
  const MedialiveChannelEac3AtmosSettings({
    this.bitrate,
    this.codingMode,
    this.dialnorm,
    this.drcLine,
    this.drcRf,
    this.heightTrim,
    this.surroundTrim,
  });

  final TfArg<num>? bitrate;

  final TfArg<String>? codingMode;

  final TfArg<num>? dialnorm;

  final TfArg<String>? drcLine;

  final TfArg<String>? drcRf;

  final TfArg<num>? heightTrim;

  final TfArg<num>? surroundTrim;

  Map<String, Object?> encode() => {
    'bitrate': ?bitrate?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'dialnorm': ?dialnorm?.toTfJson(),
    'drc_line': ?drcLine?.toTfJson(),
    'drc_rf': ?drcRf?.toTfJson(),
    'height_trim': ?heightTrim?.toTfJson(),
    'surround_trim': ?surroundTrim?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.eac3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEac3Settings {
  const MedialiveChannelEac3Settings({
    this.attenuationControl,
    this.bitrate,
    this.bitstreamMode,
    this.codingMode,
    this.dcFilter,
    this.dialnorm,
    this.drcLine,
    this.drcRf,
    this.lfeControl,
    this.lfeFilter,
    this.loRoCenterMixLevel,
    this.loRoSurroundMixLevel,
    this.ltRtCenterMixLevel,
    this.ltRtSurroundMixLevel,
    this.metadataControl,
    this.passthroughControl,
    this.phaseControl,
    this.stereoDownmix,
    this.surroundExMode,
    this.surroundMode,
  });

  final TfArg<String>? attenuationControl;

  final TfArg<num>? bitrate;

  final TfArg<String>? bitstreamMode;

  final TfArg<String>? codingMode;

  final TfArg<String>? dcFilter;

  final TfArg<num>? dialnorm;

  final TfArg<String>? drcLine;

  final TfArg<String>? drcRf;

  final TfArg<String>? lfeControl;

  final TfArg<String>? lfeFilter;

  final TfArg<num>? loRoCenterMixLevel;

  final TfArg<num>? loRoSurroundMixLevel;

  final TfArg<num>? ltRtCenterMixLevel;

  final TfArg<num>? ltRtSurroundMixLevel;

  final TfArg<String>? metadataControl;

  final TfArg<String>? passthroughControl;

  final TfArg<String>? phaseControl;

  final TfArg<String>? stereoDownmix;

  final TfArg<String>? surroundExMode;

  final TfArg<String>? surroundMode;

  Map<String, Object?> encode() => {
    'attenuation_control': ?attenuationControl?.toTfJson(),
    'bitrate': ?bitrate?.toTfJson(),
    'bitstream_mode': ?bitstreamMode?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'dc_filter': ?dcFilter?.toTfJson(),
    'dialnorm': ?dialnorm?.toTfJson(),
    'drc_line': ?drcLine?.toTfJson(),
    'drc_rf': ?drcRf?.toTfJson(),
    'lfe_control': ?lfeControl?.toTfJson(),
    'lfe_filter': ?lfeFilter?.toTfJson(),
    'lo_ro_center_mix_level': ?loRoCenterMixLevel?.toTfJson(),
    'lo_ro_surround_mix_level': ?loRoSurroundMixLevel?.toTfJson(),
    'lt_rt_center_mix_level': ?ltRtCenterMixLevel?.toTfJson(),
    'lt_rt_surround_mix_level': ?ltRtSurroundMixLevel?.toTfJson(),
    'metadata_control': ?metadataControl?.toTfJson(),
    'passthrough_control': ?passthroughControl?.toTfJson(),
    'phase_control': ?phaseControl?.toTfJson(),
    'stereo_downmix': ?stereoDownmix?.toTfJson(),
    'surround_ex_mode': ?surroundExMode?.toTfJson(),
    'surround_mode': ?surroundMode?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.mp2_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMp2Settings {
  const MedialiveChannelMp2Settings({
    this.bitrate,
    this.codingMode,
    this.sampleRate,
  });

  final TfArg<num>? bitrate;

  final TfArg<String>? codingMode;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    'bitrate': ?bitrate?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.pass_through_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelPassThroughSettings {
  const MedialiveChannelPassThroughSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.wav_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelWavSettings {
  const MedialiveChannelWavSettings({
    this.bitDepth,
    this.codingMode,
    this.sampleRate,
  });

  final TfArg<num>? bitDepth;

  final TfArg<String>? codingMode;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    'bit_depth': ?bitDepth?.toTfJson(),
    'coding_mode': ?codingMode?.toTfJson(),
    'sample_rate': ?sampleRate?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRemixSettings {
  const MedialiveChannelRemixSettings({
    this.channelsIn,
    this.channelsOut,
    required this.channelMappings,
  });

  final TfArg<num>? channelsIn;

  final TfArg<num>? channelsOut;

  final List<MedialiveChannelMappings> channelMappings;

  Map<String, Object?> encode() => {
    'channels_in': ?channelsIn?.toTfJson(),
    'channels_out': ?channelsOut?.toTfJson(),
    'channel_mappings': [for (final e in channelMappings) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings.channel_mappings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMappings {
  const MedialiveChannelMappings({
    required this.outputChannel,
    required this.inputChannelLevels,
  });

  final TfArg<num> outputChannel;

  final List<MedialiveChannelInputChannelLevels> inputChannelLevels;

  Map<String, Object?> encode() => {
    'output_channel': outputChannel.toTfJson(),
    'input_channel_levels': [for (final e in inputChannelLevels) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings.channel_mappings.input_channel_levels` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputChannelLevels {
  const MedialiveChannelInputChannelLevels({
    required this.gain,
    required this.inputChannel,
  });

  final TfArg<num> gain;

  final TfArg<num> inputChannel;

  Map<String, Object?> encode() => {
    'gain': gain.toTfJson(),
    'input_channel': inputChannel.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.avail_blanking` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAvailBlanking {
  const MedialiveChannelAvailBlanking({this.state, this.availBlankingImage});

  final TfArg<String>? state;

  final MedialiveChannelAvailBlankingImage? availBlankingImage;

  Map<String, Object?> encode() => {
    'state': ?state?.toTfJson(),
    'avail_blanking_image': ?availBlankingImage?.encode(),
  };
}

/// Typed helper for the `encoder_settings.avail_blanking.avail_blanking_image` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAvailBlankingImage {
  const MedialiveChannelAvailBlankingImage({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCaptionDescriptions {
  const MedialiveChannelCaptionDescriptions({
    this.accessibility,
    required this.captionSelectorName,
    this.languageCode,
    this.languageDescription,
    required this.name,
    this.destinationSettings,
  });

  final TfArg<String>? accessibility;

  final TfArg<String> captionSelectorName;

  final TfArg<String>? languageCode;

  final TfArg<String>? languageDescription;

  final TfArg<String> name;

  final MedialiveChannelDestinationSettings? destinationSettings;

  Map<String, Object?> encode() => {
    'accessibility': ?accessibility?.toTfJson(),
    'caption_selector_name': captionSelectorName.toTfJson(),
    'language_code': ?languageCode?.toTfJson(),
    'language_description': ?languageDescription?.toTfJson(),
    'name': name.toTfJson(),
    'destination_settings': ?destinationSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDestinationSettings {
  const MedialiveChannelDestinationSettings({
    this.aribDestinationSettings,
    this.burnInDestinationSettings,
    this.dvbSubDestinationSettings,
    this.ebuTtDDestinationSettings,
    this.embeddedDestinationSettings,
    this.embeddedPlusScte20DestinationSettings,
    this.rtmpCaptionInfoDestinationSettings,
    this.scte20PlusEmbeddedDestinationSettings,
    this.scte27DestinationSettings,
    this.smpteTtDestinationSettings,
    this.teletextDestinationSettings,
    this.ttmlDestinationSettings,
    this.webvttDestinationSettings,
  });

  final MedialiveChannelAribDestinationSettings? aribDestinationSettings;

  final MedialiveChannelBurnInDestinationSettings? burnInDestinationSettings;

  final MedialiveChannelDvbSubDestinationSettings? dvbSubDestinationSettings;

  final MedialiveChannelEbuTtDDestinationSettings? ebuTtDDestinationSettings;

  final MedialiveChannelEmbeddedDestinationSettings?
  embeddedDestinationSettings;

  final MedialiveChannelEmbeddedPlusScte20DestinationSettings?
  embeddedPlusScte20DestinationSettings;

  final MedialiveChannelRtmpCaptionInfoDestinationSettings?
  rtmpCaptionInfoDestinationSettings;

  final MedialiveChannelScte20PlusEmbeddedDestinationSettings?
  scte20PlusEmbeddedDestinationSettings;

  final MedialiveChannelScte27DestinationSettings? scte27DestinationSettings;

  final MedialiveChannelSmpteTtDestinationSettings? smpteTtDestinationSettings;

  final MedialiveChannelTeletextDestinationSettings?
  teletextDestinationSettings;

  final MedialiveChannelTtmlDestinationSettings? ttmlDestinationSettings;

  final MedialiveChannelWebvttDestinationSettings? webvttDestinationSettings;

  Map<String, Object?> encode() => {
    'arib_destination_settings': ?aribDestinationSettings?.encode(),
    'burn_in_destination_settings': ?burnInDestinationSettings?.encode(),
    'dvb_sub_destination_settings': ?dvbSubDestinationSettings?.encode(),
    'ebu_tt_d_destination_settings': ?ebuTtDDestinationSettings?.encode(),
    'embedded_destination_settings': ?embeddedDestinationSettings?.encode(),
    'embedded_plus_scte20_destination_settings':
        ?embeddedPlusScte20DestinationSettings?.encode(),
    'rtmp_caption_info_destination_settings':
        ?rtmpCaptionInfoDestinationSettings?.encode(),
    'scte20_plus_embedded_destination_settings':
        ?scte20PlusEmbeddedDestinationSettings?.encode(),
    'scte27_destination_settings': ?scte27DestinationSettings?.encode(),
    'smpte_tt_destination_settings': ?smpteTtDestinationSettings?.encode(),
    'teletext_destination_settings': ?teletextDestinationSettings?.encode(),
    'ttml_destination_settings': ?ttmlDestinationSettings?.encode(),
    'webvtt_destination_settings': ?webvttDestinationSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.arib_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAribDestinationSettings {
  const MedialiveChannelAribDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.burn_in_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelBurnInDestinationSettings {
  const MedialiveChannelBurnInDestinationSettings({
    this.alignment,
    this.backgroundColor,
    this.backgroundOpacity,
    this.fontColor,
    this.fontOpacity,
    this.fontResolution,
    this.fontSize,
    required this.outlineColor,
    this.outlineSize,
    this.shadowColor,
    this.shadowOpacity,
    this.shadowXOffset,
    this.shadowYOffset,
    required this.teletextGridControl,
    this.xPosition,
    this.yPosition,
    this.font,
  });

  final TfArg<String>? alignment;

  final TfArg<String>? backgroundColor;

  final TfArg<num>? backgroundOpacity;

  final TfArg<String>? fontColor;

  final TfArg<num>? fontOpacity;

  final TfArg<num>? fontResolution;

  final TfArg<String>? fontSize;

  final TfArg<String> outlineColor;

  final TfArg<num>? outlineSize;

  final TfArg<String>? shadowColor;

  final TfArg<num>? shadowOpacity;

  final TfArg<num>? shadowXOffset;

  final TfArg<num>? shadowYOffset;

  final TfArg<String> teletextGridControl;

  final TfArg<num>? xPosition;

  final TfArg<num>? yPosition;

  final MedialiveChannelFont? font;

  Map<String, Object?> encode() => {
    'alignment': ?alignment?.toTfJson(),
    'background_color': ?backgroundColor?.toTfJson(),
    'background_opacity': ?backgroundOpacity?.toTfJson(),
    'font_color': ?fontColor?.toTfJson(),
    'font_opacity': ?fontOpacity?.toTfJson(),
    'font_resolution': ?fontResolution?.toTfJson(),
    'font_size': ?fontSize?.toTfJson(),
    'outline_color': outlineColor.toTfJson(),
    'outline_size': ?outlineSize?.toTfJson(),
    'shadow_color': ?shadowColor?.toTfJson(),
    'shadow_opacity': ?shadowOpacity?.toTfJson(),
    'shadow_x_offset': ?shadowXOffset?.toTfJson(),
    'shadow_y_offset': ?shadowYOffset?.toTfJson(),
    'teletext_grid_control': teletextGridControl.toTfJson(),
    'x_position': ?xPosition?.toTfJson(),
    'y_position': ?yPosition?.toTfJson(),
    'font': ?font?.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.burn_in_destination_settings.font` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelFont {
  const MedialiveChannelFont({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.dvb_sub_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDvbSubDestinationSettings {
  const MedialiveChannelDvbSubDestinationSettings({
    this.alignment,
    this.backgroundColor,
    this.backgroundOpacity,
    this.fontColor,
    this.fontOpacity,
    this.fontResolution,
    this.fontSize,
    this.outlineColor,
    this.outlineSize,
    this.shadowColor,
    this.shadowOpacity,
    this.shadowXOffset,
    this.shadowYOffset,
    this.teletextGridControl,
    this.xPosition,
    this.yPosition,
    this.font,
  });

  final TfArg<String>? alignment;

  final TfArg<String>? backgroundColor;

  final TfArg<num>? backgroundOpacity;

  final TfArg<String>? fontColor;

  final TfArg<num>? fontOpacity;

  final TfArg<num>? fontResolution;

  final TfArg<String>? fontSize;

  final TfArg<String>? outlineColor;

  final TfArg<num>? outlineSize;

  final TfArg<String>? shadowColor;

  final TfArg<num>? shadowOpacity;

  final TfArg<num>? shadowXOffset;

  final TfArg<num>? shadowYOffset;

  final TfArg<String>? teletextGridControl;

  final TfArg<num>? xPosition;

  final TfArg<num>? yPosition;

  final MedialiveChannelFont? font;

  Map<String, Object?> encode() => {
    'alignment': ?alignment?.toTfJson(),
    'background_color': ?backgroundColor?.toTfJson(),
    'background_opacity': ?backgroundOpacity?.toTfJson(),
    'font_color': ?fontColor?.toTfJson(),
    'font_opacity': ?fontOpacity?.toTfJson(),
    'font_resolution': ?fontResolution?.toTfJson(),
    'font_size': ?fontSize?.toTfJson(),
    'outline_color': ?outlineColor?.toTfJson(),
    'outline_size': ?outlineSize?.toTfJson(),
    'shadow_color': ?shadowColor?.toTfJson(),
    'shadow_opacity': ?shadowOpacity?.toTfJson(),
    'shadow_x_offset': ?shadowXOffset?.toTfJson(),
    'shadow_y_offset': ?shadowYOffset?.toTfJson(),
    'teletext_grid_control': ?teletextGridControl?.toTfJson(),
    'x_position': ?xPosition?.toTfJson(),
    'y_position': ?yPosition?.toTfJson(),
    'font': ?font?.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.ebu_tt_d_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEbuTtDDestinationSettings {
  const MedialiveChannelEbuTtDDestinationSettings({
    this.copyrightHolder,
    this.fillLineGap,
    this.fontFamily,
    this.styleControl,
  });

  final TfArg<String>? copyrightHolder;

  final TfArg<String>? fillLineGap;

  final TfArg<String>? fontFamily;

  final TfArg<String>? styleControl;

  Map<String, Object?> encode() => {
    'copyright_holder': ?copyrightHolder?.toTfJson(),
    'fill_line_gap': ?fillLineGap?.toTfJson(),
    'font_family': ?fontFamily?.toTfJson(),
    'style_control': ?styleControl?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.embedded_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEmbeddedDestinationSettings {
  const MedialiveChannelEmbeddedDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.embedded_plus_scte20_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEmbeddedPlusScte20DestinationSettings {
  const MedialiveChannelEmbeddedPlusScte20DestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.rtmp_caption_info_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRtmpCaptionInfoDestinationSettings {
  const MedialiveChannelRtmpCaptionInfoDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.scte20_plus_embedded_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelScte20PlusEmbeddedDestinationSettings {
  const MedialiveChannelScte20PlusEmbeddedDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.scte27_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelScte27DestinationSettings {
  const MedialiveChannelScte27DestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.smpte_tt_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelSmpteTtDestinationSettings {
  const MedialiveChannelSmpteTtDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.teletext_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTeletextDestinationSettings {
  const MedialiveChannelTeletextDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.ttml_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTtmlDestinationSettings {
  const MedialiveChannelTtmlDestinationSettings({required this.styleControl});

  final TfArg<String> styleControl;

  Map<String, Object?> encode() => {'style_control': styleControl.toTfJson()};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.webvtt_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelWebvttDestinationSettings {
  const MedialiveChannelWebvttDestinationSettings({required this.styleControl});

  final TfArg<String> styleControl;

  Map<String, Object?> encode() => {'style_control': styleControl.toTfJson()};
}

/// Typed helper for the `encoder_settings.global_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelGlobalConfiguration {
  const MedialiveChannelGlobalConfiguration({
    this.initialAudioGain,
    this.inputEndAction,
    this.outputLockingMode,
    this.outputTimingSource,
    this.supportLowFramerateInputs,
    this.inputLossBehavior,
  });

  final TfArg<num>? initialAudioGain;

  final TfArg<String>? inputEndAction;

  final TfArg<String>? outputLockingMode;

  final TfArg<String>? outputTimingSource;

  final TfArg<String>? supportLowFramerateInputs;

  final MedialiveChannelInputLossBehavior? inputLossBehavior;

  Map<String, Object?> encode() => {
    'initial_audio_gain': ?initialAudioGain?.toTfJson(),
    'input_end_action': ?inputEndAction?.toTfJson(),
    'output_locking_mode': ?outputLockingMode?.toTfJson(),
    'output_timing_source': ?outputTimingSource?.toTfJson(),
    'support_low_framerate_inputs': ?supportLowFramerateInputs?.toTfJson(),
    'input_loss_behavior': ?inputLossBehavior?.encode(),
  };
}

/// Typed helper for the `encoder_settings.global_configuration.input_loss_behavior` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputLossBehavior {
  const MedialiveChannelInputLossBehavior({
    this.blackFrameMsec,
    this.inputLossImageColor,
    this.inputLossImageType,
    this.repeatFrameMsec,
    this.inputLossImageSlate,
  });

  final TfArg<num>? blackFrameMsec;

  final TfArg<String>? inputLossImageColor;

  final TfArg<String>? inputLossImageType;

  final TfArg<num>? repeatFrameMsec;

  final MedialiveChannelInputLossImageSlate? inputLossImageSlate;

  Map<String, Object?> encode() => {
    'black_frame_msec': ?blackFrameMsec?.toTfJson(),
    'input_loss_image_color': ?inputLossImageColor?.toTfJson(),
    'input_loss_image_type': ?inputLossImageType?.toTfJson(),
    'repeat_frame_msec': ?repeatFrameMsec?.toTfJson(),
    'input_loss_image_slate': ?inputLossImageSlate?.encode(),
  };
}

/// Typed helper for the `encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputLossImageSlate {
  const MedialiveChannelInputLossImageSlate({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMotionGraphicsConfiguration {
  const MedialiveChannelMotionGraphicsConfiguration({
    this.motionGraphicsInsertion,
    required this.motionGraphicsSettings,
  });

  final TfArg<String>? motionGraphicsInsertion;

  final MedialiveChannelMotionGraphicsSettings motionGraphicsSettings;

  Map<String, Object?> encode() => {
    'motion_graphics_insertion': ?motionGraphicsInsertion?.toTfJson(),
    'motion_graphics_settings': motionGraphicsSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration.motion_graphics_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMotionGraphicsSettings {
  const MedialiveChannelMotionGraphicsSettings({
    this.htmlMotionGraphicsSettings,
  });

  final MedialiveChannelHtmlMotionGraphicsSettings? htmlMotionGraphicsSettings;

  Map<String, Object?> encode() => {
    'html_motion_graphics_settings': ?htmlMotionGraphicsSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration.motion_graphics_settings.html_motion_graphics_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHtmlMotionGraphicsSettings {
  const MedialiveChannelHtmlMotionGraphicsSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.nielsen_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelNielsenConfiguration {
  const MedialiveChannelNielsenConfiguration({
    this.distributorId,
    this.nielsenPcmToId3Tagging,
  });

  final TfArg<String>? distributorId;

  final TfArg<String>? nielsenPcmToId3Tagging;

  Map<String, Object?> encode() => {
    'distributor_id': ?distributorId?.toTfJson(),
    'nielsen_pcm_to_id3_tagging': ?nielsenPcmToId3Tagging?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelOutputGroups {
  const MedialiveChannelOutputGroups({
    this.name,
    required this.outputGroupSettings,
    required this.outputs,
  });

  final TfArg<String>? name;

  final MedialiveChannelOutputGroupSettings outputGroupSettings;

  final List<MedialiveChannelOutputs> outputs;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'output_group_settings': outputGroupSettings.encode(),
    'outputs': [for (final e in outputs) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelOutputGroupSettings {
  const MedialiveChannelOutputGroupSettings({
    this.archiveGroupSettings,
    this.frameCaptureGroupSettings,
    this.hlsGroupSettings,
    this.mediaPackageGroupSettings,
    this.msSmoothGroupSettings,
    this.multiplexGroupSettings,
    this.rtmpGroupSettings,
    this.udpGroupSettings,
  });

  final List<MedialiveChannelArchiveGroupSettings>? archiveGroupSettings;

  final MedialiveChannelFrameCaptureGroupSettings? frameCaptureGroupSettings;

  final MedialiveChannelHlsGroupSettings? hlsGroupSettings;

  final MedialiveChannelMediaPackageGroupSettings? mediaPackageGroupSettings;

  final MedialiveChannelMsSmoothGroupSettings? msSmoothGroupSettings;

  final MedialiveChannelMultiplexGroupSettings? multiplexGroupSettings;

  final MedialiveChannelRtmpGroupSettings? rtmpGroupSettings;

  final MedialiveChannelUdpGroupSettings? udpGroupSettings;

  Map<String, Object?> encode() => {
    if (archiveGroupSettings != null)
      'archive_group_settings': [
        for (final e in archiveGroupSettings!) e.encode(),
      ],
    'frame_capture_group_settings': ?frameCaptureGroupSettings?.encode(),
    'hls_group_settings': ?hlsGroupSettings?.encode(),
    'media_package_group_settings': ?mediaPackageGroupSettings?.encode(),
    'ms_smooth_group_settings': ?msSmoothGroupSettings?.encode(),
    'multiplex_group_settings': ?multiplexGroupSettings?.encode(),
    'rtmp_group_settings': ?rtmpGroupSettings?.encode(),
    'udp_group_settings': ?udpGroupSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelArchiveGroupSettings {
  const MedialiveChannelArchiveGroupSettings({
    this.rolloverInterval,
    this.archiveCdnSettings,
    required this.destination,
  });

  final TfArg<num>? rolloverInterval;

  final MedialiveChannelArchiveCdnSettings? archiveCdnSettings;

  final MedialiveChannelDestination destination;

  Map<String, Object?> encode() => {
    'rollover_interval': ?rolloverInterval?.toTfJson(),
    'archive_cdn_settings': ?archiveCdnSettings?.encode(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.archive_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelArchiveCdnSettings {
  const MedialiveChannelArchiveCdnSettings({this.archiveS3Settings});

  final MedialiveChannelArchiveS3Settings? archiveS3Settings;

  Map<String, Object?> encode() => {
    'archive_s3_settings': ?archiveS3Settings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.archive_cdn_settings.archive_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelArchiveS3Settings {
  const MedialiveChannelArchiveS3Settings({this.cannedAcl});

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {'canned_acl': ?cannedAcl?.toTfJson()};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelDestination {
  const MedialiveChannelDestination({required this.destinationRefId});

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureGroupSettings {
  const MedialiveChannelFrameCaptureGroupSettings({
    required this.destination,
    this.frameCaptureCdnSettings,
  });

  final MedialiveChannelDestination destination;

  final MedialiveChannelFrameCaptureCdnSettings? frameCaptureCdnSettings;

  Map<String, Object?> encode() => {
    'destination': destination.encode(),
    'frame_capture_cdn_settings': ?frameCaptureCdnSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings.frame_capture_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureCdnSettings {
  const MedialiveChannelFrameCaptureCdnSettings({this.frameCaptureS3Settings});

  final MedialiveChannelFrameCaptureS3Settings? frameCaptureS3Settings;

  Map<String, Object?> encode() => {
    'frame_capture_s3_settings': ?frameCaptureS3Settings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings.frame_capture_cdn_settings.frame_capture_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureS3Settings {
  const MedialiveChannelFrameCaptureS3Settings({this.cannedAcl});

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {'canned_acl': ?cannedAcl?.toTfJson()};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsGroupSettings {
  const MedialiveChannelHlsGroupSettings({
    this.adMarkers,
    this.baseUrlContent,
    this.baseUrlContent1,
    this.baseUrlManifest,
    this.baseUrlManifest1,
    this.captionLanguageSetting,
    this.clientCache,
    this.codecSpecification,
    this.constantIv,
    this.directoryStructure,
    this.discontinuityTags,
    this.encryptionType,
    this.hlsId3SegmentTagging,
    this.iframeOnlyPlaylists,
    this.incompleteSegmentBehavior,
    this.indexNSegments,
    this.inputLossAction,
    this.ivInManifest,
    this.ivSource,
    this.keepSegments,
    this.keyFormat,
    this.keyFormatVersions,
    this.manifestCompression,
    this.manifestDurationFormat,
    this.minSegmentLength,
    this.mode,
    this.outputSelection,
    this.programDateTime,
    this.programDateTimeClock,
    this.programDateTimePeriod,
    this.redundantManifest,
    this.segmentLength,
    this.segmentsPerSubdirectory,
    this.streamInfResolution,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
    this.timestampDeltaMilliseconds,
    this.tsFileMode,
    this.captionLanguageMappings,
    required this.destination,
    this.hlsCdnSettings,
    this.keyProviderSettings,
  });

  final TfArg<List<String>>? adMarkers;

  final TfArg<String>? baseUrlContent;

  final TfArg<String>? baseUrlContent1;

  final TfArg<String>? baseUrlManifest;

  final TfArg<String>? baseUrlManifest1;

  final TfArg<String>? captionLanguageSetting;

  final TfArg<String>? clientCache;

  final TfArg<String>? codecSpecification;

  final TfArg<String>? constantIv;

  final TfArg<String>? directoryStructure;

  final TfArg<String>? discontinuityTags;

  final TfArg<String>? encryptionType;

  final TfArg<String>? hlsId3SegmentTagging;

  final TfArg<String>? iframeOnlyPlaylists;

  final TfArg<String>? incompleteSegmentBehavior;

  final TfArg<num>? indexNSegments;

  final TfArg<String>? inputLossAction;

  final TfArg<String>? ivInManifest;

  final TfArg<String>? ivSource;

  final TfArg<num>? keepSegments;

  final TfArg<String>? keyFormat;

  final TfArg<String>? keyFormatVersions;

  final TfArg<String>? manifestCompression;

  final TfArg<String>? manifestDurationFormat;

  final TfArg<num>? minSegmentLength;

  final TfArg<String>? mode;

  final TfArg<String>? outputSelection;

  final TfArg<String>? programDateTime;

  final TfArg<String>? programDateTimeClock;

  final TfArg<num>? programDateTimePeriod;

  final TfArg<String>? redundantManifest;

  final TfArg<num>? segmentLength;

  final TfArg<num>? segmentsPerSubdirectory;

  final TfArg<String>? streamInfResolution;

  final TfArg<String>? timedMetadataId3Frame;

  final TfArg<num>? timedMetadataId3Period;

  final TfArg<num>? timestampDeltaMilliseconds;

  final TfArg<String>? tsFileMode;

  final List<MedialiveChannelCaptionLanguageMappings>? captionLanguageMappings;

  final MedialiveChannelDestination destination;

  final List<MedialiveChannelHlsCdnSettings>? hlsCdnSettings;

  final MedialiveChannelKeyProviderSettings? keyProviderSettings;

  Map<String, Object?> encode() => {
    'ad_markers': ?adMarkers?.toTfJson(),
    'base_url_content': ?baseUrlContent?.toTfJson(),
    'base_url_content1': ?baseUrlContent1?.toTfJson(),
    'base_url_manifest': ?baseUrlManifest?.toTfJson(),
    'base_url_manifest1': ?baseUrlManifest1?.toTfJson(),
    'caption_language_setting': ?captionLanguageSetting?.toTfJson(),
    'client_cache': ?clientCache?.toTfJson(),
    'codec_specification': ?codecSpecification?.toTfJson(),
    'constant_iv': ?constantIv?.toTfJson(),
    'directory_structure': ?directoryStructure?.toTfJson(),
    'discontinuity_tags': ?discontinuityTags?.toTfJson(),
    'encryption_type': ?encryptionType?.toTfJson(),
    'hls_id3_segment_tagging': ?hlsId3SegmentTagging?.toTfJson(),
    'iframe_only_playlists': ?iframeOnlyPlaylists?.toTfJson(),
    'incomplete_segment_behavior': ?incompleteSegmentBehavior?.toTfJson(),
    'index_n_segments': ?indexNSegments?.toTfJson(),
    'input_loss_action': ?inputLossAction?.toTfJson(),
    'iv_in_manifest': ?ivInManifest?.toTfJson(),
    'iv_source': ?ivSource?.toTfJson(),
    'keep_segments': ?keepSegments?.toTfJson(),
    'key_format': ?keyFormat?.toTfJson(),
    'key_format_versions': ?keyFormatVersions?.toTfJson(),
    'manifest_compression': ?manifestCompression?.toTfJson(),
    'manifest_duration_format': ?manifestDurationFormat?.toTfJson(),
    'min_segment_length': ?minSegmentLength?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'output_selection': ?outputSelection?.toTfJson(),
    'program_date_time': ?programDateTime?.toTfJson(),
    'program_date_time_clock': ?programDateTimeClock?.toTfJson(),
    'program_date_time_period': ?programDateTimePeriod?.toTfJson(),
    'redundant_manifest': ?redundantManifest?.toTfJson(),
    'segment_length': ?segmentLength?.toTfJson(),
    'segments_per_subdirectory': ?segmentsPerSubdirectory?.toTfJson(),
    'stream_inf_resolution': ?streamInfResolution?.toTfJson(),
    'timed_metadata_id3_frame': ?timedMetadataId3Frame?.toTfJson(),
    'timed_metadata_id3_period': ?timedMetadataId3Period?.toTfJson(),
    'timestamp_delta_milliseconds': ?timestampDeltaMilliseconds?.toTfJson(),
    'ts_file_mode': ?tsFileMode?.toTfJson(),
    if (captionLanguageMappings != null)
      'caption_language_mappings': [
        for (final e in captionLanguageMappings!) e.encode(),
      ],
    'destination': destination.encode(),
    if (hlsCdnSettings != null)
      'hls_cdn_settings': [for (final e in hlsCdnSettings!) e.encode()],
    'key_provider_settings': ?keyProviderSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.caption_language_mappings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCaptionLanguageMappings {
  const MedialiveChannelCaptionLanguageMappings({
    required this.captionChannel,
    required this.languageCode,
    required this.languageDescription,
  });

  final TfArg<num> captionChannel;

  final TfArg<String> languageCode;

  final TfArg<String> languageDescription;

  Map<String, Object?> encode() => {
    'caption_channel': captionChannel.toTfJson(),
    'language_code': languageCode.toTfJson(),
    'language_description': languageDescription.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsCdnSettings {
  const MedialiveChannelHlsCdnSettings({
    this.hlsAkamaiSettings,
    this.hlsBasicPutSettings,
    this.hlsMediaStoreSettings,
    this.hlsS3Settings,
    this.hlsWebdavSettings,
  });

  final MedialiveChannelHlsAkamaiSettings? hlsAkamaiSettings;

  final MedialiveChannelHlsBasicPutSettings? hlsBasicPutSettings;

  final MedialiveChannelHlsMediaStoreSettings? hlsMediaStoreSettings;

  final MedialiveChannelHlsS3Settings? hlsS3Settings;

  final MedialiveChannelHlsWebdavSettings? hlsWebdavSettings;

  Map<String, Object?> encode() => {
    'hls_akamai_settings': ?hlsAkamaiSettings?.encode(),
    'hls_basic_put_settings': ?hlsBasicPutSettings?.encode(),
    'hls_media_store_settings': ?hlsMediaStoreSettings?.encode(),
    'hls_s3_settings': ?hlsS3Settings?.encode(),
    'hls_webdav_settings': ?hlsWebdavSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsAkamaiSettings {
  const MedialiveChannelHlsAkamaiSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.httpTransferMode,
    this.numRetries,
    this.restartDelay,
    this.salt,
    this.token,
  });

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? filecacheDuration;

  final TfArg<String>? httpTransferMode;

  final TfArg<num>? numRetries;

  final TfArg<num>? restartDelay;

  final TfArg<String>? salt;

  final TfArg<String>? token;

  Map<String, Object?> encode() => {
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'filecache_duration': ?filecacheDuration?.toTfJson(),
    'http_transfer_mode': ?httpTransferMode?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
    'salt': ?salt?.toTfJson(),
    'token': ?token?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsBasicPutSettings {
  const MedialiveChannelHlsBasicPutSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.numRetries,
    this.restartDelay,
  });

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? filecacheDuration;

  final TfArg<num>? numRetries;

  final TfArg<num>? restartDelay;

  Map<String, Object?> encode() => {
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'filecache_duration': ?filecacheDuration?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsMediaStoreSettings {
  const MedialiveChannelHlsMediaStoreSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.mediaStoreStorageClass,
    this.numRetries,
    this.restartDelay,
  });

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? filecacheDuration;

  final TfArg<String>? mediaStoreStorageClass;

  final TfArg<num>? numRetries;

  final TfArg<num>? restartDelay;

  Map<String, Object?> encode() => {
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'filecache_duration': ?filecacheDuration?.toTfJson(),
    'media_store_storage_class': ?mediaStoreStorageClass?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsS3Settings {
  const MedialiveChannelHlsS3Settings({this.cannedAcl});

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {'canned_acl': ?cannedAcl?.toTfJson()};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsWebdavSettings {
  const MedialiveChannelHlsWebdavSettings({
    this.connectionRetryInterval,
    this.filecacheDuration,
    this.httpTransferMode,
    this.numRetries,
    this.restartDelay,
  });

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? filecacheDuration;

  final TfArg<String>? httpTransferMode;

  final TfArg<num>? numRetries;

  final TfArg<num>? restartDelay;

  Map<String, Object?> encode() => {
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'filecache_duration': ?filecacheDuration?.toTfJson(),
    'http_transfer_mode': ?httpTransferMode?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelKeyProviderSettings {
  const MedialiveChannelKeyProviderSettings({this.staticKeySettings});

  final List<MedialiveChannelStaticKeySettings>? staticKeySettings;

  Map<String, Object?> encode() => {
    if (staticKeySettings != null)
      'static_key_settings': [for (final e in staticKeySettings!) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings.static_key_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelStaticKeySettings {
  const MedialiveChannelStaticKeySettings({
    required this.staticKeyValue,
    this.keyProviderServer,
  });

  final TfArg<String> staticKeyValue;

  final MedialiveChannelKeyProviderServer? keyProviderServer;

  Map<String, Object?> encode() => {
    'static_key_value': staticKeyValue.toTfJson(),
    'key_provider_server': ?keyProviderServer?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelKeyProviderServer {
  const MedialiveChannelKeyProviderServer({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.media_package_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMediaPackageGroupSettings {
  const MedialiveChannelMediaPackageGroupSettings({required this.destination});

  final MedialiveChannelDestination destination;

  Map<String, Object?> encode() => {'destination': destination.encode()};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.ms_smooth_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMsSmoothGroupSettings {
  const MedialiveChannelMsSmoothGroupSettings({
    this.acquisitionPointId,
    this.audioOnlyTimecodeControl,
    this.certificateMode,
    this.connectionRetryInterval,
    this.eventId,
    this.eventIdMode,
    this.eventStopBehavior,
    this.filecacheDuration,
    this.fragmentLength,
    this.inputLossAction,
    this.numRetries,
    this.restartDelay,
    this.segmentationMode,
    this.sendDelayMs,
    this.sparseTrackType,
    this.streamManifestBehavior,
    this.timestampOffset,
    this.timestampOffsetMode,
    required this.destination,
  });

  final TfArg<String>? acquisitionPointId;

  final TfArg<String>? audioOnlyTimecodeControl;

  final TfArg<String>? certificateMode;

  final TfArg<num>? connectionRetryInterval;

  final TfArg<String>? eventId;

  final TfArg<String>? eventIdMode;

  final TfArg<String>? eventStopBehavior;

  final TfArg<num>? filecacheDuration;

  final TfArg<num>? fragmentLength;

  final TfArg<String>? inputLossAction;

  final TfArg<num>? numRetries;

  final TfArg<num>? restartDelay;

  final TfArg<String>? segmentationMode;

  final TfArg<num>? sendDelayMs;

  final TfArg<String>? sparseTrackType;

  final TfArg<String>? streamManifestBehavior;

  final TfArg<String>? timestampOffset;

  final TfArg<String>? timestampOffsetMode;

  final MedialiveChannelDestination destination;

  Map<String, Object?> encode() => {
    'acquisition_point_id': ?acquisitionPointId?.toTfJson(),
    'audio_only_timecode_control': ?audioOnlyTimecodeControl?.toTfJson(),
    'certificate_mode': ?certificateMode?.toTfJson(),
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'event_id': ?eventId?.toTfJson(),
    'event_id_mode': ?eventIdMode?.toTfJson(),
    'event_stop_behavior': ?eventStopBehavior?.toTfJson(),
    'filecache_duration': ?filecacheDuration?.toTfJson(),
    'fragment_length': ?fragmentLength?.toTfJson(),
    'input_loss_action': ?inputLossAction?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
    'segmentation_mode': ?segmentationMode?.toTfJson(),
    'send_delay_ms': ?sendDelayMs?.toTfJson(),
    'sparse_track_type': ?sparseTrackType?.toTfJson(),
    'stream_manifest_behavior': ?streamManifestBehavior?.toTfJson(),
    'timestamp_offset': ?timestampOffset?.toTfJson(),
    'timestamp_offset_mode': ?timestampOffsetMode?.toTfJson(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.multiplex_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMultiplexGroupSettings {
  const MedialiveChannelMultiplexGroupSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.rtmp_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRtmpGroupSettings {
  const MedialiveChannelRtmpGroupSettings({
    this.adMarkers,
    this.authenticationScheme,
    this.cacheFullBehavior,
    this.cacheLength,
    this.captionData,
    this.inputLossAction,
    this.restartDelay,
  });

  final TfArg<List<String>>? adMarkers;

  final TfArg<String>? authenticationScheme;

  final TfArg<String>? cacheFullBehavior;

  final TfArg<num>? cacheLength;

  final TfArg<String>? captionData;

  final TfArg<String>? inputLossAction;

  final TfArg<num>? restartDelay;

  Map<String, Object?> encode() => {
    'ad_markers': ?adMarkers?.toTfJson(),
    'authentication_scheme': ?authenticationScheme?.toTfJson(),
    'cache_full_behavior': ?cacheFullBehavior?.toTfJson(),
    'cache_length': ?cacheLength?.toTfJson(),
    'caption_data': ?captionData?.toTfJson(),
    'input_loss_action': ?inputLossAction?.toTfJson(),
    'restart_delay': ?restartDelay?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.udp_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelUdpGroupSettings {
  const MedialiveChannelUdpGroupSettings({
    this.inputLossAction,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
  });

  final TfArg<String>? inputLossAction;

  final TfArg<String>? timedMetadataId3Frame;

  final TfArg<num>? timedMetadataId3Period;

  Map<String, Object?> encode() => {
    'input_loss_action': ?inputLossAction?.toTfJson(),
    'timed_metadata_id3_frame': ?timedMetadataId3Frame?.toTfJson(),
    'timed_metadata_id3_period': ?timedMetadataId3Period?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelOutputs {
  const MedialiveChannelOutputs({
    this.audioDescriptionNames,
    this.captionDescriptionNames,
    this.outputName,
    this.videoDescriptionName,
    required this.outputSettings,
  });

  final TfArg<List<String>>? audioDescriptionNames;

  final TfArg<List<String>>? captionDescriptionNames;

  final TfArg<String>? outputName;

  final TfArg<String>? videoDescriptionName;

  final MedialiveChannelOutputSettings outputSettings;

  Map<String, Object?> encode() => {
    'audio_description_names': ?audioDescriptionNames?.toTfJson(),
    'caption_description_names': ?captionDescriptionNames?.toTfJson(),
    'output_name': ?outputName?.toTfJson(),
    'video_description_name': ?videoDescriptionName?.toTfJson(),
    'output_settings': outputSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelOutputSettings {
  const MedialiveChannelOutputSettings({
    this.archiveOutputSettings,
    this.frameCaptureOutputSettings,
    this.hlsOutputSettings,
    this.mediaPackageOutputSettings,
    this.msSmoothOutputSettings,
    this.multiplexOutputSettings,
    this.rtmpOutputSettings,
    this.udpOutputSettings,
  });

  final MedialiveChannelArchiveOutputSettings? archiveOutputSettings;

  final MedialiveChannelFrameCaptureOutputSettings? frameCaptureOutputSettings;

  final MedialiveChannelHlsOutputSettings? hlsOutputSettings;

  final MedialiveChannelMediaPackageOutputSettings? mediaPackageOutputSettings;

  final MedialiveChannelMsSmoothOutputSettings? msSmoothOutputSettings;

  final MedialiveChannelMultiplexOutputSettings? multiplexOutputSettings;

  final MedialiveChannelRtmpOutputSettings? rtmpOutputSettings;

  final MedialiveChannelUdpOutputSettings? udpOutputSettings;

  Map<String, Object?> encode() => {
    'archive_output_settings': ?archiveOutputSettings?.encode(),
    'frame_capture_output_settings': ?frameCaptureOutputSettings?.encode(),
    'hls_output_settings': ?hlsOutputSettings?.encode(),
    'media_package_output_settings': ?mediaPackageOutputSettings?.encode(),
    'ms_smooth_output_settings': ?msSmoothOutputSettings?.encode(),
    'multiplex_output_settings': ?multiplexOutputSettings?.encode(),
    'rtmp_output_settings': ?rtmpOutputSettings?.encode(),
    'udp_output_settings': ?udpOutputSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelArchiveOutputSettings {
  const MedialiveChannelArchiveOutputSettings({
    this.extension,
    this.nameModifier,
    this.containerSettings,
  });

  final TfArg<String>? extension;

  final TfArg<String>? nameModifier;

  final MedialiveChannelArchiveOutputSettingsContainerSettings?
  containerSettings;

  Map<String, Object?> encode() => {
    'extension': ?extension?.toTfJson(),
    'name_modifier': ?nameModifier?.toTfJson(),
    'container_settings': ?containerSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelArchiveOutputSettingsContainerSettings {
  const MedialiveChannelArchiveOutputSettingsContainerSettings({
    this.m2tsSettings,
    this.rawSettings,
  });

  final MedialiveChannelM2tsSettings? m2tsSettings;

  final MedialiveChannelRawSettings? rawSettings;

  Map<String, Object?> encode() => {
    'm2ts_settings': ?m2tsSettings?.encode(),
    'raw_settings': ?rawSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelM2tsSettings {
  const MedialiveChannelM2tsSettings({
    this.absentInputAudioBehavior,
    this.arib,
    this.aribCaptionsPid,
    this.aribCaptionsPidControl,
    this.audioBufferModel,
    this.audioFramesPerPes,
    this.audioPids,
    this.audioStreamType,
    this.bitrate,
    this.bufferModel,
    this.ccDescriptor,
    this.dvbSubPids,
    this.dvbTeletextPid,
    this.ebif,
    this.ebpAudioInterval,
    this.ebpLookaheadMs,
    this.ebpPlacement,
    this.ecmPid,
    this.esRateInPes,
    this.etvPlatformPid,
    this.etvSignalPid,
    this.fragmentTime,
    this.klv,
    this.klvDataPids,
    this.nielsenId3Behavior,
    this.nullPacketBitrate,
    this.patInterval,
    this.pcrControl,
    this.pcrPeriod,
    this.pcrPid,
    this.pmtInterval,
    this.pmtPid,
    this.programNum,
    this.rateMode,
    this.scte27Pids,
    this.scte35Control,
    this.scte35Pid,
    this.segmentationMarkers,
    this.segmentationStyle,
    this.segmentationTime,
    this.timedMetadataBehavior,
    this.timedMetadataPid,
    this.transportStreamId,
    this.videoPid,
    this.dvbNitSettings,
    this.dvbSdtSettings,
    this.dvbTdtSettings,
  });

  final TfArg<String>? absentInputAudioBehavior;

  final TfArg<String>? arib;

  final TfArg<String>? aribCaptionsPid;

  final TfArg<String>? aribCaptionsPidControl;

  final TfArg<String>? audioBufferModel;

  final TfArg<num>? audioFramesPerPes;

  final TfArg<String>? audioPids;

  final TfArg<String>? audioStreamType;

  final TfArg<num>? bitrate;

  final TfArg<String>? bufferModel;

  final TfArg<String>? ccDescriptor;

  final TfArg<String>? dvbSubPids;

  final TfArg<String>? dvbTeletextPid;

  final TfArg<String>? ebif;

  final TfArg<String>? ebpAudioInterval;

  final TfArg<num>? ebpLookaheadMs;

  final TfArg<String>? ebpPlacement;

  final TfArg<String>? ecmPid;

  final TfArg<String>? esRateInPes;

  final TfArg<String>? etvPlatformPid;

  final TfArg<String>? etvSignalPid;

  final TfArg<num>? fragmentTime;

  final TfArg<String>? klv;

  final TfArg<String>? klvDataPids;

  final TfArg<String>? nielsenId3Behavior;

  final TfArg<num>? nullPacketBitrate;

  final TfArg<num>? patInterval;

  final TfArg<String>? pcrControl;

  final TfArg<num>? pcrPeriod;

  final TfArg<String>? pcrPid;

  final TfArg<num>? pmtInterval;

  final TfArg<String>? pmtPid;

  final TfArg<num>? programNum;

  final TfArg<String>? rateMode;

  final TfArg<String>? scte27Pids;

  final TfArg<String>? scte35Control;

  final TfArg<String>? scte35Pid;

  final TfArg<String>? segmentationMarkers;

  final TfArg<String>? segmentationStyle;

  final TfArg<num>? segmentationTime;

  final TfArg<String>? timedMetadataBehavior;

  final TfArg<String>? timedMetadataPid;

  final TfArg<num>? transportStreamId;

  final TfArg<String>? videoPid;

  final MedialiveChannelDvbNitSettings? dvbNitSettings;

  final MedialiveChannelDvbSdtSettings? dvbSdtSettings;

  final MedialiveChannelDvbTdtSettings? dvbTdtSettings;

  Map<String, Object?> encode() => {
    'absent_input_audio_behavior': ?absentInputAudioBehavior?.toTfJson(),
    'arib': ?arib?.toTfJson(),
    'arib_captions_pid': ?aribCaptionsPid?.toTfJson(),
    'arib_captions_pid_control': ?aribCaptionsPidControl?.toTfJson(),
    'audio_buffer_model': ?audioBufferModel?.toTfJson(),
    'audio_frames_per_pes': ?audioFramesPerPes?.toTfJson(),
    'audio_pids': ?audioPids?.toTfJson(),
    'audio_stream_type': ?audioStreamType?.toTfJson(),
    'bitrate': ?bitrate?.toTfJson(),
    'buffer_model': ?bufferModel?.toTfJson(),
    'cc_descriptor': ?ccDescriptor?.toTfJson(),
    'dvb_sub_pids': ?dvbSubPids?.toTfJson(),
    'dvb_teletext_pid': ?dvbTeletextPid?.toTfJson(),
    'ebif': ?ebif?.toTfJson(),
    'ebp_audio_interval': ?ebpAudioInterval?.toTfJson(),
    'ebp_lookahead_ms': ?ebpLookaheadMs?.toTfJson(),
    'ebp_placement': ?ebpPlacement?.toTfJson(),
    'ecm_pid': ?ecmPid?.toTfJson(),
    'es_rate_in_pes': ?esRateInPes?.toTfJson(),
    'etv_platform_pid': ?etvPlatformPid?.toTfJson(),
    'etv_signal_pid': ?etvSignalPid?.toTfJson(),
    'fragment_time': ?fragmentTime?.toTfJson(),
    'klv': ?klv?.toTfJson(),
    'klv_data_pids': ?klvDataPids?.toTfJson(),
    'nielsen_id3_behavior': ?nielsenId3Behavior?.toTfJson(),
    'null_packet_bitrate': ?nullPacketBitrate?.toTfJson(),
    'pat_interval': ?patInterval?.toTfJson(),
    'pcr_control': ?pcrControl?.toTfJson(),
    'pcr_period': ?pcrPeriod?.toTfJson(),
    'pcr_pid': ?pcrPid?.toTfJson(),
    'pmt_interval': ?pmtInterval?.toTfJson(),
    'pmt_pid': ?pmtPid?.toTfJson(),
    'program_num': ?programNum?.toTfJson(),
    'rate_mode': ?rateMode?.toTfJson(),
    'scte27_pids': ?scte27Pids?.toTfJson(),
    'scte35_control': ?scte35Control?.toTfJson(),
    'scte35_pid': ?scte35Pid?.toTfJson(),
    'segmentation_markers': ?segmentationMarkers?.toTfJson(),
    'segmentation_style': ?segmentationStyle?.toTfJson(),
    'segmentation_time': ?segmentationTime?.toTfJson(),
    'timed_metadata_behavior': ?timedMetadataBehavior?.toTfJson(),
    'timed_metadata_pid': ?timedMetadataPid?.toTfJson(),
    'transport_stream_id': ?transportStreamId?.toTfJson(),
    'video_pid': ?videoPid?.toTfJson(),
    'dvb_nit_settings': ?dvbNitSettings?.encode(),
    'dvb_sdt_settings': ?dvbSdtSettings?.encode(),
    'dvb_tdt_settings': ?dvbTdtSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelDvbNitSettings {
  const MedialiveChannelDvbNitSettings({
    required this.networkId,
    required this.networkName,
    this.repInterval,
  });

  final TfArg<num> networkId;

  final TfArg<String> networkName;

  final TfArg<num>? repInterval;

  Map<String, Object?> encode() => {
    'network_id': networkId.toTfJson(),
    'network_name': networkName.toTfJson(),
    'rep_interval': ?repInterval?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelDvbSdtSettings {
  const MedialiveChannelDvbSdtSettings({
    this.outputSdt,
    this.repInterval,
    this.serviceName,
    this.serviceProviderName,
  });

  final TfArg<String>? outputSdt;

  final TfArg<num>? repInterval;

  final TfArg<String>? serviceName;

  final TfArg<String>? serviceProviderName;

  Map<String, Object?> encode() => {
    'output_sdt': ?outputSdt?.toTfJson(),
    'rep_interval': ?repInterval?.toTfJson(),
    'service_name': ?serviceName?.toTfJson(),
    'service_provider_name': ?serviceProviderName?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelDvbTdtSettings {
  const MedialiveChannelDvbTdtSettings({this.repInterval});

  final TfArg<num>? repInterval;

  Map<String, Object?> encode() => {'rep_interval': ?repInterval?.toTfJson()};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.raw_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRawSettings {
  const MedialiveChannelRawSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.frame_capture_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureOutputSettings {
  const MedialiveChannelFrameCaptureOutputSettings({this.nameModifier});

  final TfArg<String>? nameModifier;

  Map<String, Object?> encode() => {'name_modifier': ?nameModifier?.toTfJson()};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsOutputSettings {
  const MedialiveChannelHlsOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
    this.segmentModifier,
    required this.hlsSettings,
  });

  final TfArg<String>? h265PackagingType;

  final TfArg<String>? nameModifier;

  final TfArg<String>? segmentModifier;

  final MedialiveChannelHlsSettings hlsSettings;

  Map<String, Object?> encode() => {
    'h265_packaging_type': ?h265PackagingType?.toTfJson(),
    'name_modifier': ?nameModifier?.toTfJson(),
    'segment_modifier': ?segmentModifier?.toTfJson(),
    'hls_settings': hlsSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsSettings {
  const MedialiveChannelHlsSettings({
    this.audioOnlyHlsSettings,
    this.fmp4HlsSettings,
    this.frameCaptureHlsSettings,
    this.standardHlsSettings,
  });

  final MedialiveChannelAudioOnlyHlsSettings? audioOnlyHlsSettings;

  final MedialiveChannelFmp4HlsSettings? fmp4HlsSettings;

  final MedialiveChannelFrameCaptureHlsSettings? frameCaptureHlsSettings;

  final MedialiveChannelStandardHlsSettings? standardHlsSettings;

  Map<String, Object?> encode() => {
    'audio_only_hls_settings': ?audioOnlyHlsSettings?.encode(),
    'fmp4_hls_settings': ?fmp4HlsSettings?.encode(),
    'frame_capture_hls_settings': ?frameCaptureHlsSettings?.encode(),
    'standard_hls_settings': ?standardHlsSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.audio_only_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioOnlyHlsSettings {
  const MedialiveChannelAudioOnlyHlsSettings({
    this.audioGroupId,
    this.audioTrackType,
    this.segmentType,
    this.audioOnlyImage,
  });

  final TfArg<String>? audioGroupId;

  final TfArg<String>? audioTrackType;

  final TfArg<String>? segmentType;

  final MedialiveChannelAudioOnlyImage? audioOnlyImage;

  Map<String, Object?> encode() => {
    'audio_group_id': ?audioGroupId?.toTfJson(),
    'audio_track_type': ?audioTrackType?.toTfJson(),
    'segment_type': ?segmentType?.toTfJson(),
    'audio_only_image': ?audioOnlyImage?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioOnlyImage {
  const MedialiveChannelAudioOnlyImage({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'password_param': ?passwordParam?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.fmp4_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFmp4HlsSettings {
  const MedialiveChannelFmp4HlsSettings({
    this.audioRenditionSets,
    this.nielsenId3Behavior,
    this.timedMetadataBehavior,
  });

  final TfArg<String>? audioRenditionSets;

  final TfArg<String>? nielsenId3Behavior;

  final TfArg<String>? timedMetadataBehavior;

  Map<String, Object?> encode() => {
    'audio_rendition_sets': ?audioRenditionSets?.toTfJson(),
    'nielsen_id3_behavior': ?nielsenId3Behavior?.toTfJson(),
    'timed_metadata_behavior': ?timedMetadataBehavior?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.frame_capture_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureHlsSettings {
  const MedialiveChannelFrameCaptureHlsSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.standard_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelStandardHlsSettings {
  const MedialiveChannelStandardHlsSettings({
    this.audioRenditionSets,
    required this.m3u8Settings,
  });

  final TfArg<String>? audioRenditionSets;

  final MedialiveChannelM3u8Settings m3u8Settings;

  Map<String, Object?> encode() => {
    'audio_rendition_sets': ?audioRenditionSets?.toTfJson(),
    'm3u8_settings': m3u8Settings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u8_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelM3u8Settings {
  const MedialiveChannelM3u8Settings({
    this.audioFramesPerPes,
    this.audioPids,
    this.ecmPid,
    this.nielsenId3Behavior,
    this.patInterval,
    this.pcrControl,
    this.pcrPeriod,
    this.pcrPid,
    this.pmtInterval,
    this.pmtPid,
    this.programNum,
    this.scte35Behavior,
    this.scte35Pid,
    this.timedMetadataBehavior,
    this.timedMetadataPid,
    this.transportStreamId,
    this.videoPid,
  });

  final TfArg<num>? audioFramesPerPes;

  final TfArg<String>? audioPids;

  final TfArg<String>? ecmPid;

  final TfArg<String>? nielsenId3Behavior;

  final TfArg<num>? patInterval;

  final TfArg<String>? pcrControl;

  final TfArg<num>? pcrPeriod;

  final TfArg<String>? pcrPid;

  final TfArg<num>? pmtInterval;

  final TfArg<String>? pmtPid;

  final TfArg<num>? programNum;

  final TfArg<String>? scte35Behavior;

  final TfArg<String>? scte35Pid;

  final TfArg<String>? timedMetadataBehavior;

  final TfArg<String>? timedMetadataPid;

  final TfArg<num>? transportStreamId;

  final TfArg<String>? videoPid;

  Map<String, Object?> encode() => {
    'audio_frames_per_pes': ?audioFramesPerPes?.toTfJson(),
    'audio_pids': ?audioPids?.toTfJson(),
    'ecm_pid': ?ecmPid?.toTfJson(),
    'nielsen_id3_behavior': ?nielsenId3Behavior?.toTfJson(),
    'pat_interval': ?patInterval?.toTfJson(),
    'pcr_control': ?pcrControl?.toTfJson(),
    'pcr_period': ?pcrPeriod?.toTfJson(),
    'pcr_pid': ?pcrPid?.toTfJson(),
    'pmt_interval': ?pmtInterval?.toTfJson(),
    'pmt_pid': ?pmtPid?.toTfJson(),
    'program_num': ?programNum?.toTfJson(),
    'scte35_behavior': ?scte35Behavior?.toTfJson(),
    'scte35_pid': ?scte35Pid?.toTfJson(),
    'timed_metadata_behavior': ?timedMetadataBehavior?.toTfJson(),
    'timed_metadata_pid': ?timedMetadataPid?.toTfJson(),
    'transport_stream_id': ?transportStreamId?.toTfJson(),
    'video_pid': ?videoPid?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.media_package_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMediaPackageOutputSettings {
  const MedialiveChannelMediaPackageOutputSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.ms_smooth_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMsSmoothOutputSettings {
  const MedialiveChannelMsSmoothOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
  });

  final TfArg<String>? h265PackagingType;

  final TfArg<String>? nameModifier;

  Map<String, Object?> encode() => {
    'h265_packaging_type': ?h265PackagingType?.toTfJson(),
    'name_modifier': ?nameModifier?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.multiplex_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMultiplexOutputSettings {
  const MedialiveChannelMultiplexOutputSettings({required this.destination});

  final MedialiveChannelDestination destination;

  Map<String, Object?> encode() => {'destination': destination.encode()};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.rtmp_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRtmpOutputSettings {
  const MedialiveChannelRtmpOutputSettings({
    this.certificateMode,
    this.connectionRetryInterval,
    this.numRetries,
    required this.destination,
  });

  final TfArg<String>? certificateMode;

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? numRetries;

  final MedialiveChannelDestination destination;

  Map<String, Object?> encode() => {
    'certificate_mode': ?certificateMode?.toTfJson(),
    'connection_retry_interval': ?connectionRetryInterval?.toTfJson(),
    'num_retries': ?numRetries?.toTfJson(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelUdpOutputSettings {
  const MedialiveChannelUdpOutputSettings({
    this.bufferMsec,
    required this.containerSettings,
    required this.destination,
    this.fecOutputSettings,
  });

  final TfArg<num>? bufferMsec;

  final MedialiveChannelUdpOutputSettingsContainerSettings containerSettings;

  final MedialiveChannelDestination destination;

  final MedialiveChannelFecOutputSettings? fecOutputSettings;

  Map<String, Object?> encode() => {
    'buffer_msec': ?bufferMsec?.toTfJson(),
    'container_settings': containerSettings.encode(),
    'destination': destination.encode(),
    'fec_output_settings': ?fecOutputSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelUdpOutputSettingsContainerSettings {
  const MedialiveChannelUdpOutputSettingsContainerSettings({this.m2tsSettings});

  final MedialiveChannelM2tsSettings? m2tsSettings;

  Map<String, Object?> encode() => {'m2ts_settings': ?m2tsSettings?.encode()};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.fec_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFecOutputSettings {
  const MedialiveChannelFecOutputSettings({
    this.columnDepth,
    this.includeFec,
    this.rowLength,
  });

  final TfArg<num>? columnDepth;

  final TfArg<String>? includeFec;

  final TfArg<num>? rowLength;

  Map<String, Object?> encode() => {
    'column_depth': ?columnDepth?.toTfJson(),
    'include_fec': ?includeFec?.toTfJson(),
    'row_length': ?rowLength?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.timecode_config` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTimecodeConfig {
  const MedialiveChannelTimecodeConfig({
    required this.source,
    this.syncThreshold,
  });

  final TfArg<String> source;

  final TfArg<num>? syncThreshold;

  Map<String, Object?> encode() => {
    'source': source.toTfJson(),
    'sync_threshold': ?syncThreshold?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelVideoDescriptions {
  const MedialiveChannelVideoDescriptions({
    this.height,
    required this.name,
    this.respondToAfd,
    this.scalingBehavior,
    this.sharpness,
    this.width,
    this.codecSettings,
  });

  final TfArg<num>? height;

  final TfArg<String> name;

  final TfArg<String>? respondToAfd;

  final TfArg<String>? scalingBehavior;

  final TfArg<num>? sharpness;

  final TfArg<num>? width;

  final MedialiveChannelVideoDescriptionsCodecSettings? codecSettings;

  Map<String, Object?> encode() => {
    'height': ?height?.toTfJson(),
    'name': name.toTfJson(),
    'respond_to_afd': ?respondToAfd?.toTfJson(),
    'scaling_behavior': ?scalingBehavior?.toTfJson(),
    'sharpness': ?sharpness?.toTfJson(),
    'width': ?width?.toTfJson(),
    'codec_settings': ?codecSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelVideoDescriptionsCodecSettings {
  const MedialiveChannelVideoDescriptionsCodecSettings({
    this.frameCaptureSettings,
    this.h264Settings,
    this.h265Settings,
  });

  final MedialiveChannelFrameCaptureSettings? frameCaptureSettings;

  final MedialiveChannelH264Settings? h264Settings;

  final MedialiveChannelH265Settings? h265Settings;

  Map<String, Object?> encode() => {
    'frame_capture_settings': ?frameCaptureSettings?.encode(),
    'h264_settings': ?h264Settings?.encode(),
    'h265_settings': ?h265Settings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.frame_capture_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFrameCaptureSettings {
  const MedialiveChannelFrameCaptureSettings({
    this.captureInterval,
    this.captureIntervalUnits,
  });

  final TfArg<num>? captureInterval;

  final TfArg<String>? captureIntervalUnits;

  Map<String, Object?> encode() => {
    'capture_interval': ?captureInterval?.toTfJson(),
    'capture_interval_units': ?captureIntervalUnits?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelH264Settings {
  const MedialiveChannelH264Settings({
    this.adaptiveQuantization,
    this.afdSignaling,
    this.bitrate,
    this.bufFillPct,
    this.bufSize,
    this.colorMetadata,
    this.entropyEncoding,
    this.fixedAfd,
    this.flickerAq,
    this.forceFieldPictures,
    this.framerateControl,
    this.framerateDenominator,
    this.framerateNumerator,
    this.gopBReference,
    this.gopClosedCadence,
    this.gopNumBFrames,
    this.gopSize,
    this.gopSizeUnits,
    this.level,
    this.lookAheadRateControl,
    this.maxBitrate,
    this.minIInterval,
    this.numRefFrames,
    this.parControl,
    this.parDenominator,
    this.parNumerator,
    this.profile,
    this.qualityLevel,
    this.qvbrQualityLevel,
    this.rateControlMode,
    this.scanType,
    this.sceneChangeDetect,
    this.slices,
    this.softness,
    this.spatialAq,
    this.subgopLength,
    this.syntax,
    this.temporalAq,
    this.timecodeInsertion,
    this.filterSettings,
  });

  final TfArg<String>? adaptiveQuantization;

  final TfArg<String>? afdSignaling;

  final TfArg<num>? bitrate;

  final TfArg<num>? bufFillPct;

  final TfArg<num>? bufSize;

  final TfArg<String>? colorMetadata;

  final TfArg<String>? entropyEncoding;

  final TfArg<String>? fixedAfd;

  final TfArg<String>? flickerAq;

  final TfArg<String>? forceFieldPictures;

  final TfArg<String>? framerateControl;

  final TfArg<num>? framerateDenominator;

  final TfArg<num>? framerateNumerator;

  final TfArg<String>? gopBReference;

  final TfArg<num>? gopClosedCadence;

  final TfArg<num>? gopNumBFrames;

  final TfArg<num>? gopSize;

  final TfArg<String>? gopSizeUnits;

  final TfArg<String>? level;

  final TfArg<String>? lookAheadRateControl;

  final TfArg<num>? maxBitrate;

  final TfArg<num>? minIInterval;

  final TfArg<num>? numRefFrames;

  final TfArg<String>? parControl;

  final TfArg<num>? parDenominator;

  final TfArg<num>? parNumerator;

  final TfArg<String>? profile;

  final TfArg<String>? qualityLevel;

  final TfArg<num>? qvbrQualityLevel;

  final TfArg<String>? rateControlMode;

  final TfArg<String>? scanType;

  final TfArg<String>? sceneChangeDetect;

  final TfArg<num>? slices;

  final TfArg<num>? softness;

  final TfArg<String>? spatialAq;

  final TfArg<String>? subgopLength;

  final TfArg<String>? syntax;

  final TfArg<String>? temporalAq;

  final TfArg<String>? timecodeInsertion;

  final MedialiveChannelFilterSettings? filterSettings;

  Map<String, Object?> encode() => {
    'adaptive_quantization': ?adaptiveQuantization?.toTfJson(),
    'afd_signaling': ?afdSignaling?.toTfJson(),
    'bitrate': ?bitrate?.toTfJson(),
    'buf_fill_pct': ?bufFillPct?.toTfJson(),
    'buf_size': ?bufSize?.toTfJson(),
    'color_metadata': ?colorMetadata?.toTfJson(),
    'entropy_encoding': ?entropyEncoding?.toTfJson(),
    'fixed_afd': ?fixedAfd?.toTfJson(),
    'flicker_aq': ?flickerAq?.toTfJson(),
    'force_field_pictures': ?forceFieldPictures?.toTfJson(),
    'framerate_control': ?framerateControl?.toTfJson(),
    'framerate_denominator': ?framerateDenominator?.toTfJson(),
    'framerate_numerator': ?framerateNumerator?.toTfJson(),
    'gop_b_reference': ?gopBReference?.toTfJson(),
    'gop_closed_cadence': ?gopClosedCadence?.toTfJson(),
    'gop_num_b_frames': ?gopNumBFrames?.toTfJson(),
    'gop_size': ?gopSize?.toTfJson(),
    'gop_size_units': ?gopSizeUnits?.toTfJson(),
    'level': ?level?.toTfJson(),
    'look_ahead_rate_control': ?lookAheadRateControl?.toTfJson(),
    'max_bitrate': ?maxBitrate?.toTfJson(),
    'min_i_interval': ?minIInterval?.toTfJson(),
    'num_ref_frames': ?numRefFrames?.toTfJson(),
    'par_control': ?parControl?.toTfJson(),
    'par_denominator': ?parDenominator?.toTfJson(),
    'par_numerator': ?parNumerator?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'quality_level': ?qualityLevel?.toTfJson(),
    'qvbr_quality_level': ?qvbrQualityLevel?.toTfJson(),
    'rate_control_mode': ?rateControlMode?.toTfJson(),
    'scan_type': ?scanType?.toTfJson(),
    'scene_change_detect': ?sceneChangeDetect?.toTfJson(),
    'slices': ?slices?.toTfJson(),
    'softness': ?softness?.toTfJson(),
    'spatial_aq': ?spatialAq?.toTfJson(),
    'subgop_length': ?subgopLength?.toTfJson(),
    'syntax': ?syntax?.toTfJson(),
    'temporal_aq': ?temporalAq?.toTfJson(),
    'timecode_insertion': ?timecodeInsertion?.toTfJson(),
    'filter_settings': ?filterSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings.filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelFilterSettings {
  const MedialiveChannelFilterSettings({this.temporalFilterSettings});

  final MedialiveChannelTemporalFilterSettings? temporalFilterSettings;

  Map<String, Object?> encode() => {
    'temporal_filter_settings': ?temporalFilterSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings.filter_settings.temporal_filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MedialiveChannelTemporalFilterSettings {
  const MedialiveChannelTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  final TfArg<String>? postFilterSharpening;

  final TfArg<String>? strength;

  Map<String, Object?> encode() => {
    'post_filter_sharpening': ?postFilterSharpening?.toTfJson(),
    'strength': ?strength?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelH265Settings {
  const MedialiveChannelH265Settings({
    this.adaptiveQuantization,
    this.afdSignaling,
    this.alternativeTransferFunction,
    required this.bitrate,
    this.bufSize,
    this.colorMetadata,
    this.fixedAfd,
    this.flickerAq,
    required this.framerateDenominator,
    required this.framerateNumerator,
    this.gopClosedCadence,
    this.gopSize,
    this.gopSizeUnits,
    this.level,
    this.lookAheadRateControl,
    this.maxBitrate,
    this.minIInterval,
    this.minQp,
    this.mvOverPictureBoundaries,
    this.mvTemporalPredictor,
    this.parDenominator,
    this.parNumerator,
    this.profile,
    this.qvbrQualityLevel,
    this.rateControlMode,
    this.scanType,
    this.sceneChangeDetect,
    this.slices,
    this.tier,
    this.tileHeight,
    this.tilePadding,
    this.tileWidth,
    this.timecodeInsertion,
    this.treeblockSize,
    this.colorSpaceSettings,
    this.filterSettings,
    this.timecodeBurninSettings,
  });

  final TfArg<String>? adaptiveQuantization;

  final TfArg<String>? afdSignaling;

  final TfArg<String>? alternativeTransferFunction;

  final TfArg<num> bitrate;

  final TfArg<num>? bufSize;

  final TfArg<String>? colorMetadata;

  final TfArg<String>? fixedAfd;

  final TfArg<String>? flickerAq;

  final TfArg<num> framerateDenominator;

  final TfArg<num> framerateNumerator;

  final TfArg<num>? gopClosedCadence;

  final TfArg<num>? gopSize;

  final TfArg<String>? gopSizeUnits;

  final TfArg<String>? level;

  final TfArg<String>? lookAheadRateControl;

  final TfArg<num>? maxBitrate;

  final TfArg<num>? minIInterval;

  final TfArg<num>? minQp;

  final TfArg<String>? mvOverPictureBoundaries;

  final TfArg<String>? mvTemporalPredictor;

  final TfArg<num>? parDenominator;

  final TfArg<num>? parNumerator;

  final TfArg<String>? profile;

  final TfArg<num>? qvbrQualityLevel;

  final TfArg<String>? rateControlMode;

  final TfArg<String>? scanType;

  final TfArg<String>? sceneChangeDetect;

  final TfArg<num>? slices;

  final TfArg<String>? tier;

  final TfArg<num>? tileHeight;

  final TfArg<String>? tilePadding;

  final TfArg<num>? tileWidth;

  final TfArg<String>? timecodeInsertion;

  final TfArg<String>? treeblockSize;

  final MedialiveChannelColorSpaceSettings? colorSpaceSettings;

  final MedialiveChannelFilterSettings? filterSettings;

  final MedialiveChannelTimecodeBurninSettings? timecodeBurninSettings;

  Map<String, Object?> encode() => {
    'adaptive_quantization': ?adaptiveQuantization?.toTfJson(),
    'afd_signaling': ?afdSignaling?.toTfJson(),
    'alternative_transfer_function': ?alternativeTransferFunction?.toTfJson(),
    'bitrate': bitrate.toTfJson(),
    'buf_size': ?bufSize?.toTfJson(),
    'color_metadata': ?colorMetadata?.toTfJson(),
    'fixed_afd': ?fixedAfd?.toTfJson(),
    'flicker_aq': ?flickerAq?.toTfJson(),
    'framerate_denominator': framerateDenominator.toTfJson(),
    'framerate_numerator': framerateNumerator.toTfJson(),
    'gop_closed_cadence': ?gopClosedCadence?.toTfJson(),
    'gop_size': ?gopSize?.toTfJson(),
    'gop_size_units': ?gopSizeUnits?.toTfJson(),
    'level': ?level?.toTfJson(),
    'look_ahead_rate_control': ?lookAheadRateControl?.toTfJson(),
    'max_bitrate': ?maxBitrate?.toTfJson(),
    'min_i_interval': ?minIInterval?.toTfJson(),
    'min_qp': ?minQp?.toTfJson(),
    'mv_over_picture_boundaries': ?mvOverPictureBoundaries?.toTfJson(),
    'mv_temporal_predictor': ?mvTemporalPredictor?.toTfJson(),
    'par_denominator': ?parDenominator?.toTfJson(),
    'par_numerator': ?parNumerator?.toTfJson(),
    'profile': ?profile?.toTfJson(),
    'qvbr_quality_level': ?qvbrQualityLevel?.toTfJson(),
    'rate_control_mode': ?rateControlMode?.toTfJson(),
    'scan_type': ?scanType?.toTfJson(),
    'scene_change_detect': ?sceneChangeDetect?.toTfJson(),
    'slices': ?slices?.toTfJson(),
    'tier': ?tier?.toTfJson(),
    'tile_height': ?tileHeight?.toTfJson(),
    'tile_padding': ?tilePadding?.toTfJson(),
    'tile_width': ?tileWidth?.toTfJson(),
    'timecode_insertion': ?timecodeInsertion?.toTfJson(),
    'treeblock_size': ?treeblockSize?.toTfJson(),
    'color_space_settings': ?colorSpaceSettings?.encode(),
    'filter_settings': ?filterSettings?.encode(),
    'timecode_burnin_settings': ?timecodeBurninSettings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelColorSpaceSettings {
  const MedialiveChannelColorSpaceSettings({
    this.colorSpacePassthroughSettings,
    this.dolbyVision81Settings,
    this.hdr10Settings,
    this.rec601Settings,
    this.rec709Settings,
  });

  final MedialiveChannelColorSpacePassthroughSettings?
  colorSpacePassthroughSettings;

  final MedialiveChannelDolbyVision81Settings? dolbyVision81Settings;

  final MedialiveChannelHdr10Settings? hdr10Settings;

  final MedialiveChannelRec601Settings? rec601Settings;

  final MedialiveChannelRec709Settings? rec709Settings;

  Map<String, Object?> encode() => {
    'color_space_passthrough_settings': ?colorSpacePassthroughSettings
        ?.encode(),
    'dolby_vision81_settings': ?dolbyVision81Settings?.encode(),
    'hdr10_settings': ?hdr10Settings?.encode(),
    'rec601_settings': ?rec601Settings?.encode(),
    'rec709_settings': ?rec709Settings?.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.color_space_passthrough_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelColorSpacePassthroughSettings {
  const MedialiveChannelColorSpacePassthroughSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.dolby_vision81_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDolbyVision81Settings {
  const MedialiveChannelDolbyVision81Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.hdr10_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHdr10Settings {
  const MedialiveChannelHdr10Settings({this.maxCll, this.maxFall});

  final TfArg<num>? maxCll;

  final TfArg<num>? maxFall;

  Map<String, Object?> encode() => {
    'max_cll': ?maxCll?.toTfJson(),
    'max_fall': ?maxFall?.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.rec601_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRec601Settings {
  const MedialiveChannelRec601Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.rec709_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelRec709Settings {
  const MedialiveChannelRec709Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.timecode_burnin_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTimecodeBurninSettings {
  const MedialiveChannelTimecodeBurninSettings({
    this.prefix,
    this.timecodeBurninFontSize,
    this.timecodeBurninPosition,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? timecodeBurninFontSize;

  final TfArg<String>? timecodeBurninPosition;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'timecode_burnin_font_size': ?timecodeBurninFontSize?.toTfJson(),
    'timecode_burnin_position': ?timecodeBurninPosition?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachments {
  const MedialiveChannelInputAttachments({
    required this.inputAttachmentName,
    required this.inputId,
    this.automaticInputFailoverSettings,
    this.inputSettings,
  });

  final TfArg<String> inputAttachmentName;

  final TfArg<String> inputId;

  final MedialiveChannelAutomaticInputFailoverSettings?
  automaticInputFailoverSettings;

  final MedialiveChannelInputSettings? inputSettings;

  Map<String, Object?> encode() => {
    'input_attachment_name': inputAttachmentName.toTfJson(),
    'input_id': inputId.toTfJson(),
    'automatic_input_failover_settings': ?automaticInputFailoverSettings
        ?.encode(),
    'input_settings': ?inputSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAutomaticInputFailoverSettings {
  const MedialiveChannelAutomaticInputFailoverSettings({
    this.errorClearTimeMsec,
    this.inputPreference,
    required this.secondaryInputId,
    this.failoverCondition,
  });

  final TfArg<num>? errorClearTimeMsec;

  final TfArg<MedialiveChannelInputPreference>? inputPreference;

  final TfArg<String> secondaryInputId;

  final List<MedialiveChannelFailoverCondition>? failoverCondition;

  Map<String, Object?> encode() => {
    'error_clear_time_msec': ?errorClearTimeMsec?.toTfJson(),
    'input_preference': ?inputPreference?.toTfJson(),
    'secondary_input_id': secondaryInputId.toTfJson(),
    if (failoverCondition != null)
      'failover_condition': [for (final e in failoverCondition!) e.encode()],
  };
}

/// `input_preference` — derived from the provider schema description.
enum MedialiveChannelInputPreference implements TerraformEnum {
  equalInputPreference('EQUAL_INPUT_PREFERENCE'),
  primaryInputPreferred('PRIMARY_INPUT_PREFERRED');

  const MedialiveChannelInputPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFailoverCondition {
  const MedialiveChannelFailoverCondition({this.failoverConditionSettings});

  final MedialiveChannelFailoverConditionSettings? failoverConditionSettings;

  Map<String, Object?> encode() => {
    'failover_condition_settings': ?failoverConditionSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelFailoverConditionSettings {
  const MedialiveChannelFailoverConditionSettings({
    this.audioSilenceSettings,
    this.inputLossSettings,
    this.videoBlackSettings,
  });

  final MedialiveChannelAudioSilenceSettings? audioSilenceSettings;

  final MedialiveChannelInputLossSettings? inputLossSettings;

  final MedialiveChannelVideoBlackSettings? videoBlackSettings;

  Map<String, Object?> encode() => {
    'audio_silence_settings': ?audioSilenceSettings?.encode(),
    'input_loss_settings': ?inputLossSettings?.encode(),
    'video_black_settings': ?videoBlackSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.audio_silence_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioSilenceSettings {
  const MedialiveChannelAudioSilenceSettings({
    required this.audioSelectorName,
    this.audioSilenceThresholdMsec,
  });

  final TfArg<String> audioSelectorName;

  final TfArg<num>? audioSilenceThresholdMsec;

  Map<String, Object?> encode() => {
    'audio_selector_name': audioSelectorName.toTfJson(),
    'audio_silence_threshold_msec': ?audioSilenceThresholdMsec?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.input_loss_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputLossSettings {
  const MedialiveChannelInputLossSettings({this.inputLossThresholdMsec});

  final TfArg<num>? inputLossThresholdMsec;

  Map<String, Object?> encode() => {
    'input_loss_threshold_msec': ?inputLossThresholdMsec?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.video_black_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelVideoBlackSettings {
  const MedialiveChannelVideoBlackSettings({
    this.blackDetectThreshold,
    this.videoBlackThresholdMsec,
  });

  final TfArg<num>? blackDetectThreshold;

  final TfArg<num>? videoBlackThresholdMsec;

  Map<String, Object?> encode() => {
    'black_detect_threshold': ?blackDetectThreshold?.toTfJson(),
    'video_black_threshold_msec': ?videoBlackThresholdMsec?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputSettings {
  const MedialiveChannelInputSettings({
    this.deblockFilter,
    this.denoiseFilter,
    this.filterStrength,
    this.inputFilter,
    this.scte35Pid,
    this.smpte2038DataPreference,
    this.sourceEndBehavior,
    this.audioSelector,
    this.captionSelector,
    this.networkInputSettings,
    this.videoSelector,
  });

  final TfArg<MedialiveChannelDeblockFilter>? deblockFilter;

  final TfArg<MedialiveChannelDenoiseFilter>? denoiseFilter;

  final TfArg<num>? filterStrength;

  final TfArg<MedialiveChannelInputFilter>? inputFilter;

  final TfArg<num>? scte35Pid;

  final TfArg<MedialiveChannelSmpte2038DataPreference>? smpte2038DataPreference;

  final TfArg<MedialiveChannelSourceEndBehavior>? sourceEndBehavior;

  final List<MedialiveChannelAudioSelector>? audioSelector;

  final List<MedialiveChannelCaptionSelector>? captionSelector;

  final MedialiveChannelNetworkInputSettings? networkInputSettings;

  final MedialiveChannelVideoSelector? videoSelector;

  Map<String, Object?> encode() => {
    'deblock_filter': ?deblockFilter?.toTfJson(),
    'denoise_filter': ?denoiseFilter?.toTfJson(),
    'filter_strength': ?filterStrength?.toTfJson(),
    'input_filter': ?inputFilter?.toTfJson(),
    'scte35_pid': ?scte35Pid?.toTfJson(),
    'smpte2038_data_preference': ?smpte2038DataPreference?.toTfJson(),
    'source_end_behavior': ?sourceEndBehavior?.toTfJson(),
    if (audioSelector != null)
      'audio_selector': [for (final e in audioSelector!) e.encode()],
    if (captionSelector != null)
      'caption_selector': [for (final e in captionSelector!) e.encode()],
    'network_input_settings': ?networkInputSettings?.encode(),
    'video_selector': ?videoSelector?.encode(),
  };
}

/// `deblock_filter` — derived from the provider schema description.
enum MedialiveChannelDeblockFilter implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const MedialiveChannelDeblockFilter(this.terraformValue);
  @override
  final String terraformValue;
}

/// `denoise_filter` — derived from the provider schema description.
enum MedialiveChannelDenoiseFilter implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const MedialiveChannelDenoiseFilter(this.terraformValue);
  @override
  final String terraformValue;
}

/// `input_filter` — derived from the provider schema description.
enum MedialiveChannelInputFilter implements TerraformEnum {
  auto('AUTO'),
  disabled('DISABLED'),
  forced('FORCED');

  const MedialiveChannelInputFilter(this.terraformValue);
  @override
  final String terraformValue;
}

/// `smpte2038_data_preference` — derived from the provider schema description.
enum MedialiveChannelSmpte2038DataPreference implements TerraformEnum {
  ignore('IGNORE'),
  prefer('PREFER');

  const MedialiveChannelSmpte2038DataPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// `source_end_behavior` — derived from the provider schema description.
enum MedialiveChannelSourceEndBehavior implements TerraformEnum {
  continueCase('CONTINUE'),
  loop('LOOP');

  const MedialiveChannelSourceEndBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.audio_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioSelector {
  const MedialiveChannelAudioSelector({
    required this.name,
    this.selectorSettings,
  });

  final TfArg<String> name;

  final MedialiveChannelAudioSelectorSettings? selectorSettings;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'selector_settings': ?selectorSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioSelectorSettings {
  const MedialiveChannelAudioSelectorSettings({
    this.audioHlsRenditionSelection,
    this.audioLanguageSelection,
    this.audioPidSelection,
    this.audioTrackSelection,
  });

  final MedialiveChannelAudioHlsRenditionSelection? audioHlsRenditionSelection;

  final MedialiveChannelAudioLanguageSelection? audioLanguageSelection;

  final MedialiveChannelAudioPidSelection? audioPidSelection;

  final MedialiveChannelAudioTrackSelection? audioTrackSelection;

  Map<String, Object?> encode() => {
    'audio_hls_rendition_selection': ?audioHlsRenditionSelection?.encode(),
    'audio_language_selection': ?audioLanguageSelection?.encode(),
    'audio_pid_selection': ?audioPidSelection?.encode(),
    'audio_track_selection': ?audioTrackSelection?.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_hls_rendition_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioHlsRenditionSelection {
  const MedialiveChannelAudioHlsRenditionSelection({
    required this.groupId,
    required this.name,
  });

  final TfArg<String> groupId;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'group_id': groupId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_language_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioLanguageSelection {
  const MedialiveChannelAudioLanguageSelection({
    required this.languageCode,
    this.languageSelectionPolicy,
  });

  final TfArg<String> languageCode;

  final TfArg<MedialiveChannelLanguageSelectionPolicy>? languageSelectionPolicy;

  Map<String, Object?> encode() => {
    'language_code': languageCode.toTfJson(),
    'language_selection_policy': ?languageSelectionPolicy?.toTfJson(),
  };
}

/// `language_selection_policy` — derived from the provider schema description.
enum MedialiveChannelLanguageSelectionPolicy implements TerraformEnum {
  loose('LOOSE'),
  strict('STRICT');

  const MedialiveChannelLanguageSelectionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_pid_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioPidSelection {
  const MedialiveChannelAudioPidSelection({required this.pid});

  final TfArg<num> pid;

  Map<String, Object?> encode() => {'pid': pid.toTfJson()};
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAudioTrackSelection {
  const MedialiveChannelAudioTrackSelection({
    this.dolbyEDecode,
    required this.tracks,
  });

  final MedialiveChannelDolbyEDecode? dolbyEDecode;

  final List<MedialiveChannelTracks> tracks;

  Map<String, Object?> encode() => {
    'dolby_e_decode': ?dolbyEDecode?.encode(),
    'tracks': [for (final e in tracks) e.encode()],
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection.dolby_e_decode` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDolbyEDecode {
  const MedialiveChannelDolbyEDecode({required this.programSelection});

  final TfArg<MedialiveChannelProgramSelection> programSelection;

  Map<String, Object?> encode() => {
    'program_selection': programSelection.toTfJson(),
  };
}

/// `program_selection` — derived from the provider schema description.
enum MedialiveChannelProgramSelection implements TerraformEnum {
  allChannels('ALL_CHANNELS'),
  program1('PROGRAM_1'),
  program2('PROGRAM_2'),
  program3('PROGRAM_3'),
  program4('PROGRAM_4'),
  program5('PROGRAM_5'),
  program6('PROGRAM_6'),
  program7('PROGRAM_7'),
  program8('PROGRAM_8');

  const MedialiveChannelProgramSelection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection.tracks` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTracks {
  const MedialiveChannelTracks({required this.track});

  final TfArg<num> track;

  Map<String, Object?> encode() => {'track': track.toTfJson()};
}

/// Typed helper for the `input_attachments.input_settings.caption_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCaptionSelector {
  const MedialiveChannelCaptionSelector({
    this.languageCode,
    required this.name,
    this.selectorSettings,
  });

  final TfArg<String>? languageCode;

  final TfArg<String> name;

  final MedialiveChannelCaptionSelectorSettings? selectorSettings;

  Map<String, Object?> encode() => {
    'language_code': ?languageCode?.toTfJson(),
    'name': name.toTfJson(),
    'selector_settings': ?selectorSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCaptionSelectorSettings {
  const MedialiveChannelCaptionSelectorSettings({
    this.ancillarySourceSettings,
    this.aribSourceSettings,
    this.dvbSubSourceSettings,
    this.embeddedSourceSettings,
    this.scte20SourceSettings,
    this.scte27SourceSettings,
    this.teletextSourceSettings,
  });

  final MedialiveChannelAncillarySourceSettings? ancillarySourceSettings;

  final MedialiveChannelAribSourceSettings? aribSourceSettings;

  final MedialiveChannelDvbSubSourceSettings? dvbSubSourceSettings;

  final MedialiveChannelEmbeddedSourceSettings? embeddedSourceSettings;

  final MedialiveChannelScte20SourceSettings? scte20SourceSettings;

  final MedialiveChannelScte27SourceSettings? scte27SourceSettings;

  final MedialiveChannelTeletextSourceSettings? teletextSourceSettings;

  Map<String, Object?> encode() => {
    'ancillary_source_settings': ?ancillarySourceSettings?.encode(),
    'arib_source_settings': ?aribSourceSettings?.encode(),
    'dvb_sub_source_settings': ?dvbSubSourceSettings?.encode(),
    'embedded_source_settings': ?embeddedSourceSettings?.encode(),
    'scte20_source_settings': ?scte20SourceSettings?.encode(),
    'scte27_source_settings': ?scte27SourceSettings?.encode(),
    'teletext_source_settings': ?teletextSourceSettings?.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.ancillary_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAncillarySourceSettings {
  const MedialiveChannelAncillarySourceSettings({
    this.sourceAncillaryChannelNumber,
  });

  final TfArg<num>? sourceAncillaryChannelNumber;

  Map<String, Object?> encode() => {
    'source_ancillary_channel_number': ?sourceAncillaryChannelNumber
        ?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.arib_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelAribSourceSettings {
  const MedialiveChannelAribSourceSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.dvb_sub_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDvbSubSourceSettings {
  const MedialiveChannelDvbSubSourceSettings({this.ocrLanguage, this.pid});

  final TfArg<MedialiveChannelOcrLanguage>? ocrLanguage;

  final TfArg<num>? pid;

  Map<String, Object?> encode() => {
    'ocr_language': ?ocrLanguage?.toTfJson(),
    'pid': ?pid?.toTfJson(),
  };
}

/// `ocr_language` — derived from the provider schema description.
enum MedialiveChannelOcrLanguage implements TerraformEnum {
  deu('DEU'),
  eng('ENG'),
  fra('FRA'),
  nld('NLD'),
  por('POR'),
  spa('SPA');

  const MedialiveChannelOcrLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.embedded_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEmbeddedSourceSettings {
  const MedialiveChannelEmbeddedSourceSettings({
    this.convert608To708,
    this.scte20Detection,
    this.source608ChannelNumber,
  });

  final TfArg<MedialiveChannelConvert608To708>? convert608To708;

  final TfArg<MedialiveChannelScte20Detection>? scte20Detection;

  final TfArg<num>? source608ChannelNumber;

  Map<String, Object?> encode() => {
    'convert_608_to_708': ?convert608To708?.toTfJson(),
    'scte20_detection': ?scte20Detection?.toTfJson(),
    'source_608_channel_number': ?source608ChannelNumber?.toTfJson(),
  };
}

/// `convert_608_to_708` — derived from the provider schema description.
enum MedialiveChannelConvert608To708 implements TerraformEnum {
  disabled('DISABLED'),
  upconvert('UPCONVERT');

  const MedialiveChannelConvert608To708(this.terraformValue);
  @override
  final String terraformValue;
}

/// `scte20_detection` — derived from the provider schema description.
enum MedialiveChannelScte20Detection implements TerraformEnum {
  auto('AUTO'),
  off('OFF');

  const MedialiveChannelScte20Detection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.scte20_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelScte20SourceSettings {
  const MedialiveChannelScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  final TfArg<MedialiveChannelConvert608To708>? convert608To708;

  final TfArg<num>? source608ChannelNumber;

  Map<String, Object?> encode() => {
    'convert_608_to_708': ?convert608To708?.toTfJson(),
    'source_608_channel_number': ?source608ChannelNumber?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.scte27_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelScte27SourceSettings {
  const MedialiveChannelScte27SourceSettings({this.ocrLanguage, this.pid});

  final TfArg<MedialiveChannelOcrLanguage>? ocrLanguage;

  final TfArg<num>? pid;

  Map<String, Object?> encode() => {
    'ocr_language': ?ocrLanguage?.toTfJson(),
    'pid': ?pid?.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.teletext_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelTeletextSourceSettings {
  const MedialiveChannelTeletextSourceSettings({
    this.pageNumber,
    this.outputRectangle,
  });

  final TfArg<String>? pageNumber;

  final MedialiveChannelOutputRectangle? outputRectangle;

  Map<String, Object?> encode() => {
    'page_number': ?pageNumber?.toTfJson(),
    'output_rectangle': ?outputRectangle?.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.teletext_source_settings.output_rectangle` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelOutputRectangle {
  const MedialiveChannelOutputRectangle({
    required this.height,
    required this.leftOffset,
    required this.topOffset,
    required this.width,
  });

  final TfArg<num> height;

  final TfArg<num> leftOffset;

  final TfArg<num> topOffset;

  final TfArg<num> width;

  Map<String, Object?> encode() => {
    'height': height.toTfJson(),
    'left_offset': leftOffset.toTfJson(),
    'top_offset': topOffset.toTfJson(),
    'width': width.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.network_input_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelNetworkInputSettings {
  const MedialiveChannelNetworkInputSettings({
    this.serverValidation,
    this.hlsInputSettings,
  });

  final TfArg<MedialiveChannelServerValidation>? serverValidation;

  final MedialiveChannelHlsInputSettings? hlsInputSettings;

  Map<String, Object?> encode() => {
    'server_validation': ?serverValidation?.toTfJson(),
    'hls_input_settings': ?hlsInputSettings?.encode(),
  };
}

/// `server_validation` — derived from the provider schema description.
enum MedialiveChannelServerValidation implements TerraformEnum {
  checkCryptographyAndValidateName('CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME'),
  checkCryptographyOnly('CHECK_CRYPTOGRAPHY_ONLY');

  const MedialiveChannelServerValidation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.network_input_settings.hls_input_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelHlsInputSettings {
  const MedialiveChannelHlsInputSettings({
    this.bandwidth,
    this.bufferSegments,
    this.retries,
    this.retryInterval,
    this.scte35Source,
  });

  final TfArg<num>? bandwidth;

  final TfArg<num>? bufferSegments;

  final TfArg<num>? retries;

  final TfArg<num>? retryInterval;

  final TfArg<MedialiveChannelScte35Source>? scte35Source;

  Map<String, Object?> encode() => {
    'bandwidth': ?bandwidth?.toTfJson(),
    'buffer_segments': ?bufferSegments?.toTfJson(),
    'retries': ?retries?.toTfJson(),
    'retry_interval': ?retryInterval?.toTfJson(),
    'scte35_source': ?scte35Source?.toTfJson(),
  };
}

/// `scte35_source` — derived from the provider schema description.
enum MedialiveChannelScte35Source implements TerraformEnum {
  manifest('MANIFEST'),
  segments('SEGMENTS');

  const MedialiveChannelScte35Source(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_attachments.input_settings.video_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelVideoSelector {
  const MedialiveChannelVideoSelector({this.colorSpace, this.colorSpaceUsage});

  final TfArg<MedialiveChannelColorSpace>? colorSpace;

  final TfArg<MedialiveChannelColorSpaceUsage>? colorSpaceUsage;

  Map<String, Object?> encode() => {
    'color_space': ?colorSpace?.toTfJson(),
    'color_space_usage': ?colorSpaceUsage?.toTfJson(),
  };
}

/// `color_space` — derived from the provider schema description.
enum MedialiveChannelColorSpace implements TerraformEnum {
  follow('FOLLOW'),
  hdr10('HDR10'),
  hlg2020('HLG_2020'),
  rec601('REC_601'),
  rec709('REC_709');

  const MedialiveChannelColorSpace(this.terraformValue);
  @override
  final String terraformValue;
}

/// `color_space_usage` — derived from the provider schema description.
enum MedialiveChannelColorSpaceUsage implements TerraformEnum {
  fallback('FALLBACK'),
  force('FORCE');

  const MedialiveChannelColorSpaceUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_specification` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputSpecification {
  const MedialiveChannelInputSpecification({
    required this.codec,
    required this.inputResolution,
    required this.maximumBitrate,
  });

  final TfArg<MedialiveChannelCodec> codec;

  final TfArg<MedialiveChannelInputResolution> inputResolution;

  final TfArg<MedialiveChannelMaximumBitrate> maximumBitrate;

  Map<String, Object?> encode() => {
    'codec': codec.toTfJson(),
    'input_resolution': inputResolution.toTfJson(),
    'maximum_bitrate': maximumBitrate.toTfJson(),
  };
}

/// `codec` — derived from the provider schema description.
enum MedialiveChannelCodec implements TerraformEnum {
  mpeg2('MPEG2'),
  avc('AVC'),
  hevc('HEVC');

  const MedialiveChannelCodec(this.terraformValue);
  @override
  final String terraformValue;
}

/// `input_resolution` — derived from the provider schema description.
enum MedialiveChannelInputResolution implements TerraformEnum {
  sd('SD'),
  hd('HD'),
  uhd('UHD');

  const MedialiveChannelInputResolution(this.terraformValue);
  @override
  final String terraformValue;
}

/// `maximum_bitrate` — derived from the provider schema description.
enum MedialiveChannelMaximumBitrate implements TerraformEnum {
  max10Mbps('MAX_10_MBPS'),
  max20Mbps('MAX_20_MBPS'),
  max50Mbps('MAX_50_MBPS');

  const MedialiveChannelMaximumBitrate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMaintenance {
  const MedialiveChannelMaintenance({
    required this.maintenanceDay,
    required this.maintenanceStartTime,
  });

  final TfArg<MedialiveChannelMaintenanceDay> maintenanceDay;

  final TfArg<String> maintenanceStartTime;

  Map<String, Object?> encode() => {
    'maintenance_day': maintenanceDay.toTfJson(),
    'maintenance_start_time': maintenanceStartTime.toTfJson(),
  };
}

/// `maintenance_day` — derived from the provider schema description.
enum MedialiveChannelMaintenanceDay implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const MedialiveChannelMaintenanceDay(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `vpc` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelVpc {
  const MedialiveChannelVpc({
    required this.publicAddressAllocationIds,
    this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<String>> publicAddressAllocationIds;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'public_address_allocation_ids': publicAddressAllocationIds.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_medialive_channel`.
final class AwsMedialiveChannel extends Resource {
  static const String tfType = 'aws_medialive_channel';

  AwsMedialiveChannel(
    super.localName, {
    required TfArg<MedialiveChannelClass> channelClass,
    TfArg<MedialiveChannelLogLevel>? logLevel,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<bool>? startChannel,
    TfArg<Map<String, String>>? tags,
    MedialiveChannelCdiInputSpecification? cdiInputSpecification,
    required List<MedialiveChannelDestinations> destinations,
    required MedialiveChannelEncoderSettings encoderSettings,
    required List<MedialiveChannelInputAttachments> inputAttachments,
    required MedialiveChannelInputSpecification inputSpecification,
    MedialiveChannelMaintenance? maintenance,
    MedialiveChannelVpc? vpc,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'channel_class': channelClass,
           'log_level': ?logLevel,
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'start_channel': ?startChannel,
           'tags': ?tags,
           if (cdiInputSpecification != null)
             'cdi_input_specification': TfArg.literal(
               cdiInputSpecification.encode(),
             ),
           'destinations': TfArg.literal([
             for (final e in destinations) e.encode(),
           ]),
           'encoder_settings': TfArg.literal(encoderSettings.encode()),
           'input_attachments': TfArg.literal([
             for (final e in inputAttachments) e.encode(),
           ]),
           'input_specification': TfArg.literal(inputSpecification.encode()),
           if (maintenance != null)
             'maintenance': TfArg.literal(maintenance.encode()),
           if (vpc != null) 'vpc': TfArg.literal(vpc.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMedialiveChannel>`.
  RefTo<AwsMedialiveChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelId => TfRef.attribute<String>(this, 'channel_id');

  /// Reference to `channel_class` attribute.
  TfRef<String> get channelClass =>
      TfRef.attribute<String>(this, 'channel_class');

  /// Reference to `log_level` attribute.
  TfRef<String> get logLevel => TfRef.attribute<String>(this, 'log_level');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `start_channel` attribute.
  TfRef<bool> get startChannel => TfRef.attribute<bool>(this, 'start_channel');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
