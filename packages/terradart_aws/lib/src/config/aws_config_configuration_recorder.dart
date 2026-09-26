// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_configuration_recorder`.
const Set<String> _awsConfigConfigurationRecorderSensitive = <String>{};

/// Typed helper for the `recording_group` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingGroup {
  const ConfigConfigurationRecorderRecordingGroup({
    this.allSupported,
    this.includeGlobalResourceTypes,
    this.resourceTypes,
    this.exclusionByResourceTypes,
    this.recordingStrategy,
  });

  final TfArg<bool>? allSupported;

  final TfArg<bool>? includeGlobalResourceTypes;

  final TfArg<List<Object?>>? resourceTypes;

  final List<ConfigConfigurationRecorderRecordingGroupExclusionByResourceTypes>?
  exclusionByResourceTypes;

  final List<ConfigConfigurationRecorderRecordingGroupRecordingStrategy>?
  recordingStrategy;

  Map<String, Object?> encode() => {
    if (allSupported != null) 'all_supported': allSupported!.toTfJson(),
    if (includeGlobalResourceTypes != null)
      'include_global_resource_types': includeGlobalResourceTypes!.toTfJson(),
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (exclusionByResourceTypes != null)
      'exclusion_by_resource_types': [
        for (final e in exclusionByResourceTypes!) e.encode(),
      ],
    if (recordingStrategy != null)
      'recording_strategy': [for (final e in recordingStrategy!) e.encode()],
  };
}

/// Typed helper for the `recording_group.exclusion_by_resource_types` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingGroupExclusionByResourceTypes {
  const ConfigConfigurationRecorderRecordingGroupExclusionByResourceTypes({
    this.resourceTypes,
  });

  final TfArg<List<Object?>>? resourceTypes;

  Map<String, Object?> encode() => {
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
  };
}

/// Typed helper for the `recording_group.recording_strategy` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingGroupRecordingStrategy {
  const ConfigConfigurationRecorderRecordingGroupRecordingStrategy({
    this.useOnly,
  });

  final TfArg<String>? useOnly;

  Map<String, Object?> encode() => {
    if (useOnly != null) 'use_only': useOnly!.toTfJson(),
  };
}

/// Typed helper for the `recording_mode` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingMode {
  const ConfigConfigurationRecorderRecordingMode({
    this.recordingFrequency,
    this.recordingModeOverride,
  });

  final TfArg<String>? recordingFrequency;

  final ConfigConfigurationRecorderRecordingModeRecordingModeOverride?
  recordingModeOverride;

  Map<String, Object?> encode() => {
    if (recordingFrequency != null)
      'recording_frequency': recordingFrequency!.toTfJson(),
    if (recordingModeOverride != null)
      'recording_mode_override': recordingModeOverride!.encode(),
  };
}

/// Typed helper for the `recording_mode.recording_mode_override` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingModeRecordingModeOverride {
  const ConfigConfigurationRecorderRecordingModeRecordingModeOverride({
    this.description,
    required this.recordingFrequency,
    required this.resourceTypes,
  });

  final TfArg<String>? description;

  final TfArg<String> recordingFrequency;

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'recording_frequency': recordingFrequency.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_configuration_recorder`.
final class AwsConfigConfigurationRecorder extends Resource {
  static const String tfType = 'aws_config_configuration_recorder';

  AwsConfigConfigurationRecorder({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    ConfigConfigurationRecorderRecordingGroup? recordingGroup,
    ConfigConfigurationRecorderRecordingMode? recordingMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (recordingGroup != null)
             'recording_group': TfArg.literal(recordingGroup.encode()),
           if (recordingMode != null)
             'recording_mode': TfArg.literal(recordingMode.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigurationRecorderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
