// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_ebs_default_kms_key`.
const Set<String> _awsEbsDefaultKmsKeySensitive = <String>{};

/// Factory wrapper for `aws_ebs_default_kms_key`.
final class AwsEbsDefaultKmsKey extends Resource {
  static const String tfType = 'aws_ebs_default_kms_key';

  AwsEbsDefaultKmsKey({
    required super.localName,
    required RefTo<AwsKmsKey> keyArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'key_arn': keyArn.encodeAs('arn'), 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsEbsDefaultKmsKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEbsDefaultKmsKey>`.
  RefTo<AwsEbsDefaultKmsKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_arn` attribute.
  TfRef<String> get keyArn => TfRef.attribute<String>(this, 'key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
