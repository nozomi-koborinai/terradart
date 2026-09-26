// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_file_system_policy`.
const Set<String> _awsS3filesFileSystemPolicySensitive = <String>{};

/// Factory wrapper for `aws_s3files_file_system_policy`.
final class AwsS3filesFileSystemPolicy extends Resource {
  static const String tfType = 'aws_s3files_file_system_policy';

  AwsS3filesFileSystemPolicy({
    required super.localName,
    required TfArg<String> fileSystemId,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesFileSystemPolicySensitive;
}
