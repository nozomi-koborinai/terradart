// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_login_profile`.
const Set<String> _awsIamUserLoginProfileSensitive = <String>{'password'};

/// Factory wrapper for `aws_iam_user_login_profile`.
final class AwsIamUserLoginProfile extends Resource {
  static const String tfType = 'aws_iam_user_login_profile';

  AwsIamUserLoginProfile({
    required super.localName,
    TfArg<num>? passwordLength,
    TfArg<bool>? passwordResetRequired,
    TfArg<String>? pgpKey,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (passwordLength != null) 'password_length': passwordLength,
           if (passwordResetRequired != null)
             'password_reset_required': passwordResetRequired,
           if (pgpKey != null) 'pgp_key': pgpKey,
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserLoginProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `encrypted_password` attribute.
  TfRef<String> get encryptedPassword =>
      TfRef.attribute<String>(this, 'encrypted_password');

  /// Reference to `key_fingerprint` attribute.
  TfRef<String> get keyFingerprint =>
      TfRef.attribute<String>(this, 'key_fingerprint');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');
}
