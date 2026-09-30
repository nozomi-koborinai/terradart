// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivs_playback_key_pair`.
const Set<String> _awsIvsPlaybackKeyPairSensitive = <String>{};

/// Factory wrapper for `aws_ivs_playback_key_pair`.
final class AwsIvsPlaybackKeyPair extends Resource {
  static const String tfType = 'aws_ivs_playback_key_pair';

  AwsIvsPlaybackKeyPair({
    required super.localName,
    TfArg<String>? name,
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
           'name': ?name,
           'public_key': publicKey,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvsPlaybackKeyPairSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIvsPlaybackKeyPair>`.
  RefTo<AwsIvsPlaybackKeyPair> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKeyRef => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
