// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_control`.
const Set<String> _awsCloudfrontOriginAccessControlSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_origin_access_control`.
final class AwsCloudfrontOriginAccessControl extends Resource {
  static const String tfType = 'aws_cloudfront_origin_access_control';

  AwsCloudfrontOriginAccessControl({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> originAccessControlOriginType,
    required TfArg<String> signingBehavior,
    required TfArg<String> signingProtocol,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'origin_access_control_origin_type': originAccessControlOriginType,
           'signing_behavior': signingBehavior,
           'signing_protocol': signingProtocol,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginAccessControlSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
