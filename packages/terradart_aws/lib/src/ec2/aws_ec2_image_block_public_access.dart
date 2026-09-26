// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_image_block_public_access`.
const Set<String> _awsEc2ImageBlockPublicAccessSensitive = <String>{};

/// Factory wrapper for `aws_ec2_image_block_public_access`.
final class AwsEc2ImageBlockPublicAccess extends Resource {
  static const String tfType = 'aws_ec2_image_block_public_access';

  AwsEc2ImageBlockPublicAccess({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region, 'state': state},
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ImageBlockPublicAccessSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
