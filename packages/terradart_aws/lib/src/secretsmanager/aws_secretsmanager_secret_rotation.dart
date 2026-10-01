// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_rotation`.
const Set<String> _awsSecretsmanagerSecretRotationSensitive = <String>{};

/// Typed helper for the `external_secret_rotation_metadata` block of
/// `aws_secretsmanager_secret_rotation` (derived from provider schema).
@immutable
final class SecretsmanagerSecretRotationExternalSecretRotationMetadata {
  const SecretsmanagerSecretRotationExternalSecretRotationMetadata({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `rotation_rules` block of
/// `aws_secretsmanager_secret_rotation` (derived from provider schema).
@immutable
final class SecretsmanagerSecretRotationRules {
  const SecretsmanagerSecretRotationRules({
    required this.schedule,
    this.duration,
  });

  final SecretsmanagerSecretRotationSchedule schedule;

  final TfArg<String>? duration;

  Map<String, Object?> encode() => {
    ...schedule.encode(),
    'duration': ?duration?.toTfJson(),
  };
}

/// Exactly one of `automatically_after_days`, `schedule_expression` on the `rotation_rules` block of `aws_secretsmanager_secret_rotation`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.automaticallyAfterDays(...)`.
sealed class SecretsmanagerSecretRotationSchedule {
  const SecretsmanagerSecretRotationSchedule();

  /// Sets `automatically_after_days`.
  const factory SecretsmanagerSecretRotationSchedule.automaticallyAfterDays(
    TfArg<num> automaticallyAfterDays,
  ) = SecretsmanagerSecretRotationScheduleAutomaticallyAfterDays;

  /// Sets `schedule_expression`.
  const factory SecretsmanagerSecretRotationSchedule.scheduleExpression(
    TfArg<String> scheduleExpression,
  ) = SecretsmanagerSecretRotationScheduleExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SecretsmanagerSecretRotationSchedule.automaticallyAfterDays] choice: sets `automatically_after_days`.
final class SecretsmanagerSecretRotationScheduleAutomaticallyAfterDays
    extends SecretsmanagerSecretRotationSchedule {
  const SecretsmanagerSecretRotationScheduleAutomaticallyAfterDays(
    this.automaticallyAfterDays,
  );

  final TfArg<num> automaticallyAfterDays;

  @override
  String get blockKey => 'automatically_after_days';

  @override
  Map<String, Object?> encode() => {
    'automatically_after_days': automaticallyAfterDays.toTfJson(),
  };
}

/// The [SecretsmanagerSecretRotationSchedule.scheduleExpression] choice: sets `schedule_expression`.
final class SecretsmanagerSecretRotationScheduleExpression
    extends SecretsmanagerSecretRotationSchedule {
  const SecretsmanagerSecretRotationScheduleExpression(this.scheduleExpression);

  final TfArg<String> scheduleExpression;

  @override
  String get blockKey => 'schedule_expression';

  @override
  Map<String, Object?> encode() => {
    'schedule_expression': scheduleExpression.toTfJson(),
  };
}

/// Factory wrapper for `aws_secretsmanager_secret_rotation`.
final class AwsSecretsmanagerSecretRotation extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_rotation';

  AwsSecretsmanagerSecretRotation(
    super.localName, {
    TfArg<String>? externalSecretRotationRoleArn,
    TfArg<String>? region,
    TfArg<bool>? rotateImmediately,
    TfArg<bool>? rotationEnabled,
    TfArg<String>? rotationLambdaArn,
    required TfArg<String> secretId,
    List<SecretsmanagerSecretRotationExternalSecretRotationMetadata>?
    externalSecretRotationMetadata,
    SecretsmanagerSecretRotationRules? rotationRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'external_secret_rotation_role_arn': ?externalSecretRotationRoleArn,
           'region': ?region,
           'rotate_immediately': ?rotateImmediately,
           'rotation_enabled': ?rotationEnabled,
           'rotation_lambda_arn': ?rotationLambdaArn,
           'secret_id': secretId,
           if (externalSecretRotationMetadata != null)
             'external_secret_rotation_metadata': TfArg.literal([
               for (final e in externalSecretRotationMetadata) e.encode(),
             ]),
           if (rotationRules != null)
             'rotation_rules': TfArg.literal(rotationRules.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretRotationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecretsmanagerSecretRotation>`.
  RefTo<AwsSecretsmanagerSecretRotation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `external_secret_rotation_role_arn` attribute.
  TfRef<String> get externalSecretRotationRoleArn =>
      TfRef.attribute<String>(this, 'external_secret_rotation_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rotate_immediately` attribute.
  TfRef<bool> get rotateImmediately =>
      TfRef.attribute<bool>(this, 'rotate_immediately');

  /// Reference to `rotation_enabled` attribute.
  TfRef<bool> get rotationEnabled =>
      TfRef.attribute<bool>(this, 'rotation_enabled');

  /// Reference to `rotation_lambda_arn` attribute.
  TfRef<String> get rotationLambdaArn =>
      TfRef.attribute<String>(this, 'rotation_lambda_arn');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');
}
