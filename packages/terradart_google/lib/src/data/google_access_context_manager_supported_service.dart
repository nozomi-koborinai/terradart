// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_supported_service`.
const Set<String> _googleAccessContextManagerSupportedServiceSensitive =
    <String>{};

/// Factory wrapper for `google_access_context_manager_supported_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessContextManagerSupportedService extends Data {
  static const String tfType =
      'google_access_context_manager_supported_service';

  DataGoogleAccessContextManagerSupportedService({
    required super.localName,
    required TfArg<String> serviceName,
  }) : super(terraformType: tfType, argMap: {'service_name': serviceName});

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerSupportedServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_on_restricted_vip` attribute.
  TfRef<bool> get availableOnRestrictedVip =>
      TfRef.attribute<bool>(this, 'available_on_restricted_vip');

  /// Reference to `known_limitations` attribute.
  TfRef<bool> get knownLimitations =>
      TfRef.attribute<bool>(this, 'known_limitations');

  /// Reference to `service_support_stage` attribute.
  TfRef<String> get serviceSupportStage =>
      TfRef.attribute<String>(this, 'service_support_stage');

  /// Reference to `support_stage` attribute.
  TfRef<String> get supportStage =>
      TfRef.attribute<String>(this, 'support_stage');

  /// Reference to `supported_methods` attribute.
  TfRef<List<Map<String, Object?>>> get supportedMethods =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'supported_methods');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
