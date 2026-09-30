// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_tcp_proxy`.
const Set<String> _googleComputeTargetTcpProxySensitive = <String>{};

enum TargetTcpProxyProxyHeader implements TerraformEnum {
  none('NONE'),
  proxyV1('PROXY_V1');

  const TargetTcpProxyProxyHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_target_tcp_proxy`.
///
/// Represents a TargetTcpProxy resource, which is used by one or more global
/// forwarding rule to route incoming TCP requests to a Backend service.
final class GoogleComputeTargetTcpProxy extends Resource {
  static const String tfType = 'google_compute_target_tcp_proxy';

  GoogleComputeTargetTcpProxy({
    required super.localName,
    TfArg<String>? backendService,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<bool>? proxyBind,
    TfArg<TargetTcpProxyProxyHeader>? proxyHeader,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_service': ?backendService,
           'description': ?description,
           'name': name,
           'project': ?project,
           'proxy_bind': ?proxyBind,
           'proxy_header': ?proxyHeader,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetTcpProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetTcpProxy>`.
  RefTo<GoogleComputeTargetTcpProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `proxy_id` attribute.
  TfRef<num> get proxyId => TfRef.attribute<num>(this, 'proxy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `backend_service` attribute.
  TfRef<String> get backendServiceRef =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `proxy_bind` attribute.
  TfRef<bool> get proxyBindRef => TfRef.attribute<bool>(this, 'proxy_bind');

  /// Reference to `proxy_header` attribute.
  TfRef<String> get proxyHeaderRef =>
      TfRef.attribute<String>(this, 'proxy_header');
}
