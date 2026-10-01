// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_control`.
const Set<String> _awsCloudfrontOriginAccessControlSensitive = <String>{};

/// Cloudfront Origin Access Control Origin enum for `origin_access_control_origin_type`.
enum CloudfrontOriginAccessControlOriginType implements TerraformEnum {
  s3('s3'),
  mediastore('mediastore'),
  mediapackagev2('mediapackagev2'),
  lambda('lambda');

  const CloudfrontOriginAccessControlOriginType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudfront Origin Access Control Signing enum for `signing_behavior`.
enum CloudfrontOriginAccessControlSigningBehavior implements TerraformEnum {
  never('never'),
  always('always'),
  noOverride('no-override');

  const CloudfrontOriginAccessControlSigningBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudfront Origin Access Control Signing enum for `signing_protocol`.
enum CloudfrontOriginAccessControlSigningProtocol implements TerraformEnum {
  sigv4('sigv4'),
  sigv4a('sigv4a');

  const CloudfrontOriginAccessControlSigningProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudfront_origin_access_control`.
final class AwsCloudfrontOriginAccessControl extends Resource {
  static const String tfType = 'aws_cloudfront_origin_access_control';

  AwsCloudfrontOriginAccessControl({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<CloudfrontOriginAccessControlOriginType>
    originAccessControlOriginType,
    required TfArg<CloudfrontOriginAccessControlSigningBehavior>
    signingBehavior,
    required TfArg<CloudfrontOriginAccessControlSigningProtocol>
    signingProtocol,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'origin_access_control_origin_type': originAccessControlOriginType,
           'signing_behavior': signingBehavior,
           'signing_protocol': signingProtocol,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginAccessControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontOriginAccessControl>`.
  RefTo<AwsCloudfrontOriginAccessControl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `origin_access_control_origin_type` attribute.
  TfRef<String> get originAccessControlOriginTypeRef =>
      TfRef.attribute<String>(this, 'origin_access_control_origin_type');

  /// Reference to `signing_behavior` attribute.
  TfRef<String> get signingBehaviorRef =>
      TfRef.attribute<String>(this, 'signing_behavior');

  /// Reference to `signing_protocol` attribute.
  TfRef<String> get signingProtocolRef =>
      TfRef.attribute<String>(this, 'signing_protocol');
}
