// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<List<String>>? resourceTypes;

  final List<ConfigConfigurationRecorderExclusionByResourceTypes>?
  exclusionByResourceTypes;

  final List<ConfigConfigurationRecorderRecordingStrategy>? recordingStrategy;

  Map<String, Object?> encode() => {
    'all_supported': ?allSupported?.toTfJson(),
    'include_global_resource_types': ?includeGlobalResourceTypes?.toTfJson(),
    'resource_types': ?resourceTypes?.toTfJson(),
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
final class ConfigConfigurationRecorderExclusionByResourceTypes {
  const ConfigConfigurationRecorderExclusionByResourceTypes({
    this.resourceTypes,
  });

  final TfArg<List<String>>? resourceTypes;

  Map<String, Object?> encode() => {
    'resource_types': ?resourceTypes?.toTfJson(),
  };
}

/// Typed helper for the `recording_group.recording_strategy` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingStrategy {
  const ConfigConfigurationRecorderRecordingStrategy({this.useOnly});

  final ConfigConfigurationRecorderUseOnly? useOnly;

  Map<String, Object?> encode() => {'use_only': ?useOnly?.toTfJson()};
}

/// `use_only` — derived from the provider schema description.
extension type const ConfigConfigurationRecorderUseOnly._(TfArg<String> _)
    implements TfArg<String> {
  ConfigConfigurationRecorderUseOnly.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigurationRecorderUseOnly.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigurationRecorderUseOnly.arg(TfArg<String> arg) : this._(arg);

  static const allSupportedResourceTypes = ConfigConfigurationRecorderUseOnly._(
    TfArgLiteral('ALL_SUPPORTED_RESOURCE_TYPES'),
  );
  static const inclusionByResourceTypes = ConfigConfigurationRecorderUseOnly._(
    TfArgLiteral('INCLUSION_BY_RESOURCE_TYPES'),
  );
  static const exclusionByResourceTypes = ConfigConfigurationRecorderUseOnly._(
    TfArgLiteral('EXCLUSION_BY_RESOURCE_TYPES'),
  );

  static const List<ConfigConfigurationRecorderUseOnly> values = [
    allSupportedResourceTypes,
    inclusionByResourceTypes,
    exclusionByResourceTypes,
  ];
}

/// Typed helper for the `recording_mode` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingMode {
  const ConfigConfigurationRecorderRecordingMode({
    this.recordingFrequency,
    this.recordingModeOverride,
  });

  final ConfigConfigurationRecorderRecordingFrequency? recordingFrequency;

  final ConfigConfigurationRecorderRecordingModeOverride? recordingModeOverride;

  Map<String, Object?> encode() => {
    'recording_frequency': ?recordingFrequency?.toTfJson(),
    'recording_mode_override': ?recordingModeOverride?.encode(),
  };
}

/// `recording_frequency` — derived from the provider schema description.
extension type const ConfigConfigurationRecorderRecordingFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  ConfigConfigurationRecorderRecordingFrequency.variable(String name)
    : this._(TfArg.variable(name));
  ConfigConfigurationRecorderRecordingFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const ConfigConfigurationRecorderRecordingFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const continuous = ConfigConfigurationRecorderRecordingFrequency._(
    TfArgLiteral('CONTINUOUS'),
  );
  static const daily = ConfigConfigurationRecorderRecordingFrequency._(
    TfArgLiteral('DAILY'),
  );

  static const List<ConfigConfigurationRecorderRecordingFrequency> values = [
    continuous,
    daily,
  ];
}

/// Typed helper for the `recording_mode.recording_mode_override` block of
/// `aws_config_configuration_recorder` (derived from provider schema).
@immutable
final class ConfigConfigurationRecorderRecordingModeOverride {
  const ConfigConfigurationRecorderRecordingModeOverride({
    this.description,
    required this.recordingFrequency,
    required this.resourceTypes,
  });

  final TfArg<String>? description;

  final ConfigConfigurationRecorderRecordingFrequency recordingFrequency;

  final TfArg<List<String>> resourceTypes;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'recording_frequency': recordingFrequency.toTfJson(),
    'resource_types': resourceTypes.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_configuration_recorder`.
final class AwsConfigConfigurationRecorder extends Resource {
  static const String tfType = 'aws_config_configuration_recorder';

  AwsConfigConfigurationRecorder(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    ConfigConfigurationRecorderRecordingGroup? recordingGroup,
    ConfigConfigurationRecorderRecordingMode? recordingMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           if (recordingGroup != null)
             'recording_group': TfArg.literal(recordingGroup.encode()),
           if (recordingMode != null)
             'recording_mode': TfArg.literal(recordingMode.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigConfigurationRecorderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConfigurationRecorder>`.
  RefTo<AwsConfigConfigurationRecorder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
