// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_evidently_project`.
const Set<String> _awsEvidentlyProjectSensitive = <String>{};

/// At most one of `cloudwatch_logs`, `s3_destination` on the `data_delivery` block of `aws_evidently_project`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudwatchLogs(...)`.
sealed class EvidentlyProjectDataDelivery {
  const EvidentlyProjectDataDelivery();

  /// Sets `cloudwatch_logs`.
  const factory EvidentlyProjectDataDelivery.cloudwatchLogs(
    EvidentlyProjectCloudwatchLogs cloudwatchLogs,
  ) = EvidentlyProjectDataDeliveryCloudwatchLogs;

  /// Sets `s3_destination`.
  const factory EvidentlyProjectDataDelivery.s3Destination(
    EvidentlyProjectS3Destination s3Destination,
  ) = EvidentlyProjectDataDeliveryS3Destination;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [EvidentlyProjectDataDelivery.cloudwatchLogs] choice: sets `cloudwatch_logs`.
final class EvidentlyProjectDataDeliveryCloudwatchLogs
    extends EvidentlyProjectDataDelivery {
  const EvidentlyProjectDataDeliveryCloudwatchLogs(this.cloudwatchLogs);

  final EvidentlyProjectCloudwatchLogs cloudwatchLogs;

  @internal
  @override
  String get blockKey => 'cloudwatch_logs';

  @internal
  @override
  Map<String, Object?> encode() => {'cloudwatch_logs': cloudwatchLogs.encode()};
}

/// The [EvidentlyProjectDataDelivery.s3Destination] choice: sets `s3_destination`.
final class EvidentlyProjectDataDeliveryS3Destination
    extends EvidentlyProjectDataDelivery {
  const EvidentlyProjectDataDeliveryS3Destination(this.s3Destination);

  final EvidentlyProjectS3Destination s3Destination;

  @internal
  @override
  String get blockKey => 's3_destination';

  @internal
  @override
  Map<String, Object?> encode() => {'s3_destination': s3Destination.encode()};
}

/// Typed helper for the `data_delivery.cloudwatch_logs` block of
/// `aws_evidently_project` (derived from provider schema).
@immutable
final class EvidentlyProjectCloudwatchLogs {
  const EvidentlyProjectCloudwatchLogs({this.logGroup});

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  @internal
  Map<String, Object?> encode() => {
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `data_delivery.s3_destination` block of
/// `aws_evidently_project` (derived from provider schema).
@immutable
final class EvidentlyProjectS3Destination {
  const EvidentlyProjectS3Destination({this.bucket, this.prefix});

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<String>? prefix;

  @internal
  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Factory wrapper for `aws_evidently_project`.
final class AwsEvidentlyProject extends Resource {
  static const String tfType = 'aws_evidently_project';

  AwsEvidentlyProject(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EvidentlyProjectDataDelivery? dataDelivery,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (dataDelivery != null)
             'data_delivery': TfArg.literal(dataDelivery.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlyProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEvidentlyProject>`.
  RefTo<AwsEvidentlyProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_experiment_count` attribute.
  TfRef<num> get activeExperimentCount =>
      TfRef.attribute<num>(this, 'active_experiment_count');

  /// Reference to `active_launch_count` attribute.
  TfRef<num> get activeLaunchCount =>
      TfRef.attribute<num>(this, 'active_launch_count');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `experiment_count` attribute.
  TfRef<num> get experimentCount =>
      TfRef.attribute<num>(this, 'experiment_count');

  /// Reference to `feature_count` attribute.
  TfRef<num> get featureCount => TfRef.attribute<num>(this, 'feature_count');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `launch_count` attribute.
  TfRef<num> get launchCount => TfRef.attribute<num>(this, 'launch_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
