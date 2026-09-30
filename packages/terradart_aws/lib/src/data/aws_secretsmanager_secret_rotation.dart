// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../secretsmanager/aws_secretsmanager_secret_rotation.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_rotation`.
const Set<String> _awsSecretsmanagerSecretRotationSensitive = <String>{};

/// Factory wrapper for `aws_secretsmanager_secret_rotation`.
final class DataAwsSecretsmanagerSecretRotation extends Data {
  static const String tfType = 'aws_secretsmanager_secret_rotation';

  DataAwsSecretsmanagerSecretRotation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> secretId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'secret_id': secretId},
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretRotationSensitive;

  /// A reference to the `aws_secretsmanager_secret_rotation` this data source reads, for
  /// arguments typed `RefTo<AwsSecretsmanagerSecretRotation>`.
  RefTo<AwsSecretsmanagerSecretRotation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `external_secret_rotation_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get externalSecretRotationMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'external_secret_rotation_metadata',
      );

  /// Reference to `external_secret_rotation_role_arn` attribute.
  TfRef<String> get externalSecretRotationRoleArn =>
      TfRef.attribute<String>(this, 'external_secret_rotation_role_arn');

  /// Reference to `rotation_enabled` attribute.
  TfRef<bool> get rotationEnabled =>
      TfRef.attribute<bool>(this, 'rotation_enabled');

  /// Reference to `rotation_lambda_arn` attribute.
  TfRef<String> get rotationLambdaArn =>
      TfRef.attribute<String>(this, 'rotation_lambda_arn');

  /// Reference to `rotation_rules` attribute.
  TfRef<List<Map<String, Object?>>> get rotationRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rotation_rules');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
}
