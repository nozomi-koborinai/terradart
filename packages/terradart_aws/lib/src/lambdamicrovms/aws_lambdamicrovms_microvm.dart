// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_lambdamicrovms_microvm`.
const Set<String> _awsLambdamicrovmsMicrovmSensitive = <String>{};

/// Typed helper for the `idle_policy` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmIdlePolicy {
  const LambdamicrovmsMicrovmIdlePolicy({
    required this.autoResumeEnabled,
    required this.maxIdleDurationSeconds,
    required this.suspendedDurationSeconds,
  });

  final TfArg<bool> autoResumeEnabled;

  final TfArg<num> maxIdleDurationSeconds;

  final TfArg<num> suspendedDurationSeconds;

  Map<String, Object?> encode() => {
    'auto_resume_enabled': autoResumeEnabled.toTfJson(),
    'max_idle_duration_seconds': maxIdleDurationSeconds.toTfJson(),
    'suspended_duration_seconds': suspendedDurationSeconds.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmLogging {
  const LambdamicrovmsMicrovmLogging({this.cloudwatch, this.disabled});

  final List<LambdamicrovmsMicrovmCloudwatch>? cloudwatch;

  final List<LambdamicrovmsMicrovmDisabled>? disabled;

  Map<String, Object?> encode() => {
    if (cloudwatch != null)
      'cloudwatch': [for (final e in cloudwatch!) e.encode()],
    if (disabled != null) 'disabled': [for (final e in disabled!) e.encode()],
  };
}

/// Typed helper for the `logging.cloudwatch` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmCloudwatch {
  const LambdamicrovmsMicrovmCloudwatch({this.logGroup, this.logStream});

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  final TfArg<String>? logStream;

  Map<String, Object?> encode() => {
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
    'log_stream': ?logStream?.toTfJson(),
  };
}

/// Typed helper for the `logging.disabled` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmDisabled {
  const LambdamicrovmsMicrovmDisabled();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_lambdamicrovms_microvm`.
final class AwsLambdamicrovmsMicrovm extends Resource {
  static const String tfType = 'aws_lambdamicrovms_microvm';

  AwsLambdamicrovmsMicrovm({
    required super.localName,
    TfArg<List<String>>? egressNetworkConnectors,
    RefTo<AwsIamRole>? executionRoleArn,
    required TfArg<String> imageArn,
    TfArg<String>? imageVersion,
    TfArg<List<String>>? ingressNetworkConnectors,
    TfArg<num>? maximumDurationInSeconds,
    TfArg<String>? region,
    TfArg<String>? runHookPayload,
    List<LambdamicrovmsMicrovmIdlePolicy>? idlePolicy,
    List<LambdamicrovmsMicrovmLogging>? logging,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'egress_network_connectors': ?egressNetworkConnectors,
           'execution_role_arn': ?executionRoleArn?.encodeAs('arn'),
           'image_arn': imageArn,
           'image_version': ?imageVersion,
           'ingress_network_connectors': ?ingressNetworkConnectors,
           'maximum_duration_in_seconds': ?maximumDurationInSeconds,
           'region': ?region,
           'run_hook_payload': ?runHookPayload,
           if (idlePolicy != null)
             'idle_policy': TfArg.literal([
               for (final e in idlePolicy) e.encode(),
             ]),
           if (logging != null)
             'logging': TfArg.literal([for (final e in logging) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLambdamicrovmsMicrovmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLambdamicrovmsMicrovm>`.
  RefTo<AwsLambdamicrovmsMicrovm> get ref => RefTo.of(this);

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `microvm_id` attribute.
  TfRef<String> get microvmId => TfRef.attribute<String>(this, 'microvm_id');

  /// Reference to `started_at` attribute.
  TfRef<String> get startedAt => TfRef.attribute<String>(this, 'started_at');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `egress_network_connectors` attribute.
  TfRef<List<String>> get egressNetworkConnectors =>
      TfRef.attribute<List<String>>(this, 'egress_network_connectors');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `image_arn` attribute.
  TfRef<String> get imageArn => TfRef.attribute<String>(this, 'image_arn');

  /// Reference to `image_version` attribute.
  TfRef<String> get imageVersion =>
      TfRef.attribute<String>(this, 'image_version');

  /// Reference to `ingress_network_connectors` attribute.
  TfRef<List<String>> get ingressNetworkConnectors =>
      TfRef.attribute<List<String>>(this, 'ingress_network_connectors');

  /// Reference to `maximum_duration_in_seconds` attribute.
  TfRef<num> get maximumDurationInSeconds =>
      TfRef.attribute<num>(this, 'maximum_duration_in_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `run_hook_payload` attribute.
  TfRef<String> get runHookPayload =>
      TfRef.attribute<String>(this, 'run_hook_payload');
}
