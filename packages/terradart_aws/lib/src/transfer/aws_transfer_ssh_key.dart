// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_ssh_key`.
const Set<String> _awsTransferSshKeySensitive = <String>{};

/// Factory wrapper for `aws_transfer_ssh_key`.
final class AwsTransferSshKey extends Resource {
  static const String tfType = 'aws_transfer_ssh_key';

  AwsTransferSshKey({
    required super.localName,
    required TfArg<String> body,
    TfArg<String>? region,
    required TfArg<String> serverId,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'body': body,
           if (region != null) 'region': region,
           'server_id': serverId,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferSshKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ssh_key_id` attribute.
  TfRef<String> get sshKeyId => TfRef.attribute<String>(this, 'ssh_key_id');
}
