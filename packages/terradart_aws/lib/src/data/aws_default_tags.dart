// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_tags`.
const Set<String> _awsDefaultTagsSensitive = <String>{};

/// Factory wrapper for `aws_default_tags`.
final class DataAwsDefaultTags extends Data {
  static const String tfType = 'aws_default_tags';

  DataAwsDefaultTags({required super.localName, super.provider, super.timeouts})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsDefaultTagsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
