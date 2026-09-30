// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_argo_smart_routing`.
const Set<String> _cloudflareArgoSmartRoutingSensitive = <String>{};

/// Argo Smart Routing enum for `value`.
enum ArgoSmartRoutingValue implements TerraformEnum {
  on('on'),
  off('off');

  const ArgoSmartRoutingValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_argo_smart_routing`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareArgoSmartRouting extends Resource {
  static const String tfType = 'cloudflare_argo_smart_routing';

  CloudflareArgoSmartRouting({
    required super.localName,
    required TfArg<ArgoSmartRoutingValue> value,
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
  TfRef<String> get valueRef => TfRef.attribute<String>(this, 'value');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
