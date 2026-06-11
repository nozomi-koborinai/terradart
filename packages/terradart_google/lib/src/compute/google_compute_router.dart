// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_router`.
const Set<String> _googleComputeRouterSensitive = <String>{};

/// Factory wrapper for `google_compute_router`.
final class GoogleComputeRouter extends Resource {
  static const String tfType = 'google_compute_router';

  GoogleComputeRouter({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? network,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<String>? description,
    TfArg<bool>? encryptedInterconnectRouter,
    TfArg<Map<String, dynamic>>? bgp,
    TfArg<Map<String, dynamic>>? md5AuthenticationKeys,
    TfArg<Map<String, dynamic>>? params,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (network != null) 'network': network,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (description != null) 'description': description,
           if (encryptedInterconnectRouter != null)
             'encrypted_interconnect_router': encryptedInterconnectRouter,
           if (bgp != null) 'bgp': bgp,
           if (md5AuthenticationKeys != null)
             'md5_authentication_keys': md5AuthenticationKeys,
           if (params != null) 'params': params,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterSensitive;

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
