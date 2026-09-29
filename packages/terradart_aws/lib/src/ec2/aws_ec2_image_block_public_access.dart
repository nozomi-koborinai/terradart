// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_image_block_public_access`.
const Set<String> _awsEc2ImageBlockPublicAccessSensitive = <String>{};

/// Ec2 Image Block Public Access enum for `state`.
enum Ec2ImageBlockPublicAccessState implements TerraformEnum {
  blockNewSharing('block-new-sharing'),
  unblocked('unblocked');

  const Ec2ImageBlockPublicAccessState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_image_block_public_access`.
final class AwsEc2ImageBlockPublicAccess extends Resource {
  static const String tfType = 'aws_ec2_image_block_public_access';

  AwsEc2ImageBlockPublicAccess({
    required super.localName,
    TfArg<String>? region,
    required TfArg<Ec2ImageBlockPublicAccessState> state,
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
}
