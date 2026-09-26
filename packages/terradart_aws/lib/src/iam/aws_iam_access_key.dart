// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_access_key`.
const Set<String> _awsIamAccessKeySensitive = <String>{
  'secret',
  'ses_smtp_password_v4',
};

/// Factory wrapper for `aws_iam_access_key`.
final class AwsIamAccessKey extends Resource {
  static const String tfType = 'aws_iam_access_key';

  AwsIamAccessKey({
    required super.localName,
    TfArg<String>? pgpKey,
    TfArg<String>? status,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (pgpKey != null) 'pgp_key': pgpKey,
           if (status != null) 'status': status,
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamAccessKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `encrypted_secret` attribute.
  TfRef<String> get encryptedSecret =>
      TfRef.attribute<String>(this, 'encrypted_secret');

  /// Reference to `encrypted_ses_smtp_password_v4` attribute.
  TfRef<String> get encryptedSesSmtpPasswordV4 =>
      TfRef.attribute<String>(this, 'encrypted_ses_smtp_password_v4');

  /// Reference to `key_fingerprint` attribute.
  TfRef<String> get keyFingerprint =>
      TfRef.attribute<String>(this, 'key_fingerprint');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `ses_smtp_password_v4` attribute.
  TfRef<String> get sesSmtpPasswordV4 =>
      TfRef.attribute<String>(this, 'ses_smtp_password_v4');
}
