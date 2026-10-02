// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_key_pair`.
const Set<String> _awsLightsailKeyPairSensitive = <String>{'private_key'};

/// At most one of `name`, `name_prefix` on `aws_lightsail_key_pair`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LightsailKeyPairName {
  const LightsailKeyPairName();

  /// Sets `name`.
  const factory LightsailKeyPairName.name(TfArg<String> name) =
      LightsailKeyPairNameChoice;

  /// Sets `name_prefix`.
  const factory LightsailKeyPairName.namePrefix(TfArg<String> namePrefix) =
      LightsailKeyPairNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LightsailKeyPairName.name] choice: sets `name`.
final class LightsailKeyPairNameChoice extends LightsailKeyPairName {
  const LightsailKeyPairNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LightsailKeyPairName.namePrefix] choice: sets `name_prefix`.
final class LightsailKeyPairNamePrefix extends LightsailKeyPairName {
  const LightsailKeyPairNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_lightsail_key_pair`.
final class AwsLightsailKeyPair extends Resource {
  static const String tfType = 'aws_lightsail_key_pair';

  AwsLightsailKeyPair(
    super.localName, {
    LightsailKeyPairName? name,
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
           ...?name?.argMap,
           'pgp_key': ?pgpKey,
           'public_key': ?publicKey,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailKeyPairSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailKeyPair>`.
  RefTo<AwsLightsailKeyPair> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `pgp_key` attribute.
  TfRef<String> get pgpKey => TfRef.attribute<String>(this, 'pgp_key');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
