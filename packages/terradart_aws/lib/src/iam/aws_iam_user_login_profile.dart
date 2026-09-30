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
           'password_length': ?passwordLength,
           'password_reset_required': ?passwordResetRequired,
           'pgp_key': ?pgpKey,
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserLoginProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamUserLoginProfile>`.
  RefTo<AwsIamUserLoginProfile> get ref => RefTo.of(this);

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

  /// Reference to `password_length` attribute.
  TfRef<num> get passwordLengthRef =>
      TfRef.attribute<num>(this, 'password_length');

  /// Reference to `password_reset_required` attribute.
  TfRef<bool> get passwordResetRequiredRef =>
      TfRef.attribute<bool>(this, 'password_reset_required');

  /// Reference to `pgp_key` attribute.
  TfRef<String> get pgpKeyRef => TfRef.attribute<String>(this, 'pgp_key');

  /// Reference to `user` attribute.
  TfRef<String> get userRef => TfRef.attribute<String>(this, 'user');
}
