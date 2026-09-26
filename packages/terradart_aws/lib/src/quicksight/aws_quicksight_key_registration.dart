// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_key_registration`.
const Set<String> _awsQuicksightKeyRegistrationSensitive = <String>{};

/// Typed helper for the `key_registration` block of
/// `aws_quicksight_key_registration` (derived from provider schema).
@immutable
final class QuicksightKeyRegistrationKeyRegistration {
  const QuicksightKeyRegistrationKeyRegistration({
    this.defaultKey,
    required this.keyArn,
  });

  final TfArg<bool>? defaultKey;

  final TfArg<String> keyArn;

  Map<String, Object?> encode() => {
    if (defaultKey != null) 'default_key': defaultKey!.toTfJson(),
    'key_arn': keyArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_key_registration`.
final class AwsQuicksightKeyRegistration extends Resource {
  static const String tfType = 'aws_quicksight_key_registration';

  AwsQuicksightKeyRegistration({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<String>? region,
    List<QuicksightKeyRegistrationKeyRegistration>? keyRegistration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (region != null) 'region': region,
           if (keyRegistration != null)
             'key_registration': TfArg.literal([
               for (final e in keyRegistration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightKeyRegistrationSensitive;
}
