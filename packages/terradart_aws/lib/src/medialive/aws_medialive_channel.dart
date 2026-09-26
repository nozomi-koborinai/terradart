// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_medialive_channel`.
const Set<String> _awsMedialiveChannelSensitive = <String>{};

/// Typed helper for the `cdi_input_specification` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelCdiInputSpecification {
  const MedialiveChannelCdiInputSpecification({required this.resolution});

  final TfArg<String> resolution;

  Map<String, Object?> encode() => {'resolution': resolution.toTfJson()};
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

  final List<MedialiveChannelDestinationsMediaPackageSettings>?
  mediaPackageSettings;

  final MedialiveChannelDestinationsMultiplexSettings? multiplexSettings;

  final List<MedialiveChannelDestinationsSettings>? settings;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (mediaPackageSettings != null)
      'media_package_settings': [
        for (final e in mediaPackageSettings!) e.encode(),
      ],
    if (multiplexSettings != null)
      'multiplex_settings': multiplexSettings!.encode(),
    if (settings != null) 'settings': [for (final e in settings!) e.encode()],
  };
}

/// Typed helper for the `destinations.media_package_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDestinationsMediaPackageSettings {
  const MedialiveChannelDestinationsMediaPackageSettings({
    required this.channelId,
  });

  final TfArg<String> channelId;

  Map<String, Object?> encode() => {'channel_id': channelId.toTfJson()};
}

