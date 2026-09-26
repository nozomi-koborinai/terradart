// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_default_kms_key`.
const Set<String> _awsEbsDefaultKmsKeySensitive = <String>{};

/// Factory wrapper for `aws_ebs_default_kms_key`.
final class DataAwsEbsDefaultKmsKey extends Data {
  static const String tfType = 'aws_ebs_default_kms_key';

  DataAwsEbsDefaultKmsKey({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEbsDefaultKmsKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_arn` attribute.
  TfRef<String> get keyArn => TfRef.attribute<String>(this, 'key_arn');
}
