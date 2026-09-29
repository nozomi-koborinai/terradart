// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_sagemaker_image`.
const Set<String> _awsSagemakerImageSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_image`.
final class AwsSagemakerImage extends Resource {
  static const String tfType = 'aws_sagemaker_image';

  AwsSagemakerImage({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> imageName,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': ?displayName,
           'image_name': imageName,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerImage>`.
  RefTo<AwsSagemakerImage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
