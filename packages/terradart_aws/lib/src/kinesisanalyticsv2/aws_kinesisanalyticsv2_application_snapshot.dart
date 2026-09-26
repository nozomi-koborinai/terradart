// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesisanalyticsv2_application_snapshot`.
const Set<String> _awsKinesisanalyticsv2ApplicationSnapshotSensitive =
    <String>{};

/// Factory wrapper for `aws_kinesisanalyticsv2_application_snapshot`.
final class AwsKinesisanalyticsv2ApplicationSnapshot extends Resource {
  static const String tfType = 'aws_kinesisanalyticsv2_application_snapshot';

  AwsKinesisanalyticsv2ApplicationSnapshot({
    required super.localName,
    required TfArg<String> applicationName,
    TfArg<String>? region,
    required TfArg<String> snapshotName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_name': applicationName,
           if (region != null) 'region': region,
           'snapshot_name': snapshotName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsKinesisanalyticsv2ApplicationSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_version_id` attribute.
  TfRef<num> get applicationVersionId =>
      TfRef.attribute<num>(this, 'application_version_id');

  /// Reference to `snapshot_creation_timestamp` attribute.
  TfRef<String> get snapshotCreationTimestamp =>
      TfRef.attribute<String>(this, 'snapshot_creation_timestamp');
}
