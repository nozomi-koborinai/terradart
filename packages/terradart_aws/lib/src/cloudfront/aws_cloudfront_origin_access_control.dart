// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_access_control`.
const Set<String> _awsCloudfrontOriginAccessControlSensitive = <String>{};

/// Cloudfront Origin Access Control Origin enum for `origin_access_control_origin_type`.
extension type const CloudfrontOriginAccessControlOriginType._(TfArg<String> _)
    implements TfArg<String> {
  CloudfrontOriginAccessControlOriginType.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginAccessControlOriginType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginAccessControlOriginType.arg(TfArg<String> arg)
    : this._(arg);

  static const s3 = CloudfrontOriginAccessControlOriginType._(
    TfArgLiteral('s3'),
  );
  static const mediastore = CloudfrontOriginAccessControlOriginType._(
    TfArgLiteral('mediastore'),
  );
  static const mediapackagev2 = CloudfrontOriginAccessControlOriginType._(
    TfArgLiteral('mediapackagev2'),
  );
  static const lambda = CloudfrontOriginAccessControlOriginType._(
    TfArgLiteral('lambda'),
  );

  static const List<CloudfrontOriginAccessControlOriginType> values = [
    s3,
    mediastore,
    mediapackagev2,
    lambda,
  ];
}

/// Cloudfront Origin Access Control Signing enum for `signing_behavior`.
extension type const CloudfrontOriginAccessControlSigningBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontOriginAccessControlSigningBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginAccessControlSigningBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginAccessControlSigningBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const never = CloudfrontOriginAccessControlSigningBehavior._(
    TfArgLiteral('never'),
  );
  static const always = CloudfrontOriginAccessControlSigningBehavior._(
    TfArgLiteral('always'),
  );
  static const noOverride = CloudfrontOriginAccessControlSigningBehavior._(
    TfArgLiteral('no-override'),
  );

  static const List<CloudfrontOriginAccessControlSigningBehavior> values = [
    never,
    always,
    noOverride,
  ];
}

/// Cloudfront Origin Access Control Signing enum for `signing_protocol`.
extension type const CloudfrontOriginAccessControlSigningProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontOriginAccessControlSigningProtocol.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginAccessControlSigningProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginAccessControlSigningProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const sigv4 = CloudfrontOriginAccessControlSigningProtocol._(
    TfArgLiteral('sigv4'),
  );
  static const sigv4a = CloudfrontOriginAccessControlSigningProtocol._(
    TfArgLiteral('sigv4a'),
  );

  static const List<CloudfrontOriginAccessControlSigningProtocol> values = [
    sigv4,
    sigv4a,
  ];
}

/// Factory wrapper for `aws_cloudfront_origin_access_control`.
final class AwsCloudfrontOriginAccessControl extends Resource {
  static const String tfType = 'aws_cloudfront_origin_access_control';

  AwsCloudfrontOriginAccessControl(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required CloudfrontOriginAccessControlOriginType
    originAccessControlOriginType,
    required CloudfrontOriginAccessControlSigningBehavior signingBehavior,
    required CloudfrontOriginAccessControlSigningProtocol signingProtocol,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

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
