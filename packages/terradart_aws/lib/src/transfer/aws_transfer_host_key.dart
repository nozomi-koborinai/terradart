// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_host_key`.
const Set<String> _awsTransferHostKeySensitive = <String>{
  'host_key_body',
  'host_key_body_wo',
};

/// Factory wrapper for `aws_transfer_host_key`.
final class AwsTransferHostKey extends Resource {
  static const String tfType = 'aws_transfer_host_key';

  AwsTransferHostKey({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? hostKeyBody,
    TfArg<String>? hostKeyBodyWo,
    TfArg<String>? region,
    required TfArg<String> serverId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (hostKeyBody != null) 'host_key_body': hostKeyBody,
           if (hostKeyBodyWo != null) 'host_key_body_wo': hostKeyBodyWo,
           if (region != null) 'region': region,
           'server_id': serverId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferHostKeySensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `host_key_fingerprint` attribute.
  TfRef<String> get hostKeyFingerprint =>
      TfRef.attribute<String>(this, 'host_key_fingerprint');

  /// Reference to `host_key_id` attribute.
  TfRef<String> get hostKeyId => TfRef.attribute<String>(this, 'host_key_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
