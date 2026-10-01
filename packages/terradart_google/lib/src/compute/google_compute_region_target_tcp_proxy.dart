// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_region_backend_service.dart'
    show GoogleComputeRegionBackendService;

/// Sensitive field paths for `google_compute_region_target_tcp_proxy`.
const Set<String> _googleComputeRegionTargetTcpProxySensitive = <String>{};

enum RegionTargetTcpProxyProxyHeader implements TerraformEnum {
  none('NONE'),
  proxyV1('PROXY_V1');

  const RegionTargetTcpProxyProxyHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_region_target_tcp_proxy`.
///
/// Represents a RegionTargetTcpProxy resource, which is used by one or more
/// forwarding rules to route incoming TCP requests to a regional TCP proxy load
/// balancer.
final class GoogleComputeRegionTargetTcpProxy extends Resource {
  static const String tfType = 'google_compute_region_target_tcp_proxy';

  GoogleComputeRegionTargetTcpProxy({
    required super.localName,
    RefTo<GoogleComputeRegionBackendService>? backendService,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<bool>? proxyBind,
    TfArg<RegionTargetTcpProxyProxyHeader>? proxyHeader,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_service': ?backendService?.encodeAs('self_link'),
           'description': ?description,
           'name': name,
           'project': ?project,
           'proxy_bind': ?proxyBind,
           'proxy_header': ?proxyHeader,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionTargetTcpProxySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionTargetTcpProxy>`.
  RefTo<GoogleComputeRegionTargetTcpProxy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get backendService =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `proxy_bind` attribute.
  TfRef<bool> get proxyBind => TfRef.attribute<bool>(this, 'proxy_bind');

  /// Reference to `proxy_header` attribute.
  TfRef<String> get proxyHeader =>
      TfRef.attribute<String>(this, 'proxy_header');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
