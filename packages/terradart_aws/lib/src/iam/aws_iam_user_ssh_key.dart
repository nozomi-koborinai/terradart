// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_ssh_key`.
const Set<String> _awsIamUserSshKeySensitive = <String>{};

/// Factory wrapper for `aws_iam_user_ssh_key`.
final class AwsIamUserSshKey extends Resource {
  static const String tfType = 'aws_iam_user_ssh_key';

  AwsIamUserSshKey({
    required super.localName,
    required TfArg<String> encoding,
    required TfArg<String> publicKey,
    TfArg<String>? status,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'encoding': encoding,
           'public_key': publicKey,
           if (status != null) 'status': status,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserSshKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `ssh_public_key_id` attribute.
  TfRef<String> get sshPublicKeyId =>
      TfRef.attribute<String>(this, 'ssh_public_key_id');
}
