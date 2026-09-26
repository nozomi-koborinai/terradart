// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_account_alias`.
const Set<String> _awsIamAccountAliasSensitive = <String>{};

/// Factory wrapper for `aws_iam_account_alias`.
final class DataAwsIamAccountAlias extends Data {
  static const String tfType = 'aws_iam_account_alias';

  DataAwsIamAccountAlias({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsIamAccountAliasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_alias` attribute.
  TfRef<String> get accountAlias =>
      TfRef.attribute<String>(this, 'account_alias');
}
