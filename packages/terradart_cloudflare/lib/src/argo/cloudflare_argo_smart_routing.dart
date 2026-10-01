// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_argo_smart_routing`.
const Set<String> _cloudflareArgoSmartRoutingSensitive = <String>{};

/// Argo Smart Routing enum for `value`.
extension type const ArgoSmartRoutingValue._(TfArg<String> _)
    implements TfArg<String> {
  ArgoSmartRoutingValue.variable(String name) : this._(TfArg.variable(name));
  ArgoSmartRoutingValue.expression(String template)
    : this._(TfArg.expression(template));
  const ArgoSmartRoutingValue.arg(TfArg<String> arg) : this._(arg);

  static const on = ArgoSmartRoutingValue._(TfArgLiteral('on'));
  static const off = ArgoSmartRoutingValue._(TfArgLiteral('off'));

  static const List<ArgoSmartRoutingValue> values = [on, off];
}

/// Factory wrapper for `cloudflare_argo_smart_routing`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareArgoSmartRouting extends Resource {
  static const String tfType = 'cloudflare_argo_smart_routing';

  CloudflareArgoSmartRouting(
    super.localName, {
    required ArgoSmartRoutingValue value,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareArgoSmartRoutingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareArgoSmartRouting>`.
  RefTo<CloudflareArgoSmartRouting> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
