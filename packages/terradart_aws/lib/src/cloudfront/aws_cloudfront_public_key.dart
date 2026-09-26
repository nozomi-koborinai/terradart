// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_public_key`.
const Set<String> _awsCloudfrontPublicKeySensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_public_key`.
final class AwsCloudfrontPublicKey extends Resource {
  static const String tfType = 'aws_cloudfront_public_key';

  AwsCloudfrontPublicKey({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> encodedKey,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'encoded_key': encodedKey,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
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
