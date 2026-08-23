// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield`.
const Set<String> _cloudflareApiShieldSensitive = <String>{};

/// Typed helper for the `auth_id_characteristics` block of
/// `cloudflare_api_shield` (derived from provider schema).
@immutable
final class ApiShieldAuthIdCharacteristics {
  const ApiShieldAuthIdCharacteristics({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_api_shield`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShield extends Resource {
  static const String tfType = 'cloudflare_api_shield';

  CloudflareApiShield({
    required super.localName,
    required TfArg<String> zoneId,
    required List<ApiShieldAuthIdCharacteristics> authIdCharacteristics,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'auth_id_characteristics': TfArg.literal([
             for (final e in authIdCharacteristics) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
