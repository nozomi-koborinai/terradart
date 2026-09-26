// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_caller_identity`.
const Set<String> _awsCallerIdentitySensitive = <String>{};

/// Factory wrapper for `aws_caller_identity`.
///
/// The AWS account, user ID and ARN the provider authenticated as. Read
/// [accountId] instead of hard-coding the account number in ARNs.
final class DataAwsCallerIdentity extends Data {
  static const String tfType = 'aws_caller_identity';

  DataAwsCallerIdentity({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsCallerIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
