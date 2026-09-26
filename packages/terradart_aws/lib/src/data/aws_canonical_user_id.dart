// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_canonical_user_id`.
const Set<String> _awsCanonicalUserIdSensitive = <String>{};

/// Factory wrapper for `aws_canonical_user_id`.
final class DataAwsCanonicalUserId extends Data {
  static const String tfType = 'aws_canonical_user_id';

  DataAwsCanonicalUserId({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsCanonicalUserIdSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');
}
