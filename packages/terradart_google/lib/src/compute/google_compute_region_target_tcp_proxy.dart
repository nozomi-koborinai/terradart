// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
final class GoogleComputeRegionTargetTcpProxy extends Resource {
  static const String tfType = 'google_compute_region_target_tcp_proxy';

  GoogleComputeRegionTargetTcpProxy({
    required super.localName,
    TfArg<String>? backendService,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<bool>? proxyBind,
    TfArg<RegionTargetTcpProxyProxyHeader>? proxyHeader,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (backendService != null) 'backend_service': backendService,
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (proxyBind != null) 'proxy_bind': proxyBind,
           if (proxyHeader != null) 'proxy_header': proxyHeader,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionTargetTcpProxySensitive;

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
}
