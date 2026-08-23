// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_argo_smart_routing`.
const Set<String> _cloudflareArgoSmartRoutingSensitive = <String>{};

/// Factory wrapper for `cloudflare_argo_smart_routing`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareArgoSmartRouting extends Resource {
  static const String tfType = 'cloudflare_argo_smart_routing';

  CloudflareArgoSmartRouting({
    required super.localName,
    required TfArg<String> value,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'value': value, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareArgoSmartRoutingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `editable` attribute.
  TfRef<bool> get editable => TfRef.attribute<bool>(this, 'editable');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
