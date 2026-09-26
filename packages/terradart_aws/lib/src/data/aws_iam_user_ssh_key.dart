// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_ssh_key`.
const Set<String> _awsIamUserSshKeySensitive = <String>{};

/// Factory wrapper for `aws_iam_user_ssh_key`.
final class DataAwsIamUserSshKey extends Data {
  static const String tfType = 'aws_iam_user_ssh_key';

  DataAwsIamUserSshKey({
    required super.localName,
    required TfArg<String> encoding,
    required TfArg<String> sshPublicKeyId,
    required TfArg<String> username,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'encoding': encoding,
           'ssh_public_key_id': sshPublicKeyId,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserSshKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
