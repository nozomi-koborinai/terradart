// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_discovered_service`.
const Set<String> _googleApphubDiscoveredServiceSensitive = <String>{};

/// Factory wrapper for `google_apphub_discovered_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApphubDiscoveredService extends Data {
  static const String tfType = 'google_apphub_discovered_service';

  DataGoogleApphubDiscoveredService(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> serviceUri,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'project': ?project,
           'service_uri': serviceUri,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubDiscoveredServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_properties` attribute.
  TfRef<List<Map<String, Object?>>> get serviceProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_properties');

  /// Reference to `service_reference` attribute.
  TfRef<List<Map<String, Object?>>> get serviceReference =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_reference');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_uri` attribute.
  TfRef<String> get serviceUri => TfRef.attribute<String>(this, 'service_uri');
}
