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
           if (allowUsersToChangePassword != null)
             'allow_users_to_change_password': allowUsersToChangePassword,
           if (hardExpiry != null) 'hard_expiry': hardExpiry,
           if (maxPasswordAge != null) 'max_password_age': maxPasswordAge,
           if (minimumPasswordLength != null)
             'minimum_password_length': minimumPasswordLength,
           if (passwordReusePrevention != null)
             'password_reuse_prevention': passwordReusePrevention,
           if (requireLowercaseCharacters != null)
             'require_lowercase_characters': requireLowercaseCharacters,
           if (requireNumbers != null) 'require_numbers': requireNumbers,
           if (requireSymbols != null) 'require_symbols': requireSymbols,
           if (requireUppercaseCharacters != null)
             'require_uppercase_characters': requireUppercaseCharacters,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamAccountPasswordPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expire_passwords` attribute.
  TfRef<bool> get expirePasswords =>
      TfRef.attribute<bool>(this, 'expire_passwords');
}
