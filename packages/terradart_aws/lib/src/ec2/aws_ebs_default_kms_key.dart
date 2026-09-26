// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_default_kms_key`.
const Set<String> _awsEbsDefaultKmsKeySensitive = <String>{};

/// Factory wrapper for `aws_ebs_default_kms_key`.
final class AwsEbsDefaultKmsKey extends Resource {
  static const String tfType = 'aws_ebs_default_kms_key';

  AwsEbsDefaultKmsKey({
    required super.localName,
    required TfArg<String> keyArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key_arn': keyArn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEbsDefaultKmsKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
