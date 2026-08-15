// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_zones`.
const Set<String> _googleComputeZonesSensitive = <String>{};

/// Factory wrapper for `google_compute_zones`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeZones extends Data {
  static const String tfType = 'google_compute_zones';

  DataGoogleComputeZones({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? status,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeZonesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
