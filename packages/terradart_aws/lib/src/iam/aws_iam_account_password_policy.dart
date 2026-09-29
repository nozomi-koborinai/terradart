// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_account_password_policy`.
const Set<String> _awsIamAccountPasswordPolicySensitive = <String>{};

/// Factory wrapper for `aws_iam_account_password_policy`.
final class AwsIamAccountPasswordPolicy extends Resource {
  static const String tfType = 'aws_iam_account_password_policy';

  AwsIamAccountPasswordPolicy({
    required super.localName,
    TfArg<bool>? allowUsersToChangePassword,
    TfArg<bool>? hardExpiry,
    TfArg<num>? maxPasswordAge,
    TfArg<num>? minimumPasswordLength,
    TfArg<num>? passwordReusePrevention,
    TfArg<bool>? requireLowercaseCharacters,
    TfArg<bool>? requireNumbers,
    TfArg<bool>? requireSymbols,
    TfArg<bool>? requireUppercaseCharacters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_users_to_change_password': ?allowUsersToChangePassword,
           'hard_expiry': ?hardExpiry,
           'max_password_age': ?maxPasswordAge,
           'minimum_password_length': ?minimumPasswordLength,
           'password_reuse_prevention': ?passwordReusePrevention,
           'require_lowercase_characters': ?requireLowercaseCharacters,
           'require_numbers': ?requireNumbers,
           'require_symbols': ?requireSymbols,
           'require_uppercase_characters': ?requireUppercaseCharacters,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamAccountPasswordPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamAccountPasswordPolicy>`.
  RefTo<AwsIamAccountPasswordPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expire_passwords` attribute.
  TfRef<bool> get expirePasswords =>
      TfRef.attribute<bool>(this, 'expire_passwords');
}
