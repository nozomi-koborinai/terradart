// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_grpc_proxy`.
const Set<String> _googleComputeTargetGrpcProxySensitive = <String>{};

/// Factory wrapper for `google_compute_target_grpc_proxy`.
///
/// Represents a Target gRPC Proxy resource. A target gRPC proxy is a component
/// of load balancers intended for load balancing gRPC traffic. Global
/// forwarding rules reference a target gRPC proxy. The Target gRPC Proxy
/// references a URL map which specifies how traffic routes to gRPC backend
/// services.
///
/// Global gRPC target proxy. [urlMap] must point at a
/// [GoogleComputeUrlMap] whose default backend uses protocol `GRPC`.
/// Set [validateForProxyless] when gRPC clients skip the sidecar proxy.
final class GoogleComputeTargetGrpcProxy extends Resource {
  static const String tfType = 'google_compute_target_grpc_proxy';

  GoogleComputeTargetGrpcProxy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? urlMap,
    TfArg<String>? description,
    TfArg<bool>? validateForProxyless,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'url_map': ?urlMap,
           'description': ?description,
           'validate_for_proxyless': ?validateForProxyless,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetGrpcProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetGrpcProxy>`.
  RefTo<GoogleComputeTargetGrpcProxy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `url_map` attribute.
  TfRef<String> get urlMapRef => TfRef.attribute<String>(this, 'url_map');

  /// Reference to `validate_for_proxyless` attribute.
  TfRef<bool> get validateForProxylessRef =>
      TfRef.attribute<bool>(this, 'validate_for_proxyless');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
