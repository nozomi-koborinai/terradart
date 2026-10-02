// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_ivs_recording_configuration`.
const Set<String> _awsIvsRecordingConfigurationSensitive = <String>{};

/// Typed helper for the `destination_configuration` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationDestinationConfiguration {
  const IvsRecordingConfigurationDestinationConfiguration({required this.s3});

  final IvsRecordingConfigurationS3 s3;

  @internal
  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `destination_configuration.s3` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationS3 {
  const IvsRecordingConfigurationS3({required this.bucketName});

  final RefTo<AwsS3Bucket> bucketName;

  @internal
  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `thumbnail_configuration` block of
/// `aws_ivs_recording_configuration` (derived from provider schema).
@immutable
final class IvsRecordingConfigurationThumbnailConfiguration {
  const IvsRecordingConfigurationThumbnailConfiguration({
    this.recordingMode,
    this.targetIntervalSeconds,
  });

  final IvsRecordingConfigurationRecordingMode? recordingMode;

  final TfArg<num>? targetIntervalSeconds;

  @internal
  Map<String, Object?> encode() => {
    'recording_mode': ?recordingMode?.toTfJson(),
    'target_interval_seconds': ?targetIntervalSeconds?.toTfJson(),
  };
}

/// `recording_mode` — derived from the provider schema description.
extension type const IvsRecordingConfigurationRecordingMode._(TfArg<String> _)
    implements TfArg<String> {
  IvsRecordingConfigurationRecordingMode.variable(String name)
    : this._(TfArg.variable(name));
  IvsRecordingConfigurationRecordingMode.expression(String template)
    : this._(TfArg.expression(template));
  const IvsRecordingConfigurationRecordingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = IvsRecordingConfigurationRecordingMode._(
    TfArgLiteral('DISABLED'),
  );
  static const interval = IvsRecordingConfigurationRecordingMode._(
    TfArgLiteral('INTERVAL'),
  );

  static const List<IvsRecordingConfigurationRecordingMode> values = [
    disabled,
    interval,
  ];
}

/// Factory wrapper for `aws_ivs_recording_configuration`.
final class AwsIvsRecordingConfiguration extends Resource {
  static const String tfType = 'aws_ivs_recording_configuration';

  AwsIvsRecordingConfiguration(
    super.localName, {
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
           'name': ?name,
           'recording_reconnect_window_seconds':
               ?recordingReconnectWindowSeconds,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIvsRecordingConfiguration>`.
  RefTo<AwsIvsRecordingConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `recording_reconnect_window_seconds` attribute.
  TfRef<num> get recordingReconnectWindowSeconds =>
      TfRef.attribute<num>(this, 'recording_reconnect_window_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
