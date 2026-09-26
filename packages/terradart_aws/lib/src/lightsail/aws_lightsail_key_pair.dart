// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_key_pair`.
const Set<String> _awsLightsailKeyPairSensitive = <String>{'private_key'};

/// Factory wrapper for `aws_lightsail_key_pair`.
final class AwsLightsailKeyPair extends Resource {
  static const String tfType = 'aws_lightsail_key_pair';

  AwsLightsailKeyPair({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? pgpKey,
    TfArg<String>? publicKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (pgpKey != null) 'pgp_key': pgpKey,
           if (publicKey != null) 'public_key': publicKey,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailKeyPairSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `encrypted_fingerprint` attribute.
  TfRef<String> get encryptedFingerprint =>
      TfRef.attribute<String>(this, 'encrypted_fingerprint');

  /// Reference to `encrypted_private_key` attribute.
  TfRef<String> get encryptedPrivateKey =>
      TfRef.attribute<String>(this, 'encrypted_private_key');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');
}
