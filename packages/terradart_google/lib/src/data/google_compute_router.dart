// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router`.
const Set<String> _googleComputeRouterSensitive = <String>{};

/// Factory wrapper for `google_compute_router`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRouter extends Data {
  static const String tfType = 'google_compute_router';

  DataGoogleComputeRouter({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bgp` attribute.
  TfRef<List<Map<String, Object?>>> get bgp =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bgp');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `encrypted_interconnect_router` attribute.
  TfRef<bool> get encryptedInterconnectRouter =>
      TfRef.attribute<bool>(this, 'encrypted_interconnect_router');

  /// Reference to `md5_authentication_keys` attribute.
  TfRef<List<Map<String, Object?>>> get md5AuthenticationKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'md5_authentication_keys',
      );

  /// Reference to `ncc_gateway` attribute.
  TfRef<String> get nccGateway => TfRef.attribute<String>(this, 'ncc_gateway');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
