// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_secretsmanager_secret_policy`.
const Set<String> _awsSecretsmanagerSecretPolicySensitive = <String>{};

/// Factory wrapper for `aws_secretsmanager_secret_policy`.
final class AwsSecretsmanagerSecretPolicy extends Resource {
  static const String tfType = 'aws_secretsmanager_secret_policy';

  AwsSecretsmanagerSecretPolicy({
    required super.localName,
    TfArg<bool>? blockPublicPolicy,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> secretArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'block_public_policy': ?blockPublicPolicy,
           'policy': policy,
           'region': ?region,
           'secret_arn': secretArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecretsmanagerSecretPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecretsmanagerSecretPolicy>`.
  RefTo<AwsSecretsmanagerSecretPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_public_policy` attribute.
  TfRef<bool> get blockPublicPolicy =>
      TfRef.attribute<bool>(this, 'block_public_policy');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');
}
