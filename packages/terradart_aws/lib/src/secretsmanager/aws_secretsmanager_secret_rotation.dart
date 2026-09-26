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
final class SecretsmanagerSecretRotationRotationRules {
  const SecretsmanagerSecretRotationRotationRules({
    this.automaticallyAfterDays,
    this.duration,
    this.scheduleExpression,
  });

  final TfArg<num>? automaticallyAfterDays;

  final TfArg<String>? duration;

  final TfArg<String>? scheduleExpression;

  Map<String, Object?> encode() => {
    if (automaticallyAfterDays != null)
      'automatically_after_days': automaticallyAfterDays!.toTfJson(),
    if (duration != null) 'duration': duration!.toTfJson(),
    if (scheduleExpression != null)
      'schedule_expression': scheduleExpression!.toTfJson(),
  };
}

/// Factory wrapper for `aws_secretsmanager_secret_rotation`.
final class AwsSecretsmanagerSecretRotation extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_rotation';

  AwsSecretsmanagerSecretRotation({
    required super.localName,
    TfArg<String>? externalSecretRotationRoleArn,
    TfArg<String>? region,
    TfArg<bool>? rotateImmediately,
    TfArg<bool>? rotationEnabled,
    TfArg<String>? rotationLambdaArn,
    required TfArg<String> secretId,
    List<SecretsmanagerSecretRotationExternalSecretRotationMetadata>?
    externalSecretRotationMetadata,
    SecretsmanagerSecretRotationRotationRules? rotationRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (externalSecretRotationRoleArn != null)
             'external_secret_rotation_role_arn': externalSecretRotationRoleArn,
           if (region != null) 'region': region,
           if (rotateImmediately != null)
             'rotate_immediately': rotateImmediately,
           if (rotationEnabled != null) 'rotation_enabled': rotationEnabled,
           if (rotationLambdaArn != null)
             'rotation_lambda_arn': rotationLambdaArn,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
