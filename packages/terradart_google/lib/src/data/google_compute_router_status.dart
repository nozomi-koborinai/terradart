// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router_status`.
const Set<String> _googleComputeRouterStatusSensitive = <String>{};

/// Factory wrapper for `google_compute_router_status`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRouterStatus extends Data {
  static const String tfType = 'google_compute_router_status';

  DataGoogleComputeRouterStatus({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterStatusSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `best_routes` attribute.
  TfRef<List<Map<String, Object?>>> get bestRoutes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'best_routes');

  /// Reference to `best_routes_for_router` attribute.
  TfRef<List<Map<String, Object?>>> get bestRoutesForRouter =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'best_routes_for_router',
      );

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');
}
