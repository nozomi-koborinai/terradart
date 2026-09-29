// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_host_key`.
const Set<String> _awsTransferHostKeySensitive = <String>{
  'host_key_body',
  'host_key_body_wo',
};

/// Exactly one of `host_key_body`, `host_key_body_wo` on `aws_transfer_host_key`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.hostKeyBody(...)`.
sealed class TransferHostKeyHostKeyBodyOrHostKeyBodyWo {
  const TransferHostKeyHostKeyBodyOrHostKeyBodyWo();

  /// Sets `host_key_body`.
  const factory TransferHostKeyHostKeyBodyOrHostKeyBodyWo.hostKeyBody(
    TfArg<String> hostKeyBody,
  ) = TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBody;

  /// Sets `host_key_body_wo`.
  const factory TransferHostKeyHostKeyBodyOrHostKeyBodyWo.hostKeyBodyWo(
    TfArg<String> hostKeyBodyWo,
  ) = TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBodyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TransferHostKeyHostKeyBodyOrHostKeyBodyWo.hostKeyBody] choice: sets `host_key_body`.
final class TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBody
    extends TransferHostKeyHostKeyBodyOrHostKeyBodyWo {
  const TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBody(this.hostKeyBody);

  final TfArg<String> hostKeyBody;

  @override
  String get blockKey => 'host_key_body';

  @override
  Map<String, Object?> encode() => {'host_key_body': hostKeyBody.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'host_key_body': hostKeyBody};
}

/// The [TransferHostKeyHostKeyBodyOrHostKeyBodyWo.hostKeyBodyWo] choice: sets `host_key_body_wo`.
final class TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBodyWo
    extends TransferHostKeyHostKeyBodyOrHostKeyBodyWo {
  const TransferHostKeyHostKeyBodyOrHostKeyBodyWoHostKeyBodyWo(
    this.hostKeyBodyWo,
  );

  final TfArg<String> hostKeyBodyWo;

  @override
  String get blockKey => 'host_key_body_wo';

  @override
  Map<String, Object?> encode() => {
    'host_key_body_wo': hostKeyBodyWo.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'host_key_body_wo': hostKeyBodyWo};
}

/// Factory wrapper for `aws_transfer_host_key`.
final class AwsTransferHostKey extends Resource {
  static const String tfType = 'aws_transfer_host_key';

  AwsTransferHostKey({
    required super.localName,
    TfArg<String>? description,
    required TransferHostKeyHostKeyBodyOrHostKeyBodyWo
    hostKeyBodyOrHostKeyBodyWo,
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
           ...hostKeyBodyOrHostKeyBodyWo.argMap,
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
