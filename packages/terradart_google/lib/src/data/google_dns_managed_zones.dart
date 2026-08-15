// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_managed_zones`.
const Set<String> _googleDnsManagedZonesSensitive = <String>{};

/// Factory wrapper for `google_dns_managed_zones`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsManagedZones extends Data {
  static const String tfType = 'google_dns_managed_zones';

  DataGoogleDnsManagedZones({required super.localName, TfArg<String>? project})
    : super(
        terraformType: tfType,
        argMap: {if (project != null) 'project': project},
      );

  @override
  Set<String> get sensitiveFields => _googleDnsManagedZonesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_zones` attribute.
  TfRef<List<Map<String, Object?>>> get managedZones =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_zones');
}
