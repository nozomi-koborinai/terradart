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

  /// Reference to `allow_users_to_change_password` attribute.
  TfRef<bool> get allowUsersToChangePasswordRef =>
      TfRef.attribute<bool>(this, 'allow_users_to_change_password');

  /// Reference to `hard_expiry` attribute.
  TfRef<bool> get hardExpiryRef => TfRef.attribute<bool>(this, 'hard_expiry');

  /// Reference to `max_password_age` attribute.
  TfRef<num> get maxPasswordAgeRef =>
      TfRef.attribute<num>(this, 'max_password_age');

  /// Reference to `minimum_password_length` attribute.
  TfRef<num> get minimumPasswordLengthRef =>
      TfRef.attribute<num>(this, 'minimum_password_length');

  /// Reference to `password_reuse_prevention` attribute.
  TfRef<num> get passwordReusePreventionRef =>
      TfRef.attribute<num>(this, 'password_reuse_prevention');

  /// Reference to `require_lowercase_characters` attribute.
  TfRef<bool> get requireLowercaseCharactersRef =>
      TfRef.attribute<bool>(this, 'require_lowercase_characters');

  /// Reference to `require_numbers` attribute.
  TfRef<bool> get requireNumbersRef =>
      TfRef.attribute<bool>(this, 'require_numbers');

  /// Reference to `require_symbols` attribute.
  TfRef<bool> get requireSymbolsRef =>
      TfRef.attribute<bool>(this, 'require_symbols');

  /// Reference to `require_uppercase_characters` attribute.
  TfRef<bool> get requireUppercaseCharactersRef =>
      TfRef.attribute<bool>(this, 'require_uppercase_characters');
}
