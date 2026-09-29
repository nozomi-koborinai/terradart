// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_public_key`.
const Set<String> _awsCloudfrontPublicKeySensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_cloudfront_public_key`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class CloudfrontPublicKeyName {
  const CloudfrontPublicKeyName();

  /// Sets `name`.
  const factory CloudfrontPublicKeyName.name(TfArg<String> name) =
      CloudfrontPublicKeyNameName;

  /// Sets `name_prefix`.
  const factory CloudfrontPublicKeyName.namePrefix(TfArg<String> namePrefix) =
      CloudfrontPublicKeyNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudfrontPublicKeyName.name] choice: sets `name`.
final class CloudfrontPublicKeyNameName extends CloudfrontPublicKeyName {
  const CloudfrontPublicKeyNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [CloudfrontPublicKeyName.namePrefix] choice: sets `name_prefix`.
final class CloudfrontPublicKeyNameNamePrefix extends CloudfrontPublicKeyName {
  const CloudfrontPublicKeyNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_cloudfront_public_key`.
final class AwsCloudfrontPublicKey extends Resource {
  static const String tfType = 'aws_cloudfront_public_key';

  AwsCloudfrontPublicKey({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> encodedKey,
    CloudfrontPublicKeyName? name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'encoded_key': encodedKey,
           ...?name?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontPublicKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
