// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_account_alias`.
const Set<String> _awsIamAccountAliasSensitive = <String>{};

/// Factory wrapper for `aws_iam_account_alias`.
final class AwsIamAccountAlias extends Resource {
  static const String tfType = 'aws_iam_account_alias';

  AwsIamAccountAlias({
    required super.localName,
    required TfArg<String> accountAlias,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'account_alias': accountAlias});

  @override
  Set<String> get sensitiveFields => _awsIamAccountAliasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
