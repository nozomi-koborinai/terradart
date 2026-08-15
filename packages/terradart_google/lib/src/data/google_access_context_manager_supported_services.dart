// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_supported_services`.
const Set<String> _googleAccessContextManagerSupportedServicesSensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_supported_services`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessContextManagerSupportedServices extends Data {
  static const String tfType =
      'google_access_context_manager_supported_services';

  DataGoogleAccessContextManagerSupportedServices({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerSupportedServicesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supported_services` attribute.
  TfRef<List<Map<String, Object?>>> get supportedServices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'supported_services');
}
