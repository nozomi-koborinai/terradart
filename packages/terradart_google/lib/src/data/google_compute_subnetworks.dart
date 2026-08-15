// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_subnetworks`.
const Set<String> _googleComputeSubnetworksSensitive = <String>{};

/// Factory wrapper for `google_compute_subnetworks`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSubnetworks extends Data {
  static const String tfType = 'google_compute_subnetworks';

  DataGoogleComputeSubnetworks({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworksSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `subnetworks` attribute.
  TfRef<List<Map<String, Object?>>> get subnetworks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnetworks');
}
