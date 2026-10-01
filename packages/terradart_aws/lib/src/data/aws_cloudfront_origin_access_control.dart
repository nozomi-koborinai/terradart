// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloudfront/aws_cloudfront_origin_access_control.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_control`.
const Set<String> _awsCloudfrontOriginAccessControlSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_origin_access_control`.
final class DataAwsCloudfrontOriginAccessControl extends Data {
  static const String tfType = 'aws_cloudfront_origin_access_control';

  DataAwsCloudfrontOriginAccessControl(
    super.localName, {
    required TfArg<String> id,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'id': id});

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginAccessControlSensitive;

  /// A reference to the `aws_cloudfront_origin_access_control` this data source reads, for
  /// arguments typed `RefTo<AwsCloudfrontOriginAccessControl>`.
  RefTo<AwsCloudfrontOriginAccessControl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `origin_access_control_origin_type` attribute.
  TfRef<String> get originAccessControlOriginType =>
      TfRef.attribute<String>(this, 'origin_access_control_origin_type');

  /// Reference to `signing_behavior` attribute.
  TfRef<String> get signingBehavior =>
      TfRef.attribute<String>(this, 'signing_behavior');

  /// Reference to `signing_protocol` attribute.
  TfRef<String> get signingProtocol =>
      TfRef.attribute<String>(this, 'signing_protocol');
}
