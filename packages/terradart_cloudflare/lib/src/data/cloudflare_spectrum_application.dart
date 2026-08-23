// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_spectrum_application`.
const Set<String> _cloudflareSpectrumApplicationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class DataSpectrumApplicationFilter {
  const DataSpectrumApplicationFilter({this.direction, this.order});

  final TfArg<String>? direction;

  final TfArg<String>? order;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_spectrum_application`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumApplication extends Data {
  static const String tfType = 'cloudflare_spectrum_application';

  DataCloudflareSpectrumApplication({
    required super.localName,
    TfArg<String>? appId,
    TfArg<String>? zoneId,
    DataSpectrumApplicationFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (appId != null) 'app_id': appId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `argo_smart_routing` attribute.
  TfRef<bool> get argoSmartRouting =>
      TfRef.attribute<bool>(this, 'argo_smart_routing');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `ip_firewall` attribute.
  TfRef<bool> get ipFirewall => TfRef.attribute<bool>(this, 'ip_firewall');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `origin_direct` attribute.
  TfRef<List<String>> get originDirect =>
      TfRef.attribute<List<String>>(this, 'origin_direct');

  /// Reference to `origin_port` attribute.
  TfRef<Object?> get originPort =>
      TfRef.attribute<Object?>(this, 'origin_port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `proxy_protocol` attribute.
  TfRef<String> get proxyProtocol =>
      TfRef.attribute<String>(this, 'proxy_protocol');

  /// Reference to `tls` attribute.
  TfRef<String> get tls => TfRef.attribute<String>(this, 'tls');

  /// Reference to `traffic_type` attribute.
  TfRef<String> get trafficType =>
      TfRef.attribute<String>(this, 'traffic_type');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
