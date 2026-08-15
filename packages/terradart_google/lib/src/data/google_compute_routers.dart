// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_routers`.
const Set<String> _googleComputeRoutersSensitive = <String>{};

/// Factory wrapper for `google_compute_routers`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRouters extends Data {
  static const String tfType = 'google_compute_routers';

  DataGoogleComputeRouters({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRoutersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `routers` attribute.
  TfRef<List<Map<String, Object?>>> get routers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routers');
}
