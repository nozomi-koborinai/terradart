// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_evidently_project`.
const Set<String> _awsEvidentlyProjectSensitive = <String>{};

/// Typed helper for the `data_delivery` block of
/// `aws_evidently_project` (derived from provider schema).
@immutable
final class EvidentlyProjectDataDelivery {
  const EvidentlyProjectDataDelivery({this.cloudwatchLogsOrS3Destination});

  final EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination?
  cloudwatchLogsOrS3Destination;

  Map<String, Object?> encode() => {
    ...?cloudwatchLogsOrS3Destination?.encode(),
  };
}

/// At most one of `cloudwatch_logs`, `s3_destination` on the `data_delivery` block of `aws_evidently_project`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudwatchLogs(...)`.
sealed class EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination {
  const EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination();

  /// Sets `cloudwatch_logs`.
  const factory EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination.cloudwatchLogs(
    EvidentlyProjectDataDeliveryCloudwatchLogs cloudwatchLogs,
  ) = EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationCloudwatchLogs;

  /// Sets `s3_destination`.
  const factory EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination.s3Destination(
    EvidentlyProjectDataDeliveryS3Destination s3Destination,
  ) = EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationS3Destination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination.cloudwatchLogs] choice: sets `cloudwatch_logs`.
final class EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationCloudwatchLogs
    extends EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination {
  const EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationCloudwatchLogs(
    this.cloudwatchLogs,
  );

  final EvidentlyProjectDataDeliveryCloudwatchLogs cloudwatchLogs;

  @override
  String get blockKey => 'cloudwatch_logs';

  @override
  Map<String, Object?> encode() => {'cloudwatch_logs': cloudwatchLogs.encode()};
}

/// The [EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination.s3Destination] choice: sets `s3_destination`.
final class EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationS3Destination
    extends EvidentlyProjectDataDeliveryCloudwatchLogsOrS3Destination {
  const EvidentlyProjectDataDeliveryCloudwatchLogsOrS3DestinationS3Destination(
    this.s3Destination,
  );

  final EvidentlyProjectDataDeliveryS3Destination s3Destination;

  @override
  String get blockKey => 's3_destination';

  @override
  Map<String, Object?> encode() => {'s3_destination': s3Destination.encode()};
}

/// Typed helper for the `data_delivery.cloudwatch_logs` block of
/// `aws_evidently_project` (derived from provider schema).
@immutable
final class EvidentlyProjectDataDeliveryCloudwatchLogs {
  const EvidentlyProjectDataDeliveryCloudwatchLogs({this.logGroup});

  final TfArg<String>? logGroup;

  Map<String, Object?> encode() => {
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
  };
}

/// Typed helper for the `data_delivery.s3_destination` block of
/// `aws_evidently_project` (derived from provider schema).
@immutable
final class EvidentlyProjectDataDeliveryS3Destination {
  const EvidentlyProjectDataDeliveryS3Destination({this.bucket, this.prefix});

  final TfArg<String>? bucket;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_evidently_project`.
final class AwsEvidentlyProject extends Resource {
  static const String tfType = 'aws_evidently_project';

  AwsEvidentlyProject({
    required super.localName,
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
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (dataDelivery != null)
             'data_delivery': TfArg.literal(dataDelivery.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlyProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
