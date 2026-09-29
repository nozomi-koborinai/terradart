// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_scheduled_action`.
const Set<String> _awsRedshiftScheduledActionSensitive = <String>{};

/// Exactly one of `pause_cluster`, `resize_cluster`, `resume_cluster` on the `target_action` block of `aws_redshift_scheduled_action`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.pauseCluster(...)`.
sealed class RedshiftScheduledActionTargetAction {
  const RedshiftScheduledActionTargetAction();

  /// Sets `pause_cluster`.
  const factory RedshiftScheduledActionTargetAction.pauseCluster(
    RedshiftScheduledActionTargetActionPauseCluster pauseCluster,
  ) = RedshiftScheduledActionTargetActionPauseClusterChoice;

  /// Sets `resize_cluster`.
  const factory RedshiftScheduledActionTargetAction.resizeCluster(
    RedshiftScheduledActionTargetActionResizeCluster resizeCluster,
  ) = RedshiftScheduledActionTargetActionResizeClusterChoice;

  /// Sets `resume_cluster`.
  const factory RedshiftScheduledActionTargetAction.resumeCluster(
    RedshiftScheduledActionTargetActionResumeCluster resumeCluster,
  ) = RedshiftScheduledActionTargetActionResumeClusterChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [RedshiftScheduledActionTargetAction.pauseCluster] choice: sets `pause_cluster`.
final class RedshiftScheduledActionTargetActionPauseClusterChoice
    extends RedshiftScheduledActionTargetAction {
  const RedshiftScheduledActionTargetActionPauseClusterChoice(
    this.pauseCluster,
  );

  final RedshiftScheduledActionTargetActionPauseCluster pauseCluster;

  @override
  String get blockKey => 'pause_cluster';

  @override
  Map<String, Object?> encode() => {'pause_cluster': pauseCluster.encode()};
}

/// The [RedshiftScheduledActionTargetAction.resizeCluster] choice: sets `resize_cluster`.
final class RedshiftScheduledActionTargetActionResizeClusterChoice
    extends RedshiftScheduledActionTargetAction {
  const RedshiftScheduledActionTargetActionResizeClusterChoice(
    this.resizeCluster,
  );

  final RedshiftScheduledActionTargetActionResizeCluster resizeCluster;

  @override
  String get blockKey => 'resize_cluster';

  @override
  Map<String, Object?> encode() => {'resize_cluster': resizeCluster.encode()};
}

/// The [RedshiftScheduledActionTargetAction.resumeCluster] choice: sets `resume_cluster`.
final class RedshiftScheduledActionTargetActionResumeClusterChoice
    extends RedshiftScheduledActionTargetAction {
  const RedshiftScheduledActionTargetActionResumeClusterChoice(
    this.resumeCluster,
  );

  final RedshiftScheduledActionTargetActionResumeCluster resumeCluster;

  @override
  String get blockKey => 'resume_cluster';

  @override
  Map<String, Object?> encode() => {'resume_cluster': resumeCluster.encode()};
}

/// Typed helper for the `target_action.pause_cluster` block of
/// `aws_redshift_scheduled_action` (derived from provider schema).
@immutable
final class RedshiftScheduledActionTargetActionPauseCluster {
  const RedshiftScheduledActionTargetActionPauseCluster({
    required this.clusterIdentifier,
  });

  final TfArg<String> clusterIdentifier;

  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
  };
}

/// Typed helper for the `target_action.resize_cluster` block of
/// `aws_redshift_scheduled_action` (derived from provider schema).
@immutable
final class RedshiftScheduledActionTargetActionResizeCluster {
  const RedshiftScheduledActionTargetActionResizeCluster({
    this.classic,
    required this.clusterIdentifier,
    this.clusterType,
    this.nodeType,
    this.numberOfNodes,
  });

  final TfArg<bool>? classic;

  final TfArg<String> clusterIdentifier;

  final TfArg<String>? clusterType;

  final TfArg<String>? nodeType;

  final TfArg<num>? numberOfNodes;

  Map<String, Object?> encode() => {
    'classic': ?classic?.toTfJson(),
    'cluster_identifier': clusterIdentifier.toTfJson(),
    'cluster_type': ?clusterType?.toTfJson(),
    'node_type': ?nodeType?.toTfJson(),
    'number_of_nodes': ?numberOfNodes?.toTfJson(),
  };
}

/// Typed helper for the `target_action.resume_cluster` block of
/// `aws_redshift_scheduled_action` (derived from provider schema).
@immutable
final class RedshiftScheduledActionTargetActionResumeCluster {
  const RedshiftScheduledActionTargetActionResumeCluster({
    required this.clusterIdentifier,
  });

  final TfArg<String> clusterIdentifier;

  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
  };
}

/// Factory wrapper for `aws_redshift_scheduled_action`.
final class AwsRedshiftScheduledAction extends Resource {
  static const String tfType = 'aws_redshift_scheduled_action';

  AwsRedshiftScheduledAction({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enable,
    TfArg<String>? endTime,
    required TfArg<String> iamRole,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> schedule,
    TfArg<String>? startTime,
    required RedshiftScheduledActionTargetAction targetAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enable': ?enable,
           'end_time': ?endTime,
           'iam_role': iamRole,
           'name': name,
           'region': ?region,
           'schedule': schedule,
           'start_time': ?startTime,
           'target_action': TfArg.literal(targetAction.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftScheduledActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftScheduledAction>`.
  RefTo<AwsRedshiftScheduledAction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
