// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_addresses`.
const Set<String> _googleComputeAddressesSensitive = <String>{};

/// Factory wrapper for `google_compute_addresses`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeAddresses extends Data {
  static const String tfType = 'google_compute_addresses';

  DataGoogleComputeAddresses({
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
  Set<String> get sensitiveFields => _googleComputeAddressesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addresses` attribute.
  TfRef<List<Map<String, Object?>>> get addresses =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'addresses');
}
