// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_ssh_key`.
const Set<String> _awsTransferSshKeySensitive = <String>{};

/// Factory wrapper for `aws_transfer_ssh_key`.
final class AwsTransferSshKey extends Resource {
  static const String tfType = 'aws_transfer_ssh_key';

  AwsTransferSshKey(
    super.localName, {
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
           'region': ?region,
           'server_id': serverId,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferSshKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferSshKey>`.
  RefTo<AwsTransferSshKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ssh_key_id` attribute.
  TfRef<String> get sshKeyId => TfRef.attribute<String>(this, 'ssh_key_id');

  /// Reference to `body` attribute.
  TfRef<String> get body => TfRef.attribute<String>(this, 'body');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