/// Typed helper for the `destinations.multiplex_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelDestinationsMultiplexSettings {
  const MedialiveChannelDestinationsMultiplexSettings({
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
final class MedialiveChannelDestinationsSettings {
  const MedialiveChannelDestinationsSettings({
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
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    if (streamName != null) 'stream_name': streamName!.toTfJson(),
    if (url != null) 'url': url!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
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

  final List<MedialiveChannelEncoderSettingsAudioDescriptions>?
  audioDescriptions;

  final MedialiveChannelEncoderSettingsAvailBlanking? availBlanking;

  final List<MedialiveChannelEncoderSettingsCaptionDescriptions>?
  captionDescriptions;

  final MedialiveChannelEncoderSettingsGlobalConfiguration? globalConfiguration;

  final MedialiveChannelEncoderSettingsMotionGraphicsConfiguration?
  motionGraphicsConfiguration;

  final MedialiveChannelEncoderSettingsNielsenConfiguration?
  nielsenConfiguration;

  final List<MedialiveChannelEncoderSettingsOutputGroups> outputGroups;

  final MedialiveChannelEncoderSettingsTimecodeConfig timecodeConfig;

  final List<MedialiveChannelEncoderSettingsVideoDescriptions>?
  videoDescriptions;

  Map<String, Object?> encode() => {
    if (audioDescriptions != null)
      'audio_descriptions': [for (final e in audioDescriptions!) e.encode()],
    if (availBlanking != null) 'avail_blanking': availBlanking!.encode(),
    if (captionDescriptions != null)
      'caption_descriptions': [
        for (final e in captionDescriptions!) e.encode(),
      ],
    if (globalConfiguration != null)
      'global_configuration': globalConfiguration!.encode(),
    if (motionGraphicsConfiguration != null)
      'motion_graphics_configuration': motionGraphicsConfiguration!.encode(),
    if (nielsenConfiguration != null)
      'nielsen_configuration': nielsenConfiguration!.encode(),
    'output_groups': [for (final e in outputGroups) e.encode()],
    'timecode_config': timecodeConfig.encode(),
    if (videoDescriptions != null)
      'video_descriptions': [for (final e in videoDescriptions!) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptions {
  const MedialiveChannelEncoderSettingsAudioDescriptions({
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

  final MedialiveChannelEncoderSettingsAudioDescriptionsAudioNormalizationSettings?
  audioNormalizationSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettings?
  audioWatermarkSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettings?
  codecSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettings?
  remixSettings;

  Map<String, Object?> encode() => {
    'audio_selector_name': audioSelectorName.toTfJson(),
    if (audioType != null) 'audio_type': audioType!.toTfJson(),
    if (audioTypeControl != null)
      'audio_type_control': audioTypeControl!.toTfJson(),
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    if (languageCodeControl != null)
      'language_code_control': languageCodeControl!.toTfJson(),
    'name': name.toTfJson(),
    if (streamName != null) 'stream_name': streamName!.toTfJson(),
    if (audioNormalizationSettings != null)
      'audio_normalization_settings': audioNormalizationSettings!.encode(),
    if (audioWatermarkSettings != null)
      'audio_watermark_settings': audioWatermarkSettings!.encode(),
    if (codecSettings != null) 'codec_settings': codecSettings!.encode(),
    if (remixSettings != null) 'remix_settings': remixSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_normalization_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsAudioNormalizationSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsAudioNormalizationSettings({
    this.algorithm,
    this.algorithmControl,
    this.targetLkfs,
  });

  final TfArg<String>? algorithm;

  final TfArg<String>? algorithmControl;

  final TfArg<num>? targetLkfs;

  Map<String, Object?> encode() => {
    if (algorithm != null) 'algorithm': algorithm!.toTfJson(),
    if (algorithmControl != null)
      'algorithm_control': algorithmControl!.toTfJson(),
    if (targetLkfs != null) 'target_lkfs': targetLkfs!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettings({
    this.nielsenWatermarksSettings,
  });

  final MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettings?
  nielsenWatermarksSettings;

  Map<String, Object?> encode() => {
    if (nielsenWatermarksSettings != null)
      'nielsen_watermarks_settings': nielsenWatermarksSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings.nielsen_watermarks_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettings({
    this.nielsenDistributionType,
    this.nielsenCbetSettings,
    this.nielsenNaesIiNwSettings,
  });

  final TfArg<String>? nielsenDistributionType;

  final MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings?
  nielsenCbetSettings;

  final List<
    MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSettings
  >?
  nielsenNaesIiNwSettings;

  Map<String, Object?> encode() => {
    if (nielsenDistributionType != null)
      'nielsen_distribution_type': nielsenDistributionType!.toTfJson(),
    if (nielsenCbetSettings != null)
      'nielsen_cbet_settings': nielsenCbetSettings!.encode(),
    if (nielsenNaesIiNwSettings != null)
      'nielsen_naes_ii_nw_settings': [
        for (final e in nielsenNaesIiNwSettings!) e.encode(),
      ],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.audio_watermark_settings.nielsen_watermarks_settings.nielsen_cbet_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings({
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
final class MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSettings({
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
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettings({
    this.aacSettings,
    this.ac3Settings,
    this.eac3AtmosSettings,
    this.eac3Settings,
    this.mp2Settings,
    this.passThroughSettings,
    this.wavSettings,
  });

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAacSettings?
  aacSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAc3Settings?
  ac3Settings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3AtmosSettings?
  eac3AtmosSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3Settings?
  eac3Settings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsMp2Settings?
  mp2Settings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsPassThroughSettings?
  passThroughSettings;

  final MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsWavSettings?
  wavSettings;

  Map<String, Object?> encode() => {
    if (aacSettings != null) 'aac_settings': aacSettings!.encode(),
    if (ac3Settings != null) 'ac3_settings': ac3Settings!.encode(),
    if (eac3AtmosSettings != null)
      'eac3_atmos_settings': eac3AtmosSettings!.encode(),
    if (eac3Settings != null) 'eac3_settings': eac3Settings!.encode(),
    if (mp2Settings != null) 'mp2_settings': mp2Settings!.encode(),
    if (passThroughSettings != null)
      'pass_through_settings': passThroughSettings!.encode(),
    if (wavSettings != null) 'wav_settings': wavSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.aac_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAacSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAacSettings({
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
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (inputType != null) 'input_type': inputType!.toTfJson(),
    if (profile != null) 'profile': profile!.toTfJson(),
    if (rateControlMode != null)
      'rate_control_mode': rateControlMode!.toTfJson(),
    if (rawFormat != null) 'raw_format': rawFormat!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
    if (spec != null) 'spec': spec!.toTfJson(),
    if (vbrQuality != null) 'vbr_quality': vbrQuality!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.ac3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAc3Settings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsAc3Settings({
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
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (bitstreamMode != null) 'bitstream_mode': bitstreamMode!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (dialnorm != null) 'dialnorm': dialnorm!.toTfJson(),
    if (drcProfile != null) 'drc_profile': drcProfile!.toTfJson(),
    if (lfeFilter != null) 'lfe_filter': lfeFilter!.toTfJson(),
    if (metadataControl != null)
      'metadata_control': metadataControl!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.eac3_atmos_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3AtmosSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3AtmosSettings({
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
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (dialnorm != null) 'dialnorm': dialnorm!.toTfJson(),
    if (drcLine != null) 'drc_line': drcLine!.toTfJson(),
    if (drcRf != null) 'drc_rf': drcRf!.toTfJson(),
    if (heightTrim != null) 'height_trim': heightTrim!.toTfJson(),
    if (surroundTrim != null) 'surround_trim': surroundTrim!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.eac3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3Settings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsEac3Settings({
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
    if (attenuationControl != null)
      'attenuation_control': attenuationControl!.toTfJson(),
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (bitstreamMode != null) 'bitstream_mode': bitstreamMode!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (dcFilter != null) 'dc_filter': dcFilter!.toTfJson(),
    if (dialnorm != null) 'dialnorm': dialnorm!.toTfJson(),
    if (drcLine != null) 'drc_line': drcLine!.toTfJson(),
    if (drcRf != null) 'drc_rf': drcRf!.toTfJson(),
    if (lfeControl != null) 'lfe_control': lfeControl!.toTfJson(),
    if (lfeFilter != null) 'lfe_filter': lfeFilter!.toTfJson(),
    if (loRoCenterMixLevel != null)
      'lo_ro_center_mix_level': loRoCenterMixLevel!.toTfJson(),
    if (loRoSurroundMixLevel != null)
      'lo_ro_surround_mix_level': loRoSurroundMixLevel!.toTfJson(),
    if (ltRtCenterMixLevel != null)
      'lt_rt_center_mix_level': ltRtCenterMixLevel!.toTfJson(),
    if (ltRtSurroundMixLevel != null)
      'lt_rt_surround_mix_level': ltRtSurroundMixLevel!.toTfJson(),
    if (metadataControl != null)
      'metadata_control': metadataControl!.toTfJson(),
    if (passthroughControl != null)
      'passthrough_control': passthroughControl!.toTfJson(),
    if (phaseControl != null) 'phase_control': phaseControl!.toTfJson(),
    if (stereoDownmix != null) 'stereo_downmix': stereoDownmix!.toTfJson(),
    if (surroundExMode != null) 'surround_ex_mode': surroundExMode!.toTfJson(),
    if (surroundMode != null) 'surround_mode': surroundMode!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.mp2_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsMp2Settings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsMp2Settings({
    this.bitrate,
    this.codingMode,
    this.sampleRate,
  });

  final TfArg<num>? bitrate;

  final TfArg<String>? codingMode;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.pass_through_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsPassThroughSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsPassThroughSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.audio_descriptions.codec_settings.wav_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsWavSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsCodecSettingsWavSettings({
    this.bitDepth,
    this.codingMode,
    this.sampleRate,
  });

  final TfArg<num>? bitDepth;

  final TfArg<String>? codingMode;

  final TfArg<num>? sampleRate;

  Map<String, Object?> encode() => {
    if (bitDepth != null) 'bit_depth': bitDepth!.toTfJson(),
    if (codingMode != null) 'coding_mode': codingMode!.toTfJson(),
    if (sampleRate != null) 'sample_rate': sampleRate!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettings({
    this.channelsIn,
    this.channelsOut,
    required this.channelMappings,
  });

  final TfArg<num>? channelsIn;

  final TfArg<num>? channelsOut;

  final List<
    MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappings
  >
  channelMappings;

  Map<String, Object?> encode() => {
    if (channelsIn != null) 'channels_in': channelsIn!.toTfJson(),
    if (channelsOut != null) 'channels_out': channelsOut!.toTfJson(),
    'channel_mappings': [for (final e in channelMappings) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings.channel_mappings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappings {
  const MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappings({
    required this.outputChannel,
    required this.inputChannelLevels,
  });

  final TfArg<num> outputChannel;

  final List<
    MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappingsInputChannelLevels
  >
  inputChannelLevels;

  Map<String, Object?> encode() => {
    'output_channel': outputChannel.toTfJson(),
    'input_channel_levels': [for (final e in inputChannelLevels) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.audio_descriptions.remix_settings.channel_mappings.input_channel_levels` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappingsInputChannelLevels {
  const MedialiveChannelEncoderSettingsAudioDescriptionsRemixSettingsChannelMappingsInputChannelLevels({
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
final class MedialiveChannelEncoderSettingsAvailBlanking {
  const MedialiveChannelEncoderSettingsAvailBlanking({
    this.state,
    this.availBlankingImage,
  });

  final TfArg<String>? state;

  final MedialiveChannelEncoderSettingsAvailBlankingAvailBlankingImage?
  availBlankingImage;

  Map<String, Object?> encode() => {
    if (state != null) 'state': state!.toTfJson(),
    if (availBlankingImage != null)
      'avail_blanking_image': availBlankingImage!.encode(),
  };
}

/// Typed helper for the `encoder_settings.avail_blanking.avail_blanking_image` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsAvailBlankingAvailBlankingImage {
  const MedialiveChannelEncoderSettingsAvailBlankingAvailBlankingImage({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptions {
  const MedialiveChannelEncoderSettingsCaptionDescriptions({
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

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettings?
  destinationSettings;

  Map<String, Object?> encode() => {
    if (accessibility != null) 'accessibility': accessibility!.toTfJson(),
    'caption_selector_name': captionSelectorName.toTfJson(),
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    if (languageDescription != null)
      'language_description': languageDescription!.toTfJson(),
    'name': name.toTfJson(),
    if (destinationSettings != null)
      'destination_settings': destinationSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettings({
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

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsAribDestinationSettings?
  aribDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettings?
  burnInDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettings?
  dvbSubDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEbuTtDDestinationSettings?
  ebuTtDDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedDestinationSettings?
  embeddedDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedPlusScte20DestinationSettings?
  embeddedPlusScte20DestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsRtmpCaptionInfoDestinationSettings?
  rtmpCaptionInfoDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte20PlusEmbeddedDestinationSettings?
  scte20PlusEmbeddedDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte27DestinationSettings?
  scte27DestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsSmpteTtDestinationSettings?
  smpteTtDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTeletextDestinationSettings?
  teletextDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTtmlDestinationSettings?
  ttmlDestinationSettings;

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsWebvttDestinationSettings?
  webvttDestinationSettings;

  Map<String, Object?> encode() => {
    if (aribDestinationSettings != null)
      'arib_destination_settings': aribDestinationSettings!.encode(),
    if (burnInDestinationSettings != null)
      'burn_in_destination_settings': burnInDestinationSettings!.encode(),
    if (dvbSubDestinationSettings != null)
      'dvb_sub_destination_settings': dvbSubDestinationSettings!.encode(),
    if (ebuTtDDestinationSettings != null)
      'ebu_tt_d_destination_settings': ebuTtDDestinationSettings!.encode(),
    if (embeddedDestinationSettings != null)
      'embedded_destination_settings': embeddedDestinationSettings!.encode(),
    if (embeddedPlusScte20DestinationSettings != null)
      'embedded_plus_scte20_destination_settings':
          embeddedPlusScte20DestinationSettings!.encode(),
    if (rtmpCaptionInfoDestinationSettings != null)
      'rtmp_caption_info_destination_settings':
          rtmpCaptionInfoDestinationSettings!.encode(),
    if (scte20PlusEmbeddedDestinationSettings != null)
      'scte20_plus_embedded_destination_settings':
          scte20PlusEmbeddedDestinationSettings!.encode(),
    if (scte27DestinationSettings != null)
      'scte27_destination_settings': scte27DestinationSettings!.encode(),
    if (smpteTtDestinationSettings != null)
      'smpte_tt_destination_settings': smpteTtDestinationSettings!.encode(),
    if (teletextDestinationSettings != null)
      'teletext_destination_settings': teletextDestinationSettings!.encode(),
    if (ttmlDestinationSettings != null)
      'ttml_destination_settings': ttmlDestinationSettings!.encode(),
    if (webvttDestinationSettings != null)
      'webvtt_destination_settings': webvttDestinationSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.arib_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsAribDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsAribDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.burn_in_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettings({
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

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettingsFont?
  font;

  Map<String, Object?> encode() => {
    if (alignment != null) 'alignment': alignment!.toTfJson(),
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (backgroundOpacity != null)
      'background_opacity': backgroundOpacity!.toTfJson(),
    if (fontColor != null) 'font_color': fontColor!.toTfJson(),
    if (fontOpacity != null) 'font_opacity': fontOpacity!.toTfJson(),
    if (fontResolution != null) 'font_resolution': fontResolution!.toTfJson(),
    if (fontSize != null) 'font_size': fontSize!.toTfJson(),
    'outline_color': outlineColor.toTfJson(),
    if (outlineSize != null) 'outline_size': outlineSize!.toTfJson(),
    if (shadowColor != null) 'shadow_color': shadowColor!.toTfJson(),
    if (shadowOpacity != null) 'shadow_opacity': shadowOpacity!.toTfJson(),
    if (shadowXOffset != null) 'shadow_x_offset': shadowXOffset!.toTfJson(),
    if (shadowYOffset != null) 'shadow_y_offset': shadowYOffset!.toTfJson(),
    'teletext_grid_control': teletextGridControl.toTfJson(),
    if (xPosition != null) 'x_position': xPosition!.toTfJson(),
    if (yPosition != null) 'y_position': yPosition!.toTfJson(),
    if (font != null) 'font': font!.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.burn_in_destination_settings.font` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettingsFont {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsBurnInDestinationSettingsFont({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.dvb_sub_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettings({
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

  final MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettingsFont?
  font;

  Map<String, Object?> encode() => {
    if (alignment != null) 'alignment': alignment!.toTfJson(),
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (backgroundOpacity != null)
      'background_opacity': backgroundOpacity!.toTfJson(),
    if (fontColor != null) 'font_color': fontColor!.toTfJson(),
    if (fontOpacity != null) 'font_opacity': fontOpacity!.toTfJson(),
    if (fontResolution != null) 'font_resolution': fontResolution!.toTfJson(),
    if (fontSize != null) 'font_size': fontSize!.toTfJson(),
    if (outlineColor != null) 'outline_color': outlineColor!.toTfJson(),
    if (outlineSize != null) 'outline_size': outlineSize!.toTfJson(),
    if (shadowColor != null) 'shadow_color': shadowColor!.toTfJson(),
    if (shadowOpacity != null) 'shadow_opacity': shadowOpacity!.toTfJson(),
    if (shadowXOffset != null) 'shadow_x_offset': shadowXOffset!.toTfJson(),
    if (shadowYOffset != null) 'shadow_y_offset': shadowYOffset!.toTfJson(),
    if (teletextGridControl != null)
      'teletext_grid_control': teletextGridControl!.toTfJson(),
    if (xPosition != null) 'x_position': xPosition!.toTfJson(),
    if (yPosition != null) 'y_position': yPosition!.toTfJson(),
    if (font != null) 'font': font!.encode(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.dvb_sub_destination_settings.font` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettingsFont {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsDvbSubDestinationSettingsFont({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.ebu_tt_d_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEbuTtDDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEbuTtDDestinationSettings({
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
    if (copyrightHolder != null)
      'copyright_holder': copyrightHolder!.toTfJson(),
    if (fillLineGap != null) 'fill_line_gap': fillLineGap!.toTfJson(),
    if (fontFamily != null) 'font_family': fontFamily!.toTfJson(),
    if (styleControl != null) 'style_control': styleControl!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.embedded_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.embedded_plus_scte20_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedPlusScte20DestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsEmbeddedPlusScte20DestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.rtmp_caption_info_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsRtmpCaptionInfoDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsRtmpCaptionInfoDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.scte20_plus_embedded_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte20PlusEmbeddedDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte20PlusEmbeddedDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.scte27_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte27DestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsScte27DestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.smpte_tt_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsSmpteTtDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsSmpteTtDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.teletext_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTeletextDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTeletextDestinationSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.ttml_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTtmlDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsTtmlDestinationSettings({
    required this.styleControl,
  });

  final TfArg<String> styleControl;

  Map<String, Object?> encode() => {'style_control': styleControl.toTfJson()};
}

/// Typed helper for the `encoder_settings.caption_descriptions.destination_settings.webvtt_destination_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsWebvttDestinationSettings {
  const MedialiveChannelEncoderSettingsCaptionDescriptionsDestinationSettingsWebvttDestinationSettings({
    required this.styleControl,
  });

  final TfArg<String> styleControl;

  Map<String, Object?> encode() => {'style_control': styleControl.toTfJson()};
}

/// Typed helper for the `encoder_settings.global_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsGlobalConfiguration {
  const MedialiveChannelEncoderSettingsGlobalConfiguration({
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

  final MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehavior?
  inputLossBehavior;

  Map<String, Object?> encode() => {
    if (initialAudioGain != null)
      'initial_audio_gain': initialAudioGain!.toTfJson(),
    if (inputEndAction != null) 'input_end_action': inputEndAction!.toTfJson(),
    if (outputLockingMode != null)
      'output_locking_mode': outputLockingMode!.toTfJson(),
    if (outputTimingSource != null)
      'output_timing_source': outputTimingSource!.toTfJson(),
    if (supportLowFramerateInputs != null)
      'support_low_framerate_inputs': supportLowFramerateInputs!.toTfJson(),
    if (inputLossBehavior != null)
      'input_loss_behavior': inputLossBehavior!.encode(),
  };
}

/// Typed helper for the `encoder_settings.global_configuration.input_loss_behavior` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehavior {
  const MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehavior({
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

  final MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate?
  inputLossImageSlate;

  Map<String, Object?> encode() => {
    if (blackFrameMsec != null) 'black_frame_msec': blackFrameMsec!.toTfJson(),
    if (inputLossImageColor != null)
      'input_loss_image_color': inputLossImageColor!.toTfJson(),
    if (inputLossImageType != null)
      'input_loss_image_type': inputLossImageType!.toTfJson(),
    if (repeatFrameMsec != null)
      'repeat_frame_msec': repeatFrameMsec!.toTfJson(),
    if (inputLossImageSlate != null)
      'input_loss_image_slate': inputLossImageSlate!.encode(),
  };
}

/// Typed helper for the `encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate {
  const MedialiveChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsMotionGraphicsConfiguration {
  const MedialiveChannelEncoderSettingsMotionGraphicsConfiguration({
    this.motionGraphicsInsertion,
    required this.motionGraphicsSettings,
  });

  final TfArg<String>? motionGraphicsInsertion;

  final MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings
  motionGraphicsSettings;

  Map<String, Object?> encode() => {
    if (motionGraphicsInsertion != null)
      'motion_graphics_insertion': motionGraphicsInsertion!.toTfJson(),
    'motion_graphics_settings': motionGraphicsSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration.motion_graphics_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings {
  const MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettings({
    this.htmlMotionGraphicsSettings,
  });

  final MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettingsHtmlMotionGraphicsSettings?
  htmlMotionGraphicsSettings;

  Map<String, Object?> encode() => {
    if (htmlMotionGraphicsSettings != null)
      'html_motion_graphics_settings': htmlMotionGraphicsSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.motion_graphics_configuration.motion_graphics_settings.html_motion_graphics_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettingsHtmlMotionGraphicsSettings {
  const MedialiveChannelEncoderSettingsMotionGraphicsConfigurationMotionGraphicsSettingsHtmlMotionGraphicsSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.nielsen_configuration` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsNielsenConfiguration {
  const MedialiveChannelEncoderSettingsNielsenConfiguration({
    this.distributorId,
    this.nielsenPcmToId3Tagging,
  });

  final TfArg<String>? distributorId;

  final TfArg<String>? nielsenPcmToId3Tagging;

  Map<String, Object?> encode() => {
    if (distributorId != null) 'distributor_id': distributorId!.toTfJson(),
    if (nielsenPcmToId3Tagging != null)
      'nielsen_pcm_to_id3_tagging': nielsenPcmToId3Tagging!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroups {
  const MedialiveChannelEncoderSettingsOutputGroups({
    this.name,
    required this.outputGroupSettings,
    required this.outputs,
  });

  final TfArg<String>? name;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettings
  outputGroupSettings;

  final List<MedialiveChannelEncoderSettingsOutputGroupsOutputs> outputs;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    'output_group_settings': outputGroupSettings.encode(),
    'outputs': [for (final e in outputs) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettings({
    this.archiveGroupSettings,
    this.frameCaptureGroupSettings,
    this.hlsGroupSettings,
    this.mediaPackageGroupSettings,
    this.msSmoothGroupSettings,
    this.multiplexGroupSettings,
    this.rtmpGroupSettings,
    this.udpGroupSettings,
  });

  final List<
    MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettings
  >?
  archiveGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettings?
  frameCaptureGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettings?
  hlsGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettings?
  mediaPackageGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettings?
  msSmoothGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMultiplexGroupSettings?
  multiplexGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsRtmpGroupSettings?
  rtmpGroupSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsUdpGroupSettings?
  udpGroupSettings;

  Map<String, Object?> encode() => {
    if (archiveGroupSettings != null)
      'archive_group_settings': [
        for (final e in archiveGroupSettings!) e.encode(),
      ],
    if (frameCaptureGroupSettings != null)
      'frame_capture_group_settings': frameCaptureGroupSettings!.encode(),
    if (hlsGroupSettings != null)
      'hls_group_settings': hlsGroupSettings!.encode(),
    if (mediaPackageGroupSettings != null)
      'media_package_group_settings': mediaPackageGroupSettings!.encode(),
    if (msSmoothGroupSettings != null)
      'ms_smooth_group_settings': msSmoothGroupSettings!.encode(),
    if (multiplexGroupSettings != null)
      'multiplex_group_settings': multiplexGroupSettings!.encode(),
    if (rtmpGroupSettings != null)
      'rtmp_group_settings': rtmpGroupSettings!.encode(),
    if (udpGroupSettings != null)
      'udp_group_settings': udpGroupSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettings({
    this.rolloverInterval,
    this.archiveCdnSettings,
    required this.destination,
  });

  final TfArg<num>? rolloverInterval;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettings?
  archiveCdnSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsDestination
  destination;

  Map<String, Object?> encode() => {
    if (rolloverInterval != null)
      'rollover_interval': rolloverInterval!.toTfJson(),
    if (archiveCdnSettings != null)
      'archive_cdn_settings': archiveCdnSettings!.encode(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.archive_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettings({
    this.archiveS3Settings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettingsArchiveS3Settings?
  archiveS3Settings;

  Map<String, Object?> encode() => {
    if (archiveS3Settings != null)
      'archive_s3_settings': archiveS3Settings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.archive_cdn_settings.archive_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettingsArchiveS3Settings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsArchiveCdnSettingsArchiveS3Settings({
    this.cannedAcl,
  });

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {
    if (cannedAcl != null) 'canned_acl': cannedAcl!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.archive_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettings({
    required this.destination,
    this.frameCaptureCdnSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsDestination
  destination;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings?
  frameCaptureCdnSettings;

  Map<String, Object?> encode() => {
    'destination': destination.encode(),
    if (frameCaptureCdnSettings != null)
      'frame_capture_cdn_settings': frameCaptureCdnSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings.frame_capture_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettings({
    this.frameCaptureS3Settings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings?
  frameCaptureS3Settings;

  Map<String, Object?> encode() => {
    if (frameCaptureS3Settings != null)
      'frame_capture_s3_settings': frameCaptureS3Settings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.frame_capture_group_settings.frame_capture_cdn_settings.frame_capture_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings({
    this.cannedAcl,
  });

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {
    if (cannedAcl != null) 'canned_acl': cannedAcl!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettings({
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

  final TfArg<List<Object?>>? adMarkers;

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

  final List<
    MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsCaptionLanguageMappings
  >?
  captionLanguageMappings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsDestination
  destination;

  final List<
    MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettings
  >?
  hlsCdnSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettings?
  keyProviderSettings;

  Map<String, Object?> encode() => {
    if (adMarkers != null) 'ad_markers': adMarkers!.toTfJson(),
    if (baseUrlContent != null) 'base_url_content': baseUrlContent!.toTfJson(),
    if (baseUrlContent1 != null)
      'base_url_content1': baseUrlContent1!.toTfJson(),
    if (baseUrlManifest != null)
      'base_url_manifest': baseUrlManifest!.toTfJson(),
    if (baseUrlManifest1 != null)
      'base_url_manifest1': baseUrlManifest1!.toTfJson(),
    if (captionLanguageSetting != null)
      'caption_language_setting': captionLanguageSetting!.toTfJson(),
    if (clientCache != null) 'client_cache': clientCache!.toTfJson(),
    if (codecSpecification != null)
      'codec_specification': codecSpecification!.toTfJson(),
    if (constantIv != null) 'constant_iv': constantIv!.toTfJson(),
    if (directoryStructure != null)
      'directory_structure': directoryStructure!.toTfJson(),
    if (discontinuityTags != null)
      'discontinuity_tags': discontinuityTags!.toTfJson(),
    if (encryptionType != null) 'encryption_type': encryptionType!.toTfJson(),
    if (hlsId3SegmentTagging != null)
      'hls_id3_segment_tagging': hlsId3SegmentTagging!.toTfJson(),
    if (iframeOnlyPlaylists != null)
      'iframe_only_playlists': iframeOnlyPlaylists!.toTfJson(),
    if (incompleteSegmentBehavior != null)
      'incomplete_segment_behavior': incompleteSegmentBehavior!.toTfJson(),
    if (indexNSegments != null) 'index_n_segments': indexNSegments!.toTfJson(),
    if (inputLossAction != null)
      'input_loss_action': inputLossAction!.toTfJson(),
    if (ivInManifest != null) 'iv_in_manifest': ivInManifest!.toTfJson(),
    if (ivSource != null) 'iv_source': ivSource!.toTfJson(),
    if (keepSegments != null) 'keep_segments': keepSegments!.toTfJson(),
    if (keyFormat != null) 'key_format': keyFormat!.toTfJson(),
    if (keyFormatVersions != null)
      'key_format_versions': keyFormatVersions!.toTfJson(),
    if (manifestCompression != null)
      'manifest_compression': manifestCompression!.toTfJson(),
    if (manifestDurationFormat != null)
      'manifest_duration_format': manifestDurationFormat!.toTfJson(),
    if (minSegmentLength != null)
      'min_segment_length': minSegmentLength!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (outputSelection != null)
      'output_selection': outputSelection!.toTfJson(),
    if (programDateTime != null)
      'program_date_time': programDateTime!.toTfJson(),
    if (programDateTimeClock != null)
      'program_date_time_clock': programDateTimeClock!.toTfJson(),
    if (programDateTimePeriod != null)
      'program_date_time_period': programDateTimePeriod!.toTfJson(),
    if (redundantManifest != null)
      'redundant_manifest': redundantManifest!.toTfJson(),
    if (segmentLength != null) 'segment_length': segmentLength!.toTfJson(),
    if (segmentsPerSubdirectory != null)
      'segments_per_subdirectory': segmentsPerSubdirectory!.toTfJson(),
    if (streamInfResolution != null)
      'stream_inf_resolution': streamInfResolution!.toTfJson(),
    if (timedMetadataId3Frame != null)
      'timed_metadata_id3_frame': timedMetadataId3Frame!.toTfJson(),
    if (timedMetadataId3Period != null)
      'timed_metadata_id3_period': timedMetadataId3Period!.toTfJson(),
    if (timestampDeltaMilliseconds != null)
      'timestamp_delta_milliseconds': timestampDeltaMilliseconds!.toTfJson(),
    if (tsFileMode != null) 'ts_file_mode': tsFileMode!.toTfJson(),
    if (captionLanguageMappings != null)
      'caption_language_mappings': [
        for (final e in captionLanguageMappings!) e.encode(),
      ],
    'destination': destination.encode(),
    if (hlsCdnSettings != null)
      'hls_cdn_settings': [for (final e in hlsCdnSettings!) e.encode()],
    if (keyProviderSettings != null)
      'key_provider_settings': keyProviderSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.caption_language_mappings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsCaptionLanguageMappings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsCaptionLanguageMappings({
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

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettings({
    this.hlsAkamaiSettings,
    this.hlsBasicPutSettings,
    this.hlsMediaStoreSettings,
    this.hlsS3Settings,
    this.hlsWebdavSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsAkamaiSettings?
  hlsAkamaiSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsBasicPutSettings?
  hlsBasicPutSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsMediaStoreSettings?
  hlsMediaStoreSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsS3Settings?
  hlsS3Settings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsWebdavSettings?
  hlsWebdavSettings;

  Map<String, Object?> encode() => {
    if (hlsAkamaiSettings != null)
      'hls_akamai_settings': hlsAkamaiSettings!.encode(),
    if (hlsBasicPutSettings != null)
      'hls_basic_put_settings': hlsBasicPutSettings!.encode(),
    if (hlsMediaStoreSettings != null)
      'hls_media_store_settings': hlsMediaStoreSettings!.encode(),
    if (hlsS3Settings != null) 'hls_s3_settings': hlsS3Settings!.encode(),
    if (hlsWebdavSettings != null)
      'hls_webdav_settings': hlsWebdavSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsAkamaiSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsAkamaiSettings({
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
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (filecacheDuration != null)
      'filecache_duration': filecacheDuration!.toTfJson(),
    if (httpTransferMode != null)
      'http_transfer_mode': httpTransferMode!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
    if (salt != null) 'salt': salt!.toTfJson(),
    if (token != null) 'token': token!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsBasicPutSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsBasicPutSettings({
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
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (filecacheDuration != null)
      'filecache_duration': filecacheDuration!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsMediaStoreSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsMediaStoreSettings({
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
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (filecacheDuration != null)
      'filecache_duration': filecacheDuration!.toTfJson(),
    if (mediaStoreStorageClass != null)
      'media_store_storage_class': mediaStoreStorageClass!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_s3_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsS3Settings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsS3Settings({
    this.cannedAcl,
  });

  final TfArg<String>? cannedAcl;

  Map<String, Object?> encode() => {
    if (cannedAcl != null) 'canned_acl': cannedAcl!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsWebdavSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsHlsCdnSettingsHlsWebdavSettings({
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
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (filecacheDuration != null)
      'filecache_duration': filecacheDuration!.toTfJson(),
    if (httpTransferMode != null)
      'http_transfer_mode': httpTransferMode!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettings({
    this.staticKeySettings,
  });

  final List<
    MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettings
  >?
  staticKeySettings;

  Map<String, Object?> encode() => {
    if (staticKeySettings != null)
      'static_key_settings': [for (final e in staticKeySettings!) e.encode()],
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings.static_key_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettings({
    required this.staticKeyValue,
    this.keyProviderServer,
  });

  final TfArg<String> staticKeyValue;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingsKeyProviderServer?
  keyProviderServer;

  Map<String, Object?> encode() => {
    'static_key_value': staticKeyValue.toTfJson(),
    if (keyProviderServer != null)
      'key_provider_server': keyProviderServer!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingsKeyProviderServer {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingsKeyProviderServer({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.media_package_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettings({
    required this.destination,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettingsDestination
  destination;

  Map<String, Object?> encode() => {'destination': destination.encode()};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.media_package_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMediaPackageGroupSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.ms_smooth_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettings({
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

  final MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettingsDestination
  destination;

  Map<String, Object?> encode() => {
    if (acquisitionPointId != null)
      'acquisition_point_id': acquisitionPointId!.toTfJson(),
    if (audioOnlyTimecodeControl != null)
      'audio_only_timecode_control': audioOnlyTimecodeControl!.toTfJson(),
    if (certificateMode != null)
      'certificate_mode': certificateMode!.toTfJson(),
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (eventId != null) 'event_id': eventId!.toTfJson(),
    if (eventIdMode != null) 'event_id_mode': eventIdMode!.toTfJson(),
    if (eventStopBehavior != null)
      'event_stop_behavior': eventStopBehavior!.toTfJson(),
    if (filecacheDuration != null)
      'filecache_duration': filecacheDuration!.toTfJson(),
    if (fragmentLength != null) 'fragment_length': fragmentLength!.toTfJson(),
    if (inputLossAction != null)
      'input_loss_action': inputLossAction!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
    if (segmentationMode != null)
      'segmentation_mode': segmentationMode!.toTfJson(),
    if (sendDelayMs != null) 'send_delay_ms': sendDelayMs!.toTfJson(),
    if (sparseTrackType != null)
      'sparse_track_type': sparseTrackType!.toTfJson(),
    if (streamManifestBehavior != null)
      'stream_manifest_behavior': streamManifestBehavior!.toTfJson(),
    if (timestampOffset != null)
      'timestamp_offset': timestampOffset!.toTfJson(),
    if (timestampOffsetMode != null)
      'timestamp_offset_mode': timestampOffsetMode!.toTfJson(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.ms_smooth_group_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMsSmoothGroupSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.multiplex_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMultiplexGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsMultiplexGroupSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.rtmp_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsRtmpGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsRtmpGroupSettings({
    this.adMarkers,
    this.authenticationScheme,
    this.cacheFullBehavior,
    this.cacheLength,
    this.captionData,
    this.inputLossAction,
    this.restartDelay,
  });

  final TfArg<List<Object?>>? adMarkers;

  final TfArg<String>? authenticationScheme;

  final TfArg<String>? cacheFullBehavior;

  final TfArg<num>? cacheLength;

  final TfArg<String>? captionData;

  final TfArg<String>? inputLossAction;

  final TfArg<num>? restartDelay;

  Map<String, Object?> encode() => {
    if (adMarkers != null) 'ad_markers': adMarkers!.toTfJson(),
    if (authenticationScheme != null)
      'authentication_scheme': authenticationScheme!.toTfJson(),
    if (cacheFullBehavior != null)
      'cache_full_behavior': cacheFullBehavior!.toTfJson(),
    if (cacheLength != null) 'cache_length': cacheLength!.toTfJson(),
    if (captionData != null) 'caption_data': captionData!.toTfJson(),
    if (inputLossAction != null)
      'input_loss_action': inputLossAction!.toTfJson(),
    if (restartDelay != null) 'restart_delay': restartDelay!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.output_group_settings.udp_group_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsUdpGroupSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsUdpGroupSettings({
    this.inputLossAction,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
  });

  final TfArg<String>? inputLossAction;

  final TfArg<String>? timedMetadataId3Frame;

  final TfArg<num>? timedMetadataId3Period;

  Map<String, Object?> encode() => {
    if (inputLossAction != null)
      'input_loss_action': inputLossAction!.toTfJson(),
    if (timedMetadataId3Frame != null)
      'timed_metadata_id3_frame': timedMetadataId3Frame!.toTfJson(),
    if (timedMetadataId3Period != null)
      'timed_metadata_id3_period': timedMetadataId3Period!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputs {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputs({
    this.audioDescriptionNames,
    this.captionDescriptionNames,
    this.outputName,
    this.videoDescriptionName,
    required this.outputSettings,
  });

  final TfArg<List<Object?>>? audioDescriptionNames;

  final TfArg<List<Object?>>? captionDescriptionNames;

  final TfArg<String>? outputName;

  final TfArg<String>? videoDescriptionName;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettings
  outputSettings;

  Map<String, Object?> encode() => {
    if (audioDescriptionNames != null)
      'audio_description_names': audioDescriptionNames!.toTfJson(),
    if (captionDescriptionNames != null)
      'caption_description_names': captionDescriptionNames!.toTfJson(),
    if (outputName != null) 'output_name': outputName!.toTfJson(),
    if (videoDescriptionName != null)
      'video_description_name': videoDescriptionName!.toTfJson(),
    'output_settings': outputSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettings({
    this.archiveOutputSettings,
    this.frameCaptureOutputSettings,
    this.hlsOutputSettings,
    this.mediaPackageOutputSettings,
    this.msSmoothOutputSettings,
    this.multiplexOutputSettings,
    this.rtmpOutputSettings,
    this.udpOutputSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettings?
  archiveOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsFrameCaptureOutputSettings?
  frameCaptureOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettings?
  hlsOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMediaPackageOutputSettings?
  mediaPackageOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMsSmoothOutputSettings?
  msSmoothOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettings?
  multiplexOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettings?
  rtmpOutputSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettings?
  udpOutputSettings;

  Map<String, Object?> encode() => {
    if (archiveOutputSettings != null)
      'archive_output_settings': archiveOutputSettings!.encode(),
    if (frameCaptureOutputSettings != null)
      'frame_capture_output_settings': frameCaptureOutputSettings!.encode(),
    if (hlsOutputSettings != null)
      'hls_output_settings': hlsOutputSettings!.encode(),
    if (mediaPackageOutputSettings != null)
      'media_package_output_settings': mediaPackageOutputSettings!.encode(),
    if (msSmoothOutputSettings != null)
      'ms_smooth_output_settings': msSmoothOutputSettings!.encode(),
    if (multiplexOutputSettings != null)
      'multiplex_output_settings': multiplexOutputSettings!.encode(),
    if (rtmpOutputSettings != null)
      'rtmp_output_settings': rtmpOutputSettings!.encode(),
    if (udpOutputSettings != null)
      'udp_output_settings': udpOutputSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettings({
    this.extension,
    this.nameModifier,
    this.containerSettings,
  });

  final TfArg<String>? extension;

  final TfArg<String>? nameModifier;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettings?
  containerSettings;

  Map<String, Object?> encode() => {
    if (extension != null) 'extension': extension!.toTfJson(),
    if (nameModifier != null) 'name_modifier': nameModifier!.toTfJson(),
    if (containerSettings != null)
      'container_settings': containerSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettings({
    this.m2tsSettings,
    this.rawSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings?
  m2tsSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsRawSettings?
  rawSettings;

  Map<String, Object?> encode() => {
    if (m2tsSettings != null) 'm2ts_settings': m2tsSettings!.encode(),
    if (rawSettings != null) 'raw_settings': rawSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettings({
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

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings?
  dvbNitSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings?
  dvbSdtSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings?
  dvbTdtSettings;

  Map<String, Object?> encode() => {
    if (absentInputAudioBehavior != null)
      'absent_input_audio_behavior': absentInputAudioBehavior!.toTfJson(),
    if (arib != null) 'arib': arib!.toTfJson(),
    if (aribCaptionsPid != null)
      'arib_captions_pid': aribCaptionsPid!.toTfJson(),
    if (aribCaptionsPidControl != null)
      'arib_captions_pid_control': aribCaptionsPidControl!.toTfJson(),
    if (audioBufferModel != null)
      'audio_buffer_model': audioBufferModel!.toTfJson(),
    if (audioFramesPerPes != null)
      'audio_frames_per_pes': audioFramesPerPes!.toTfJson(),
    if (audioPids != null) 'audio_pids': audioPids!.toTfJson(),
    if (audioStreamType != null)
      'audio_stream_type': audioStreamType!.toTfJson(),
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (bufferModel != null) 'buffer_model': bufferModel!.toTfJson(),
    if (ccDescriptor != null) 'cc_descriptor': ccDescriptor!.toTfJson(),
    if (dvbSubPids != null) 'dvb_sub_pids': dvbSubPids!.toTfJson(),
    if (dvbTeletextPid != null) 'dvb_teletext_pid': dvbTeletextPid!.toTfJson(),
    if (ebif != null) 'ebif': ebif!.toTfJson(),
    if (ebpAudioInterval != null)
      'ebp_audio_interval': ebpAudioInterval!.toTfJson(),
    if (ebpLookaheadMs != null) 'ebp_lookahead_ms': ebpLookaheadMs!.toTfJson(),
    if (ebpPlacement != null) 'ebp_placement': ebpPlacement!.toTfJson(),
    if (ecmPid != null) 'ecm_pid': ecmPid!.toTfJson(),
    if (esRateInPes != null) 'es_rate_in_pes': esRateInPes!.toTfJson(),
    if (etvPlatformPid != null) 'etv_platform_pid': etvPlatformPid!.toTfJson(),
    if (etvSignalPid != null) 'etv_signal_pid': etvSignalPid!.toTfJson(),
    if (fragmentTime != null) 'fragment_time': fragmentTime!.toTfJson(),
    if (klv != null) 'klv': klv!.toTfJson(),
    if (klvDataPids != null) 'klv_data_pids': klvDataPids!.toTfJson(),
    if (nielsenId3Behavior != null)
      'nielsen_id3_behavior': nielsenId3Behavior!.toTfJson(),
    if (nullPacketBitrate != null)
      'null_packet_bitrate': nullPacketBitrate!.toTfJson(),
    if (patInterval != null) 'pat_interval': patInterval!.toTfJson(),
    if (pcrControl != null) 'pcr_control': pcrControl!.toTfJson(),
    if (pcrPeriod != null) 'pcr_period': pcrPeriod!.toTfJson(),
    if (pcrPid != null) 'pcr_pid': pcrPid!.toTfJson(),
    if (pmtInterval != null) 'pmt_interval': pmtInterval!.toTfJson(),
    if (pmtPid != null) 'pmt_pid': pmtPid!.toTfJson(),
    if (programNum != null) 'program_num': programNum!.toTfJson(),
    if (rateMode != null) 'rate_mode': rateMode!.toTfJson(),
    if (scte27Pids != null) 'scte27_pids': scte27Pids!.toTfJson(),
    if (scte35Control != null) 'scte35_control': scte35Control!.toTfJson(),
    if (scte35Pid != null) 'scte35_pid': scte35Pid!.toTfJson(),
    if (segmentationMarkers != null)
      'segmentation_markers': segmentationMarkers!.toTfJson(),
    if (segmentationStyle != null)
      'segmentation_style': segmentationStyle!.toTfJson(),
    if (segmentationTime != null)
      'segmentation_time': segmentationTime!.toTfJson(),
    if (timedMetadataBehavior != null)
      'timed_metadata_behavior': timedMetadataBehavior!.toTfJson(),
    if (timedMetadataPid != null)
      'timed_metadata_pid': timedMetadataPid!.toTfJson(),
    if (transportStreamId != null)
      'transport_stream_id': transportStreamId!.toTfJson(),
    if (videoPid != null) 'video_pid': videoPid!.toTfJson(),
    if (dvbNitSettings != null) 'dvb_nit_settings': dvbNitSettings!.encode(),
    if (dvbSdtSettings != null) 'dvb_sdt_settings': dvbSdtSettings!.encode(),
    if (dvbTdtSettings != null) 'dvb_tdt_settings': dvbTdtSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings({
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
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
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
    if (outputSdt != null) 'output_sdt': outputSdt!.toTfJson(),
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (serviceProviderName != null)
      'service_provider_name': serviceProviderName!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings({
    this.repInterval,
  });

  final TfArg<num>? repInterval;

  Map<String, Object?> encode() => {
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.archive_output_settings.container_settings.raw_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsRawSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettingsContainerSettingsRawSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.frame_capture_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsFrameCaptureOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsFrameCaptureOutputSettings({
    this.nameModifier,
  });

  final TfArg<String>? nameModifier;

  Map<String, Object?> encode() => {
    if (nameModifier != null) 'name_modifier': nameModifier!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
    this.segmentModifier,
    required this.hlsSettings,
  });

  final TfArg<String>? h265PackagingType;

  final TfArg<String>? nameModifier;

  final TfArg<String>? segmentModifier;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettings
  hlsSettings;

  Map<String, Object?> encode() => {
    if (h265PackagingType != null)
      'h265_packaging_type': h265PackagingType!.toTfJson(),
    if (nameModifier != null) 'name_modifier': nameModifier!.toTfJson(),
    if (segmentModifier != null)
      'segment_modifier': segmentModifier!.toTfJson(),
    'hls_settings': hlsSettings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettings({
    this.audioOnlyHlsSettings,
    this.fmp4HlsSettings,
    this.frameCaptureHlsSettings,
    this.standardHlsSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings?
  audioOnlyHlsSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings?
  fmp4HlsSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFrameCaptureHlsSettings?
  frameCaptureHlsSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings?
  standardHlsSettings;

  Map<String, Object?> encode() => {
    if (audioOnlyHlsSettings != null)
      'audio_only_hls_settings': audioOnlyHlsSettings!.encode(),
    if (fmp4HlsSettings != null) 'fmp4_hls_settings': fmp4HlsSettings!.encode(),
    if (frameCaptureHlsSettings != null)
      'frame_capture_hls_settings': frameCaptureHlsSettings!.encode(),
    if (standardHlsSettings != null)
      'standard_hls_settings': standardHlsSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.audio_only_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettings({
    this.audioGroupId,
    this.audioTrackType,
    this.segmentType,
    this.audioOnlyImage,
  });

  final TfArg<String>? audioGroupId;

  final TfArg<String>? audioTrackType;

  final TfArg<String>? segmentType;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage?
  audioOnlyImage;

  Map<String, Object?> encode() => {
    if (audioGroupId != null) 'audio_group_id': audioGroupId!.toTfJson(),
    if (audioTrackType != null) 'audio_track_type': audioTrackType!.toTfJson(),
    if (segmentType != null) 'segment_type': segmentType!.toTfJson(),
    if (audioOnlyImage != null) 'audio_only_image': audioOnlyImage!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsAudioOnlyHlsSettingsAudioOnlyImage({
    this.passwordParam,
    required this.uri,
    this.username,
  });

  final TfArg<String>? passwordParam;

  final TfArg<String> uri;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    if (passwordParam != null) 'password_param': passwordParam!.toTfJson(),
    'uri': uri.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.fmp4_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings({
    this.audioRenditionSets,
    this.nielsenId3Behavior,
    this.timedMetadataBehavior,
  });

  final TfArg<String>? audioRenditionSets;

  final TfArg<String>? nielsenId3Behavior;

  final TfArg<String>? timedMetadataBehavior;

  Map<String, Object?> encode() => {
    if (audioRenditionSets != null)
      'audio_rendition_sets': audioRenditionSets!.toTfJson(),
    if (nielsenId3Behavior != null)
      'nielsen_id3_behavior': nielsenId3Behavior!.toTfJson(),
    if (timedMetadataBehavior != null)
      'timed_metadata_behavior': timedMetadataBehavior!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.frame_capture_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFrameCaptureHlsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsFrameCaptureHlsSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.standard_hls_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettings({
    this.audioRenditionSets,
    required this.m3u8Settings,
  });

  final TfArg<String>? audioRenditionSets;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings
  m3u8Settings;

  Map<String, Object?> encode() => {
    if (audioRenditionSets != null)
      'audio_rendition_sets': audioRenditionSets!.toTfJson(),
    'm3u8_settings': m3u8Settings.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u8_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsHlsOutputSettingsHlsSettingsStandardHlsSettingsM3u8Settings({
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
    if (audioFramesPerPes != null)
      'audio_frames_per_pes': audioFramesPerPes!.toTfJson(),
    if (audioPids != null) 'audio_pids': audioPids!.toTfJson(),
    if (ecmPid != null) 'ecm_pid': ecmPid!.toTfJson(),
    if (nielsenId3Behavior != null)
      'nielsen_id3_behavior': nielsenId3Behavior!.toTfJson(),
    if (patInterval != null) 'pat_interval': patInterval!.toTfJson(),
    if (pcrControl != null) 'pcr_control': pcrControl!.toTfJson(),
    if (pcrPeriod != null) 'pcr_period': pcrPeriod!.toTfJson(),
    if (pcrPid != null) 'pcr_pid': pcrPid!.toTfJson(),
    if (pmtInterval != null) 'pmt_interval': pmtInterval!.toTfJson(),
    if (pmtPid != null) 'pmt_pid': pmtPid!.toTfJson(),
    if (programNum != null) 'program_num': programNum!.toTfJson(),
    if (scte35Behavior != null) 'scte35_behavior': scte35Behavior!.toTfJson(),
    if (scte35Pid != null) 'scte35_pid': scte35Pid!.toTfJson(),
    if (timedMetadataBehavior != null)
      'timed_metadata_behavior': timedMetadataBehavior!.toTfJson(),
    if (timedMetadataPid != null)
      'timed_metadata_pid': timedMetadataPid!.toTfJson(),
    if (transportStreamId != null)
      'transport_stream_id': transportStreamId!.toTfJson(),
    if (videoPid != null) 'video_pid': videoPid!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.media_package_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMediaPackageOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMediaPackageOutputSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.ms_smooth_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMsSmoothOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMsSmoothOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
  });

  final TfArg<String>? h265PackagingType;

  final TfArg<String>? nameModifier;

  Map<String, Object?> encode() => {
    if (h265PackagingType != null)
      'h265_packaging_type': h265PackagingType!.toTfJson(),
    if (nameModifier != null) 'name_modifier': nameModifier!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.multiplex_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettings({
    required this.destination,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettingsDestination
  destination;

  Map<String, Object?> encode() => {'destination': destination.encode()};
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.multiplex_output_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsMultiplexOutputSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.rtmp_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettings({
    this.certificateMode,
    this.connectionRetryInterval,
    this.numRetries,
    required this.destination,
  });

  final TfArg<String>? certificateMode;

  final TfArg<num>? connectionRetryInterval;

  final TfArg<num>? numRetries;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettingsDestination
  destination;

  Map<String, Object?> encode() => {
    if (certificateMode != null)
      'certificate_mode': certificateMode!.toTfJson(),
    if (connectionRetryInterval != null)
      'connection_retry_interval': connectionRetryInterval!.toTfJson(),
    if (numRetries != null) 'num_retries': numRetries!.toTfJson(),
    'destination': destination.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.rtmp_output_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsRtmpOutputSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettings({
    this.bufferMsec,
    required this.containerSettings,
    required this.destination,
    this.fecOutputSettings,
  });

  final TfArg<num>? bufferMsec;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettings
  containerSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsDestination
  destination;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsFecOutputSettings?
  fecOutputSettings;

  Map<String, Object?> encode() => {
    if (bufferMsec != null) 'buffer_msec': bufferMsec!.toTfJson(),
    'container_settings': containerSettings.encode(),
    'destination': destination.encode(),
    if (fecOutputSettings != null)
      'fec_output_settings': fecOutputSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettings({
    this.m2tsSettings,
  });

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings?
  m2tsSettings;

  Map<String, Object?> encode() => {
    if (m2tsSettings != null) 'm2ts_settings': m2tsSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings.m2ts_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettings({
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

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings?
  dvbNitSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings?
  dvbSdtSettings;

  final MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings?
  dvbTdtSettings;

  Map<String, Object?> encode() => {
    if (absentInputAudioBehavior != null)
      'absent_input_audio_behavior': absentInputAudioBehavior!.toTfJson(),
    if (arib != null) 'arib': arib!.toTfJson(),
    if (aribCaptionsPid != null)
      'arib_captions_pid': aribCaptionsPid!.toTfJson(),
    if (aribCaptionsPidControl != null)
      'arib_captions_pid_control': aribCaptionsPidControl!.toTfJson(),
    if (audioBufferModel != null)
      'audio_buffer_model': audioBufferModel!.toTfJson(),
    if (audioFramesPerPes != null)
      'audio_frames_per_pes': audioFramesPerPes!.toTfJson(),
    if (audioPids != null) 'audio_pids': audioPids!.toTfJson(),
    if (audioStreamType != null)
      'audio_stream_type': audioStreamType!.toTfJson(),
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (bufferModel != null) 'buffer_model': bufferModel!.toTfJson(),
    if (ccDescriptor != null) 'cc_descriptor': ccDescriptor!.toTfJson(),
    if (dvbSubPids != null) 'dvb_sub_pids': dvbSubPids!.toTfJson(),
    if (dvbTeletextPid != null) 'dvb_teletext_pid': dvbTeletextPid!.toTfJson(),
    if (ebif != null) 'ebif': ebif!.toTfJson(),
    if (ebpAudioInterval != null)
      'ebp_audio_interval': ebpAudioInterval!.toTfJson(),
    if (ebpLookaheadMs != null) 'ebp_lookahead_ms': ebpLookaheadMs!.toTfJson(),
    if (ebpPlacement != null) 'ebp_placement': ebpPlacement!.toTfJson(),
    if (ecmPid != null) 'ecm_pid': ecmPid!.toTfJson(),
    if (esRateInPes != null) 'es_rate_in_pes': esRateInPes!.toTfJson(),
    if (etvPlatformPid != null) 'etv_platform_pid': etvPlatformPid!.toTfJson(),
    if (etvSignalPid != null) 'etv_signal_pid': etvSignalPid!.toTfJson(),
    if (fragmentTime != null) 'fragment_time': fragmentTime!.toTfJson(),
    if (klv != null) 'klv': klv!.toTfJson(),
    if (klvDataPids != null) 'klv_data_pids': klvDataPids!.toTfJson(),
    if (nielsenId3Behavior != null)
      'nielsen_id3_behavior': nielsenId3Behavior!.toTfJson(),
    if (nullPacketBitrate != null)
      'null_packet_bitrate': nullPacketBitrate!.toTfJson(),
    if (patInterval != null) 'pat_interval': patInterval!.toTfJson(),
    if (pcrControl != null) 'pcr_control': pcrControl!.toTfJson(),
    if (pcrPeriod != null) 'pcr_period': pcrPeriod!.toTfJson(),
    if (pcrPid != null) 'pcr_pid': pcrPid!.toTfJson(),
    if (pmtInterval != null) 'pmt_interval': pmtInterval!.toTfJson(),
    if (pmtPid != null) 'pmt_pid': pmtPid!.toTfJson(),
    if (programNum != null) 'program_num': programNum!.toTfJson(),
    if (rateMode != null) 'rate_mode': rateMode!.toTfJson(),
    if (scte27Pids != null) 'scte27_pids': scte27Pids!.toTfJson(),
    if (scte35Control != null) 'scte35_control': scte35Control!.toTfJson(),
    if (scte35Pid != null) 'scte35_pid': scte35Pid!.toTfJson(),
    if (segmentationMarkers != null)
      'segmentation_markers': segmentationMarkers!.toTfJson(),
    if (segmentationStyle != null)
      'segmentation_style': segmentationStyle!.toTfJson(),
    if (segmentationTime != null)
      'segmentation_time': segmentationTime!.toTfJson(),
    if (timedMetadataBehavior != null)
      'timed_metadata_behavior': timedMetadataBehavior!.toTfJson(),
    if (timedMetadataPid != null)
      'timed_metadata_pid': timedMetadataPid!.toTfJson(),
    if (transportStreamId != null)
      'transport_stream_id': transportStreamId!.toTfJson(),
    if (videoPid != null) 'video_pid': videoPid!.toTfJson(),
    if (dvbNitSettings != null) 'dvb_nit_settings': dvbNitSettings!.encode(),
    if (dvbSdtSettings != null) 'dvb_sdt_settings': dvbSdtSettings!.encode(),
    if (dvbTdtSettings != null) 'dvb_tdt_settings': dvbTdtSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbNitSettings({
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
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbSdtSettings({
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
    if (outputSdt != null) 'output_sdt': outputSdt!.toTfJson(),
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (serviceProviderName != null)
      'service_provider_name': serviceProviderName!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsContainerSettingsM2tsSettingsDvbTdtSettings({
    this.repInterval,
  });

  final TfArg<num>? repInterval;

  Map<String, Object?> encode() => {
    if (repInterval != null) 'rep_interval': repInterval!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.destination` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsDestination {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsDestination({
    required this.destinationRefId,
  });

  final TfArg<String> destinationRefId;

  Map<String, Object?> encode() => {
    'destination_ref_id': destinationRefId.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.output_groups.outputs.output_settings.udp_output_settings.fec_output_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsFecOutputSettings {
  const MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsUdpOutputSettingsFecOutputSettings({
    this.columnDepth,
    this.includeFec,
    this.rowLength,
  });

  final TfArg<num>? columnDepth;

  final TfArg<String>? includeFec;

  final TfArg<num>? rowLength;

  Map<String, Object?> encode() => {
    if (columnDepth != null) 'column_depth': columnDepth!.toTfJson(),
    if (includeFec != null) 'include_fec': includeFec!.toTfJson(),
    if (rowLength != null) 'row_length': rowLength!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.timecode_config` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsTimecodeConfig {
  const MedialiveChannelEncoderSettingsTimecodeConfig({
    required this.source,
    this.syncThreshold,
  });

  final TfArg<String> source;

  final TfArg<num>? syncThreshold;

  Map<String, Object?> encode() => {
    'source': source.toTfJson(),
    if (syncThreshold != null) 'sync_threshold': syncThreshold!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptions {
  const MedialiveChannelEncoderSettingsVideoDescriptions({
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

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettings?
  codecSettings;

  Map<String, Object?> encode() => {
    if (height != null) 'height': height!.toTfJson(),
    'name': name.toTfJson(),
    if (respondToAfd != null) 'respond_to_afd': respondToAfd!.toTfJson(),
    if (scalingBehavior != null)
      'scaling_behavior': scalingBehavior!.toTfJson(),
    if (sharpness != null) 'sharpness': sharpness!.toTfJson(),
    if (width != null) 'width': width!.toTfJson(),
    if (codecSettings != null) 'codec_settings': codecSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettings({
    this.frameCaptureSettings,
    this.h264Settings,
    this.h265Settings,
  });

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsFrameCaptureSettings?
  frameCaptureSettings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264Settings?
  h264Settings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265Settings?
  h265Settings;

  Map<String, Object?> encode() => {
    if (frameCaptureSettings != null)
      'frame_capture_settings': frameCaptureSettings!.encode(),
    if (h264Settings != null) 'h264_settings': h264Settings!.encode(),
    if (h265Settings != null) 'h265_settings': h265Settings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.frame_capture_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsFrameCaptureSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsFrameCaptureSettings({
    this.captureInterval,
    this.captureIntervalUnits,
  });

  final TfArg<num>? captureInterval;

  final TfArg<String>? captureIntervalUnits;

  Map<String, Object?> encode() => {
    if (captureInterval != null)
      'capture_interval': captureInterval!.toTfJson(),
    if (captureIntervalUnits != null)
      'capture_interval_units': captureIntervalUnits!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264Settings({
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

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettings?
  filterSettings;

  Map<String, Object?> encode() => {
    if (adaptiveQuantization != null)
      'adaptive_quantization': adaptiveQuantization!.toTfJson(),
    if (afdSignaling != null) 'afd_signaling': afdSignaling!.toTfJson(),
    if (bitrate != null) 'bitrate': bitrate!.toTfJson(),
    if (bufFillPct != null) 'buf_fill_pct': bufFillPct!.toTfJson(),
    if (bufSize != null) 'buf_size': bufSize!.toTfJson(),
    if (colorMetadata != null) 'color_metadata': colorMetadata!.toTfJson(),
    if (entropyEncoding != null)
      'entropy_encoding': entropyEncoding!.toTfJson(),
    if (fixedAfd != null) 'fixed_afd': fixedAfd!.toTfJson(),
    if (flickerAq != null) 'flicker_aq': flickerAq!.toTfJson(),
    if (forceFieldPictures != null)
      'force_field_pictures': forceFieldPictures!.toTfJson(),
    if (framerateControl != null)
      'framerate_control': framerateControl!.toTfJson(),
    if (framerateDenominator != null)
      'framerate_denominator': framerateDenominator!.toTfJson(),
    if (framerateNumerator != null)
      'framerate_numerator': framerateNumerator!.toTfJson(),
    if (gopBReference != null) 'gop_b_reference': gopBReference!.toTfJson(),
    if (gopClosedCadence != null)
      'gop_closed_cadence': gopClosedCadence!.toTfJson(),
    if (gopNumBFrames != null) 'gop_num_b_frames': gopNumBFrames!.toTfJson(),
    if (gopSize != null) 'gop_size': gopSize!.toTfJson(),
    if (gopSizeUnits != null) 'gop_size_units': gopSizeUnits!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
    if (lookAheadRateControl != null)
      'look_ahead_rate_control': lookAheadRateControl!.toTfJson(),
    if (maxBitrate != null) 'max_bitrate': maxBitrate!.toTfJson(),
    if (minIInterval != null) 'min_i_interval': minIInterval!.toTfJson(),
    if (numRefFrames != null) 'num_ref_frames': numRefFrames!.toTfJson(),
    if (parControl != null) 'par_control': parControl!.toTfJson(),
    if (parDenominator != null) 'par_denominator': parDenominator!.toTfJson(),
    if (parNumerator != null) 'par_numerator': parNumerator!.toTfJson(),
    if (profile != null) 'profile': profile!.toTfJson(),
    if (qualityLevel != null) 'quality_level': qualityLevel!.toTfJson(),
    if (qvbrQualityLevel != null)
      'qvbr_quality_level': qvbrQualityLevel!.toTfJson(),
    if (rateControlMode != null)
      'rate_control_mode': rateControlMode!.toTfJson(),
    if (scanType != null) 'scan_type': scanType!.toTfJson(),
    if (sceneChangeDetect != null)
      'scene_change_detect': sceneChangeDetect!.toTfJson(),
    if (slices != null) 'slices': slices!.toTfJson(),
    if (softness != null) 'softness': softness!.toTfJson(),
    if (spatialAq != null) 'spatial_aq': spatialAq!.toTfJson(),
    if (subgopLength != null) 'subgop_length': subgopLength!.toTfJson(),
    if (syntax != null) 'syntax': syntax!.toTfJson(),
    if (temporalAq != null) 'temporal_aq': temporalAq!.toTfJson(),
    if (timecodeInsertion != null)
      'timecode_insertion': timecodeInsertion!.toTfJson(),
    if (filterSettings != null) 'filter_settings': filterSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings.filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettings({
    this.temporalFilterSettings,
  });

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings?
  temporalFilterSettings;

  Map<String, Object?> encode() => {
    if (temporalFilterSettings != null)
      'temporal_filter_settings': temporalFilterSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h264_settings.filter_settings.temporal_filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  final TfArg<String>? postFilterSharpening;

  final TfArg<String>? strength;

  Map<String, Object?> encode() => {
    if (postFilterSharpening != null)
      'post_filter_sharpening': postFilterSharpening!.toTfJson(),
    if (strength != null) 'strength': strength!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265Settings({
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

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettings?
  colorSpaceSettings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettings?
  filterSettings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsTimecodeBurninSettings?
  timecodeBurninSettings;

  Map<String, Object?> encode() => {
    if (adaptiveQuantization != null)
      'adaptive_quantization': adaptiveQuantization!.toTfJson(),
    if (afdSignaling != null) 'afd_signaling': afdSignaling!.toTfJson(),
    if (alternativeTransferFunction != null)
      'alternative_transfer_function': alternativeTransferFunction!.toTfJson(),
    'bitrate': bitrate.toTfJson(),
    if (bufSize != null) 'buf_size': bufSize!.toTfJson(),
    if (colorMetadata != null) 'color_metadata': colorMetadata!.toTfJson(),
    if (fixedAfd != null) 'fixed_afd': fixedAfd!.toTfJson(),
    if (flickerAq != null) 'flicker_aq': flickerAq!.toTfJson(),
    'framerate_denominator': framerateDenominator.toTfJson(),
    'framerate_numerator': framerateNumerator.toTfJson(),
    if (gopClosedCadence != null)
      'gop_closed_cadence': gopClosedCadence!.toTfJson(),
    if (gopSize != null) 'gop_size': gopSize!.toTfJson(),
    if (gopSizeUnits != null) 'gop_size_units': gopSizeUnits!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
    if (lookAheadRateControl != null)
      'look_ahead_rate_control': lookAheadRateControl!.toTfJson(),
    if (maxBitrate != null) 'max_bitrate': maxBitrate!.toTfJson(),
    if (minIInterval != null) 'min_i_interval': minIInterval!.toTfJson(),
    if (minQp != null) 'min_qp': minQp!.toTfJson(),
    if (mvOverPictureBoundaries != null)
      'mv_over_picture_boundaries': mvOverPictureBoundaries!.toTfJson(),
    if (mvTemporalPredictor != null)
      'mv_temporal_predictor': mvTemporalPredictor!.toTfJson(),
    if (parDenominator != null) 'par_denominator': parDenominator!.toTfJson(),
    if (parNumerator != null) 'par_numerator': parNumerator!.toTfJson(),
    if (profile != null) 'profile': profile!.toTfJson(),
    if (qvbrQualityLevel != null)
      'qvbr_quality_level': qvbrQualityLevel!.toTfJson(),
    if (rateControlMode != null)
      'rate_control_mode': rateControlMode!.toTfJson(),
    if (scanType != null) 'scan_type': scanType!.toTfJson(),
    if (sceneChangeDetect != null)
      'scene_change_detect': sceneChangeDetect!.toTfJson(),
    if (slices != null) 'slices': slices!.toTfJson(),
    if (tier != null) 'tier': tier!.toTfJson(),
    if (tileHeight != null) 'tile_height': tileHeight!.toTfJson(),
    if (tilePadding != null) 'tile_padding': tilePadding!.toTfJson(),
    if (tileWidth != null) 'tile_width': tileWidth!.toTfJson(),
    if (timecodeInsertion != null)
      'timecode_insertion': timecodeInsertion!.toTfJson(),
    if (treeblockSize != null) 'treeblock_size': treeblockSize!.toTfJson(),
    if (colorSpaceSettings != null)
      'color_space_settings': colorSpaceSettings!.encode(),
    if (filterSettings != null) 'filter_settings': filterSettings!.encode(),
    if (timecodeBurninSettings != null)
      'timecode_burnin_settings': timecodeBurninSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettings({
    this.colorSpacePassthroughSettings,
    this.dolbyVision81Settings,
    this.hdr10Settings,
    this.rec601Settings,
    this.rec709Settings,
  });

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsColorSpacePassthroughSettings?
  colorSpacePassthroughSettings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsDolbyVision81Settings?
  dolbyVision81Settings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings?
  hdr10Settings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec601Settings?
  rec601Settings;

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec709Settings?
  rec709Settings;

  Map<String, Object?> encode() => {
    if (colorSpacePassthroughSettings != null)
      'color_space_passthrough_settings': colorSpacePassthroughSettings!
          .encode(),
    if (dolbyVision81Settings != null)
      'dolby_vision81_settings': dolbyVision81Settings!.encode(),
    if (hdr10Settings != null) 'hdr10_settings': hdr10Settings!.encode(),
    if (rec601Settings != null) 'rec601_settings': rec601Settings!.encode(),
    if (rec709Settings != null) 'rec709_settings': rec709Settings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.color_space_passthrough_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsColorSpacePassthroughSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsColorSpacePassthroughSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.dolby_vision81_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsDolbyVision81Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsDolbyVision81Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.hdr10_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings({
    this.maxCll,
    this.maxFall,
  });

  final TfArg<num>? maxCll;

  final TfArg<num>? maxFall;

  Map<String, Object?> encode() => {
    if (maxCll != null) 'max_cll': maxCll!.toTfJson(),
    if (maxFall != null) 'max_fall': maxFall!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.rec601_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec601Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec601Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.color_space_settings.rec709_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec709Settings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsColorSpaceSettingsRec709Settings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettings({
    this.temporalFilterSettings,
  });

  final MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings?
  temporalFilterSettings;

  Map<String, Object?> encode() => {
    if (temporalFilterSettings != null)
      'temporal_filter_settings': temporalFilterSettings!.encode(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.filter_settings.temporal_filter_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  final TfArg<String>? postFilterSharpening;

  final TfArg<String>? strength;

  Map<String, Object?> encode() => {
    if (postFilterSharpening != null)
      'post_filter_sharpening': postFilterSharpening!.toTfJson(),
    if (strength != null) 'strength': strength!.toTfJson(),
  };
}

/// Typed helper for the `encoder_settings.video_descriptions.codec_settings.h265_settings.timecode_burnin_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsTimecodeBurninSettings {
  const MedialiveChannelEncoderSettingsVideoDescriptionsCodecSettingsH265SettingsTimecodeBurninSettings({
    this.prefix,
    this.timecodeBurninFontSize,
    this.timecodeBurninPosition,
  });

  final TfArg<String>? prefix;

  final TfArg<String>? timecodeBurninFontSize;

  final TfArg<String>? timecodeBurninPosition;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (timecodeBurninFontSize != null)
      'timecode_burnin_font_size': timecodeBurninFontSize!.toTfJson(),
    if (timecodeBurninPosition != null)
      'timecode_burnin_position': timecodeBurninPosition!.toTfJson(),
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

  final MedialiveChannelInputAttachmentsAutomaticInputFailoverSettings?
  automaticInputFailoverSettings;

  final MedialiveChannelInputAttachmentsInputSettings? inputSettings;

  Map<String, Object?> encode() => {
    'input_attachment_name': inputAttachmentName.toTfJson(),
    'input_id': inputId.toTfJson(),
    if (automaticInputFailoverSettings != null)
      'automatic_input_failover_settings': automaticInputFailoverSettings!
          .encode(),
    if (inputSettings != null) 'input_settings': inputSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettings {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettings({
    this.errorClearTimeMsec,
    this.inputPreference,
    required this.secondaryInputId,
    this.failoverCondition,
  });

  final TfArg<num>? errorClearTimeMsec;

  final TfArg<String>? inputPreference;

  final TfArg<String> secondaryInputId;

  final List<
    MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverCondition
  >?
  failoverCondition;

  Map<String, Object?> encode() => {
    if (errorClearTimeMsec != null)
      'error_clear_time_msec': errorClearTimeMsec!.toTfJson(),
    if (inputPreference != null)
      'input_preference': inputPreference!.toTfJson(),
    'secondary_input_id': secondaryInputId.toTfJson(),
    if (failoverCondition != null)
      'failover_condition': [for (final e in failoverCondition!) e.encode()],
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverCondition {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverCondition({
    this.failoverConditionSettings,
  });

  final MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings?
  failoverConditionSettings;

  Map<String, Object?> encode() => {
    if (failoverConditionSettings != null)
      'failover_condition_settings': failoverConditionSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettings({
    this.audioSilenceSettings,
    this.inputLossSettings,
    this.videoBlackSettings,
  });

  final MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings?
  audioSilenceSettings;

  final MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings?
  inputLossSettings;

  final MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings?
  videoBlackSettings;

  Map<String, Object?> encode() => {
    if (audioSilenceSettings != null)
      'audio_silence_settings': audioSilenceSettings!.encode(),
    if (inputLossSettings != null)
      'input_loss_settings': inputLossSettings!.encode(),
    if (videoBlackSettings != null)
      'video_black_settings': videoBlackSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.audio_silence_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsAudioSilenceSettings({
    required this.audioSelectorName,
    this.audioSilenceThresholdMsec,
  });

  final TfArg<String> audioSelectorName;

  final TfArg<num>? audioSilenceThresholdMsec;

  Map<String, Object?> encode() => {
    'audio_selector_name': audioSelectorName.toTfJson(),
    if (audioSilenceThresholdMsec != null)
      'audio_silence_threshold_msec': audioSilenceThresholdMsec!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.input_loss_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsInputLossSettings({
    this.inputLossThresholdMsec,
  });

  final TfArg<num>? inputLossThresholdMsec;

  Map<String, Object?> encode() => {
    if (inputLossThresholdMsec != null)
      'input_loss_threshold_msec': inputLossThresholdMsec!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.automatic_input_failover_settings.failover_condition.failover_condition_settings.video_black_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings {
  const MedialiveChannelInputAttachmentsAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings({
    this.blackDetectThreshold,
    this.videoBlackThresholdMsec,
  });

  final TfArg<num>? blackDetectThreshold;

  final TfArg<num>? videoBlackThresholdMsec;

  Map<String, Object?> encode() => {
    if (blackDetectThreshold != null)
      'black_detect_threshold': blackDetectThreshold!.toTfJson(),
    if (videoBlackThresholdMsec != null)
      'video_black_threshold_msec': videoBlackThresholdMsec!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettings {
  const MedialiveChannelInputAttachmentsInputSettings({
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

  final TfArg<String>? deblockFilter;

  final TfArg<String>? denoiseFilter;

  final TfArg<num>? filterStrength;

  final TfArg<String>? inputFilter;

  final TfArg<num>? scte35Pid;

  final TfArg<String>? smpte2038DataPreference;

  final TfArg<String>? sourceEndBehavior;

  final List<MedialiveChannelInputAttachmentsInputSettingsAudioSelector>?
  audioSelector;

  final List<MedialiveChannelInputAttachmentsInputSettingsCaptionSelector>?
  captionSelector;

  final MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettings?
  networkInputSettings;

  final MedialiveChannelInputAttachmentsInputSettingsVideoSelector?
  videoSelector;

  Map<String, Object?> encode() => {
    if (deblockFilter != null) 'deblock_filter': deblockFilter!.toTfJson(),
    if (denoiseFilter != null) 'denoise_filter': denoiseFilter!.toTfJson(),
    if (filterStrength != null) 'filter_strength': filterStrength!.toTfJson(),
    if (inputFilter != null) 'input_filter': inputFilter!.toTfJson(),
    if (scte35Pid != null) 'scte35_pid': scte35Pid!.toTfJson(),
    if (smpte2038DataPreference != null)
      'smpte2038_data_preference': smpte2038DataPreference!.toTfJson(),
    if (sourceEndBehavior != null)
      'source_end_behavior': sourceEndBehavior!.toTfJson(),
    if (audioSelector != null)
      'audio_selector': [for (final e in audioSelector!) e.encode()],
    if (captionSelector != null)
      'caption_selector': [for (final e in captionSelector!) e.encode()],
    if (networkInputSettings != null)
      'network_input_settings': networkInputSettings!.encode(),
    if (videoSelector != null) 'video_selector': videoSelector!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelector {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelector({
    required this.name,
    this.selectorSettings,
  });

  final TfArg<String> name;

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettings?
  selectorSettings;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (selectorSettings != null)
      'selector_settings': selectorSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettings {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettings({
    this.audioHlsRenditionSelection,
    this.audioLanguageSelection,
    this.audioPidSelection,
    this.audioTrackSelection,
  });

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection?
  audioHlsRenditionSelection;

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection?
  audioLanguageSelection;

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioPidSelection?
  audioPidSelection;

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection?
  audioTrackSelection;

  Map<String, Object?> encode() => {
    if (audioHlsRenditionSelection != null)
      'audio_hls_rendition_selection': audioHlsRenditionSelection!.encode(),
    if (audioLanguageSelection != null)
      'audio_language_selection': audioLanguageSelection!.encode(),
    if (audioPidSelection != null)
      'audio_pid_selection': audioPidSelection!.encode(),
    if (audioTrackSelection != null)
      'audio_track_selection': audioTrackSelection!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_hls_rendition_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioHlsRenditionSelection({
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
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioLanguageSelection({
    required this.languageCode,
    this.languageSelectionPolicy,
  });

  final TfArg<String> languageCode;

  final TfArg<String>? languageSelectionPolicy;

  Map<String, Object?> encode() => {
    'language_code': languageCode.toTfJson(),
    if (languageSelectionPolicy != null)
      'language_selection_policy': languageSelectionPolicy!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_pid_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioPidSelection {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioPidSelection({
    required this.pid,
  });

  final TfArg<num> pid;

  Map<String, Object?> encode() => {'pid': pid.toTfJson()};
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelection({
    this.dolbyEDecode,
    required this.tracks,
  });

  final MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode?
  dolbyEDecode;

  final List<
    MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTracks
  >
  tracks;

  Map<String, Object?> encode() => {
    if (dolbyEDecode != null) 'dolby_e_decode': dolbyEDecode!.encode(),
    'tracks': [for (final e in tracks) e.encode()],
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection.dolby_e_decode` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionDolbyEDecode({
    required this.programSelection,
  });

  final TfArg<String> programSelection;

  Map<String, Object?> encode() => {
    'program_selection': programSelection.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.audio_selector.selector_settings.audio_track_selection.tracks` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTracks {
  const MedialiveChannelInputAttachmentsInputSettingsAudioSelectorSelectorSettingsAudioTrackSelectionTracks({
    required this.track,
  });

  final TfArg<num> track;

  Map<String, Object?> encode() => {'track': track.toTfJson()};
}

/// Typed helper for the `input_attachments.input_settings.caption_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelector {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelector({
    this.languageCode,
    required this.name,
    this.selectorSettings,
  });

  final TfArg<String>? languageCode;

  final TfArg<String> name;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettings?
  selectorSettings;

  Map<String, Object?> encode() => {
    if (languageCode != null) 'language_code': languageCode!.toTfJson(),
    'name': name.toTfJson(),
    if (selectorSettings != null)
      'selector_settings': selectorSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettings({
    this.ancillarySourceSettings,
    this.aribSourceSettings,
    this.dvbSubSourceSettings,
    this.embeddedSourceSettings,
    this.scte20SourceSettings,
    this.scte27SourceSettings,
    this.teletextSourceSettings,
  });

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings?
  ancillarySourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAribSourceSettings?
  aribSourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings?
  dvbSubSourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings?
  embeddedSourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings?
  scte20SourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings?
  scte27SourceSettings;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings?
  teletextSourceSettings;

  Map<String, Object?> encode() => {
    if (ancillarySourceSettings != null)
      'ancillary_source_settings': ancillarySourceSettings!.encode(),
    if (aribSourceSettings != null)
      'arib_source_settings': aribSourceSettings!.encode(),
    if (dvbSubSourceSettings != null)
      'dvb_sub_source_settings': dvbSubSourceSettings!.encode(),
    if (embeddedSourceSettings != null)
      'embedded_source_settings': embeddedSourceSettings!.encode(),
    if (scte20SourceSettings != null)
      'scte20_source_settings': scte20SourceSettings!.encode(),
    if (scte27SourceSettings != null)
      'scte27_source_settings': scte27SourceSettings!.encode(),
    if (teletextSourceSettings != null)
      'teletext_source_settings': teletextSourceSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.ancillary_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings({
    this.sourceAncillaryChannelNumber,
  });

  final TfArg<num>? sourceAncillaryChannelNumber;

  Map<String, Object?> encode() => {
    if (sourceAncillaryChannelNumber != null)
      'source_ancillary_channel_number': sourceAncillaryChannelNumber!
          .toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.arib_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAribSourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsAribSourceSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.dvb_sub_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  final TfArg<String>? ocrLanguage;

  final TfArg<num>? pid;

  Map<String, Object?> encode() => {
    if (ocrLanguage != null) 'ocr_language': ocrLanguage!.toTfJson(),
    if (pid != null) 'pid': pid!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.embedded_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings({
    this.convert608To708,
    this.scte20Detection,
    this.source608ChannelNumber,
  });

  final TfArg<String>? convert608To708;

  final TfArg<String>? scte20Detection;

  final TfArg<num>? source608ChannelNumber;

  Map<String, Object?> encode() => {
    if (convert608To708 != null)
      'convert_608_to_708': convert608To708!.toTfJson(),
    if (scte20Detection != null)
      'scte20_detection': scte20Detection!.toTfJson(),
    if (source608ChannelNumber != null)
      'source_608_channel_number': source608ChannelNumber!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.scte20_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  final TfArg<String>? convert608To708;

  final TfArg<num>? source608ChannelNumber;

  Map<String, Object?> encode() => {
    if (convert608To708 != null)
      'convert_608_to_708': convert608To708!.toTfJson(),
    if (source608ChannelNumber != null)
      'source_608_channel_number': source608ChannelNumber!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.scte27_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings({
    this.ocrLanguage,
    this.pid,
  });

  final TfArg<String>? ocrLanguage;

  final TfArg<num>? pid;

  Map<String, Object?> encode() => {
    if (ocrLanguage != null) 'ocr_language': ocrLanguage!.toTfJson(),
    if (pid != null) 'pid': pid!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.teletext_source_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings({
    this.pageNumber,
    this.outputRectangle,
  });

  final TfArg<String>? pageNumber;

  final MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle?
  outputRectangle;

  Map<String, Object?> encode() => {
    if (pageNumber != null) 'page_number': pageNumber!.toTfJson(),
    if (outputRectangle != null) 'output_rectangle': outputRectangle!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.caption_selector.selector_settings.teletext_source_settings.output_rectangle` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle {
  const MedialiveChannelInputAttachmentsInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle({
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
final class MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettings {
  const MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettings({
    this.serverValidation,
    this.hlsInputSettings,
  });

  final TfArg<String>? serverValidation;

  final MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettingsHlsInputSettings?
  hlsInputSettings;

  Map<String, Object?> encode() => {
    if (serverValidation != null)
      'server_validation': serverValidation!.toTfJson(),
    if (hlsInputSettings != null)
      'hls_input_settings': hlsInputSettings!.encode(),
  };
}

/// Typed helper for the `input_attachments.input_settings.network_input_settings.hls_input_settings` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettingsHlsInputSettings {
  const MedialiveChannelInputAttachmentsInputSettingsNetworkInputSettingsHlsInputSettings({
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

  final TfArg<String>? scte35Source;

  Map<String, Object?> encode() => {
    if (bandwidth != null) 'bandwidth': bandwidth!.toTfJson(),
    if (bufferSegments != null) 'buffer_segments': bufferSegments!.toTfJson(),
    if (retries != null) 'retries': retries!.toTfJson(),
    if (retryInterval != null) 'retry_interval': retryInterval!.toTfJson(),
    if (scte35Source != null) 'scte35_source': scte35Source!.toTfJson(),
  };
}

/// Typed helper for the `input_attachments.input_settings.video_selector` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelInputAttachmentsInputSettingsVideoSelector {
  const MedialiveChannelInputAttachmentsInputSettingsVideoSelector({
    this.colorSpace,
    this.colorSpaceUsage,
  });

  final TfArg<String>? colorSpace;

  final TfArg<String>? colorSpaceUsage;

  Map<String, Object?> encode() => {
    if (colorSpace != null) 'color_space': colorSpace!.toTfJson(),
    if (colorSpaceUsage != null)
      'color_space_usage': colorSpaceUsage!.toTfJson(),
  };
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

  final TfArg<String> codec;

  final TfArg<String> inputResolution;

  final TfArg<String> maximumBitrate;

  Map<String, Object?> encode() => {
    'codec': codec.toTfJson(),
    'input_resolution': inputResolution.toTfJson(),
    'maximum_bitrate': maximumBitrate.toTfJson(),
  };
}

/// Typed helper for the `maintenance` block of
/// `aws_medialive_channel` (derived from provider schema).
@immutable
final class MedialiveChannelMaintenance {
  const MedialiveChannelMaintenance({
    required this.maintenanceDay,
    required this.maintenanceStartTime,
  });

  final TfArg<String> maintenanceDay;

  final TfArg<String> maintenanceStartTime;

  Map<String, Object?> encode() => {
    'maintenance_day': maintenanceDay.toTfJson(),
    'maintenance_start_time': maintenanceStartTime.toTfJson(),
  };
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

  final TfArg<List<Object?>> publicAddressAllocationIds;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'public_address_allocation_ids': publicAddressAllocationIds.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Factory wrapper for `aws_medialive_channel`.
final class AwsMedialiveChannel extends Resource {
  static const String tfType = 'aws_medialive_channel';

  AwsMedialiveChannel({
    required super.localName,
    required TfArg<String> channelClass,
    TfArg<String>? logLevel,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? roleArn,
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
           if (logLevel != null) 'log_level': logLevel,
           'name': name,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (startChannel != null) 'start_channel': startChannel,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelId => TfRef.attribute<String>(this, 'channel_id');
}
