// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_quicksight_key_registration`.
const Set<String> _awsQuicksightKeyRegistrationSensitive = <String>{};

/// Typed helper for the `key_registration` block of
/// `aws_quicksight_key_registration` (derived from provider schema).
@immutable
final class QuicksightKeyRegistration {
  const QuicksightKeyRegistration({this.defaultKey, required this.keyArn});

  final TfArg<bool>? defaultKey;

  final RefTo<AwsKmsKey> keyArn;

  @internal
  Map<String, Object?> encode() => {
    'default_key': ?defaultKey?.toTfJson(),
    'key_arn': keyArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_key_registration`.
final class AwsQuicksightKeyRegistration extends Resource {
  static const String tfType = 'aws_quicksight_key_registration';

  AwsQuicksightKeyRegistration(
    super.localName, {
    TfArg<String>? awsAccountId,
    TfArg<String>? region,
    List<QuicksightKeyRegistration>? keyRegistration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'region': ?region,
           if (keyRegistration != null)
             'key_registration': TfArg.literal([
               for (final e in keyRegistration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightKeyRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightKeyRegistration>`.
  RefTo<AwsQuicksightKeyRegistration> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
