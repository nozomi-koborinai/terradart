// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_argo_tiered_caching`.
const Set<String> _cloudflareArgoTieredCachingSensitive = <String>{};

/// Argo Tiered Caching enum for `value`.
enum ArgoTieredCachingValue implements TerraformEnum {
  on('on'),
  off('off');

  const ArgoTieredCachingValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_argo_tiered_caching`.
final class CloudflareArgoTieredCaching extends Resource {
  static const String tfType = 'cloudflare_argo_tiered_caching';

  CloudflareArgoTieredCaching({
    required super.localName,
    required TfArg<ArgoTieredCachingValue> value,
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
  Set<String> get sensitiveFields => _cloudflareArgoTieredCachingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareArgoTieredCaching>`.
  RefTo<CloudflareArgoTieredCaching> get ref => RefTo.of(this);

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
