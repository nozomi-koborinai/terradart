// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../spectrum/cloudflare_spectrum_application.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_spectrum_application`.
const Set<String> _cloudflareSpectrumApplicationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class DataSpectrumApplicationFilter {
  const DataSpectrumApplicationFilter({this.direction, this.order});

  final DataSpectrumApplicationDirection? direction;

  final DataSpectrumApplicationOrder? order;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataSpectrumApplicationDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSpectrumApplicationDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataSpectrumApplicationDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSpectrumApplicationDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSpectrumApplicationDirection._(TfArgLiteral('asc'));
  static const desc = DataSpectrumApplicationDirection._(TfArgLiteral('desc'));

  static const List<DataSpectrumApplicationDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataSpectrumApplicationOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSpectrumApplicationOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataSpectrumApplicationOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSpectrumApplicationOrder.arg(TfArg<String> arg) : this._(arg);

  static const protocol = DataSpectrumApplicationOrder._(
    TfArgLiteral('protocol'),
  );
  static const appId = DataSpectrumApplicationOrder._(TfArgLiteral('app_id'));
  static const createdOn = DataSpectrumApplicationOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataSpectrumApplicationOrder._(
    TfArgLiteral('modified_on'),
  );
  static const dns = DataSpectrumApplicationOrder._(TfArgLiteral('dns'));

  static const List<DataSpectrumApplicationOrder> values = [
    protocol,
    appId,
    createdOn,
    modifiedOn,
    dns,
  ];
}

/// Factory wrapper for `cloudflare_spectrum_application`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumApplication extends Data {
  static const String tfType = 'cloudflare_spectrum_application';

  DataCloudflareSpectrumApplication(
    super.localName, {
    TfArg<String>? appId,
    RefTo<CloudflareZone>? zoneId,
    DataSpectrumApplicationFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': ?appId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationSensitive;

  /// A reference to the `cloudflare_spectrum_application` this data source reads, for
  /// arguments typed `RefTo<CloudflareSpectrumApplication>`.
  RefTo<CloudflareSpectrumApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `origin_worker_id` attribute.
  TfRef<String> get originWorkerId =>
      TfRef.attribute<String>(this, 'origin_worker_id');

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

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
