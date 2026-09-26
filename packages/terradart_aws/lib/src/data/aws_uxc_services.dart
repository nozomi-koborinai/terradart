// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_uxc_services`.
const Set<String> _awsUxcServicesSensitive = <String>{};

/// Factory wrapper for `aws_uxc_services`.
final class DataAwsUxcServices extends Data {
  static const String tfType = 'aws_uxc_services';

  DataAwsUxcServices({required super.localName, super.provider, super.timeouts})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsUxcServicesSensitive;

  /// Reference to `services` attribute.
  TfRef<List<String>> get services =>
      TfRef.attribute<List<String>>(this, 'services');
}
