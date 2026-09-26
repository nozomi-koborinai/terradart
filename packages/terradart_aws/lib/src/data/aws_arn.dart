// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arn`.
const Set<String> _awsArnSensitive = <String>{};

/// Factory wrapper for `aws_arn`.
final class DataAwsArn extends Data {
  static const String tfType = 'aws_arn';

  DataAwsArn({
    required super.localName,
    required TfArg<String> arn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn});

  @override
  Set<String> get sensitiveFields => _awsArnSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account` attribute.
  TfRef<String> get account => TfRef.attribute<String>(this, 'account');

  /// Reference to `partition` attribute.
  TfRef<String> get partition => TfRef.attribute<String>(this, 'partition');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource` attribute.
  TfRef<String> get resource => TfRef.attribute<String>(this, 'resource');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
