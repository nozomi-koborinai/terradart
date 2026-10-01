// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_image_block_public_access`.
const Set<String> _awsEc2ImageBlockPublicAccessSensitive = <String>{};

/// Ec2 Image Block Public Access enum for `state`.
extension type const Ec2ImageBlockPublicAccessState._(TfArg<String> _)
    implements TfArg<String> {
  Ec2ImageBlockPublicAccessState.variable(String name)
    : this._(TfArg.variable(name));
  Ec2ImageBlockPublicAccessState.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2ImageBlockPublicAccessState.arg(TfArg<String> arg) : this._(arg);

  static const blockNewSharing = Ec2ImageBlockPublicAccessState._(
    TfArgLiteral('block-new-sharing'),
  );
  static const unblocked = Ec2ImageBlockPublicAccessState._(
    TfArgLiteral('unblocked'),
  );

  static const List<Ec2ImageBlockPublicAccessState> values = [
    blockNewSharing,
    unblocked,
  ];
}

/// Factory wrapper for `aws_ec2_image_block_public_access`.
final class AwsEc2ImageBlockPublicAccess extends Resource {
  static const String tfType = 'aws_ec2_image_block_public_access';

  AwsEc2ImageBlockPublicAccess(
    super.localName, {
    TfArg<String>? region,
    required Ec2ImageBlockPublicAccessState state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'state': state},
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ImageBlockPublicAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ImageBlockPublicAccess>`.
  RefTo<AwsEc2ImageBlockPublicAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
