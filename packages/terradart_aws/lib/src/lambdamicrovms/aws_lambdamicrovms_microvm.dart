// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final List<LambdamicrovmsMicrovmLoggingCloudwatch>? cloudwatch;

  final List<LambdamicrovmsMicrovmLoggingDisabled>? disabled;

  Map<String, Object?> encode() => {
    if (cloudwatch != null)
      'cloudwatch': [for (final e in cloudwatch!) e.encode()],
    if (disabled != null) 'disabled': [for (final e in disabled!) e.encode()],
  };
}

/// Typed helper for the `logging.cloudwatch` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmLoggingCloudwatch {
  const LambdamicrovmsMicrovmLoggingCloudwatch({this.logGroup, this.logStream});

  final TfArg<String>? logGroup;

  final TfArg<String>? logStream;

  Map<String, Object?> encode() => {
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
    if (logStream != null) 'log_stream': logStream!.toTfJson(),
  };
}

/// Typed helper for the `logging.disabled` block of
/// `aws_lambdamicrovms_microvm` (derived from provider schema).
@immutable
final class LambdamicrovmsMicrovmLoggingDisabled {
  const LambdamicrovmsMicrovmLoggingDisabled();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_lambdamicrovms_microvm`.
final class AwsLambdamicrovmsMicrovm extends Resource {
  static const String tfType = 'aws_lambdamicrovms_microvm';

  AwsLambdamicrovmsMicrovm({
    required super.localName,
    TfArg<List<String>>? egressNetworkConnectors,
    TfArg<String>? executionRoleArn,
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
           if (egressNetworkConnectors != null)
             'egress_network_connectors': egressNetworkConnectors,
           if (executionRoleArn != null) 'execution_role_arn': executionRoleArn,
           'image_arn': imageArn,
           if (imageVersion != null) 'image_version': imageVersion,
           if (ingressNetworkConnectors != null)
             'ingress_network_connectors': ingressNetworkConnectors,
           if (maximumDurationInSeconds != null)
             'maximum_duration_in_seconds': maximumDurationInSeconds,
           if (region != null) 'region': region,
           if (runHookPayload != null) 'run_hook_payload': runHookPayload,
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

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `microvm_id` attribute.
  TfRef<String> get microvmId => TfRef.attribute<String>(this, 'microvm_id');

  /// Reference to `started_at` attribute.
  TfRef<String> get startedAt => TfRef.attribute<String>(this, 'started_at');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
