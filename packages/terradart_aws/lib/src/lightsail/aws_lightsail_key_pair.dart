// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_key_pair`.
const Set<String> _awsLightsailKeyPairSensitive = <String>{'private_key'};

/// At most one of `name`, `name_prefix` on `aws_lightsail_key_pair`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LightsailKeyPairNameOrNamePrefix {
  const LightsailKeyPairNameOrNamePrefix();

  /// Sets `name`.
  const factory LightsailKeyPairNameOrNamePrefix.name(TfArg<String> name) =
      LightsailKeyPairNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory LightsailKeyPairNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = LightsailKeyPairNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LightsailKeyPairNameOrNamePrefix.name] choice: sets `name`.
final class LightsailKeyPairNameOrNamePrefixName
    extends LightsailKeyPairNameOrNamePrefix {
  const LightsailKeyPairNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LightsailKeyPairNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class LightsailKeyPairNameOrNamePrefixNamePrefix
    extends LightsailKeyPairNameOrNamePrefix {
  const LightsailKeyPairNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_lightsail_key_pair`.
final class AwsLightsailKeyPair extends Resource {
  static const String tfType = 'aws_lightsail_key_pair';

  AwsLightsailKeyPair({
    required super.localName,
    LightsailKeyPairNameOrNamePrefix? nameOrNamePrefix,
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
           ...?nameOrNamePrefix?.argMap,
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
