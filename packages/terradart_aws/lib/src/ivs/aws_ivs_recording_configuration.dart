// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivs_recording_configuration`.
const Set<String> _awsIvsRecordingConfigurationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationDestinationConfiguration {
  const IvsRecordingConfigurationDestinationConfiguration({required this.s3});

  final IvsRecordingConfigurationDestinationConfigurationS3 s3;

  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `destination_configuration.s3` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationDestinationConfigurationS3 {
  const IvsRecordingConfigurationDestinationConfigurationS3({
    required this.bucketName,
  });

  final TfArg<String> bucketName;

  Map<String, Object?> encode() => {'bucket_name': bucketName.toTfJson()};
}

/// Typed helper for the `thumbnail_configuration` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationThumbnailConfiguration {
  const IvsRecordingConfigurationThumbnailConfiguration({
    this.recordingMode,
    this.targetIntervalSeconds,
  });

  final TfArg<String>? recordingMode;

  final TfArg<num>? targetIntervalSeconds;

  Map<String, Object?> encode() => {
    if (recordingMode != null) 'recording_mode': recordingMode!.toTfJson(),
    if (targetIntervalSeconds != null)
      'target_interval_seconds': targetIntervalSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ivs_recording_configuration`.
final class AwsIvsRecordingConfiguration extends Resource {
  static const String tfType = 'aws_ivs_recording_configuration';

  AwsIvsRecordingConfiguration({
    required super.localName,
    TfArg<String>? name,
    TfArg<num>? recordingReconnectWindowSeconds,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required IvsRecordingConfigurationDestinationConfiguration
    destinationConfiguration,
    IvsRecordingConfigurationThumbnailConfiguration? thumbnailConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (recordingReconnectWindowSeconds != null)
             'recording_reconnect_window_seconds':
                 recordingReconnectWindowSeconds,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'destination_configuration': TfArg.literal(
             destinationConfiguration.encode(),
           ),
           if (thumbnailConfiguration != null)
             'thumbnail_configuration': TfArg.literal(
               thumbnailConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvsRecordingConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
