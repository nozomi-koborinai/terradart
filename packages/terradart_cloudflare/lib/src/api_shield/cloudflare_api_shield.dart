// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  final TfArg<ApiShieldType> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ApiShieldType implements TerraformEnum {
  header('header'),
  cookie('cookie'),
  jwt('jwt');

  const ApiShieldType(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<bool>? normalize,
    required RefTo<CloudflareZone> zoneId,
    required List<ApiShieldAuthIdCharacteristics> authIdCharacteristics,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'normalize': ?normalize,
           'zone_id': zoneId.encodeAs('id'),
           'auth_id_characteristics': TfArg.literal([
             for (final e in authIdCharacteristics) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShield>`.
  RefTo<CloudflareApiShield> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `normalize` attribute.
  TfRef<bool> get normalizeRef => TfRef.attribute<bool>(this, 'normalize');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
