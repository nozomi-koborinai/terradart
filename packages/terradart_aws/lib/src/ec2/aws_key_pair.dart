// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_key_pair`.
const Set<String> _awsKeyPairSensitive = <String>{};

/// At most one of `key_name`, `key_name_prefix` on `aws_key_pair`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.keyName(...)`.
sealed class KeyPairKeyName {
  const KeyPairKeyName();

  /// Sets `key_name`.
  const factory KeyPairKeyName.keyName(TfArg<String> keyName) =
      KeyPairKeyNameChoice;

  /// Sets `key_name_prefix`.
  const factory KeyPairKeyName.keyNamePrefix(TfArg<String> keyNamePrefix) =
      KeyPairKeyNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KeyPairKeyName.keyName] choice: sets `key_name`.
final class KeyPairKeyNameChoice extends KeyPairKeyName {
  const KeyPairKeyNameChoice(this.keyName);

  final TfArg<String> keyName;

  @override
  String get blockKey => 'key_name';

  @override
  Map<String, Object?> encode() => {'key_name': keyName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'key_name': keyName};
}

/// The [KeyPairKeyName.keyNamePrefix] choice: sets `key_name_prefix`.
final class KeyPairKeyNamePrefix extends KeyPairKeyName {
  const KeyPairKeyNamePrefix(this.keyNamePrefix);

  final TfArg<String> keyNamePrefix;

  @override
  String get blockKey => 'key_name_prefix';

  @override
  Map<String, Object?> encode() => {
    'key_name_prefix': keyNamePrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'key_name_prefix': keyNamePrefix};
}

/// Factory wrapper for `aws_key_pair`.
final class AwsKeyPair extends Resource {
  static const String tfType = 'aws_key_pair';

  AwsKeyPair(
    super.localName, {
    KeyPairKeyName? keyName,
    required TfArg<String> publicKey,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?keyName?.argMap,
           'public_key': publicKey,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKeyPairSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKeyPair>`.
  RefTo<AwsKeyPair> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `key_pair_id` attribute.
  TfRef<String> get keyPairId => TfRef.attribute<String>(this, 'key_pair_id');

  /// Reference to `key_type` attribute.
  TfRef<String> get keyType => TfRef.attribute<String>(this, 'key_type');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `key_name_prefix` attribute.
  TfRef<String> get keyNamePrefix =>
      TfRef.attribute<String>(this, 'key_name_prefix');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
