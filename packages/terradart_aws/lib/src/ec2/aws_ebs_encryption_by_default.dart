// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_encryption_by_default`.
const Set<String> _awsEbsEncryptionByDefaultSensitive = <String>{};

/// Factory wrapper for `aws_ebs_encryption_by_default`.
final class AwsEbsEncryptionByDefault extends Resource {
  static const String tfType = 'aws_ebs_encryption_by_default';

  AwsEbsEncryptionByDefault({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEbsEncryptionByDefaultSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
