// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_session_context`.
const Set<String> _awsIamSessionContextSensitive = <String>{};

/// Factory wrapper for `aws_iam_session_context`.
final class DataAwsIamSessionContext extends Data {
  static const String tfType = 'aws_iam_session_context';

  DataAwsIamSessionContext({
    required super.localName,
    required TfArg<String> arn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'arn': arn});

  @override
  Set<String> get sensitiveFields => _awsIamSessionContextSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `issuer_arn` attribute.
  TfRef<String> get issuerArn => TfRef.attribute<String>(this, 'issuer_arn');

  /// Reference to `issuer_id` attribute.
  TfRef<String> get issuerId => TfRef.attribute<String>(this, 'issuer_id');

  /// Reference to `issuer_name` attribute.
  TfRef<String> get issuerName => TfRef.attribute<String>(this, 'issuer_name');

  /// Reference to `session_name` attribute.
  TfRef<String> get sessionName =>
      TfRef.attribute<String>(this, 'session_name');
}
