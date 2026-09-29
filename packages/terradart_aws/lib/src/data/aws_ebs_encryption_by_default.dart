// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_ebs_encryption_by_default.dart';

/// Sensitive field paths for `aws_ebs_encryption_by_default`.
const Set<String> _awsEbsEncryptionByDefaultSensitive = <String>{};

/// Factory wrapper for `aws_ebs_encryption_by_default`.
final class DataAwsEbsEncryptionByDefault extends Data {
  static const String tfType = 'aws_ebs_encryption_by_default';

  DataAwsEbsEncryptionByDefault({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEbsEncryptionByDefaultSensitive;

  /// A reference to the `aws_ebs_encryption_by_default` this data source reads, for
  /// arguments typed `RefTo<AwsEbsEncryptionByDefault>`.
  RefTo<AwsEbsEncryptionByDefault> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
