// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_api_shield.dart';

/// Sensitive field paths for `cloudflare_api_shield`.
const Set<String> _cloudflareApiShieldSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShield extends Data {
  static const String tfType = 'cloudflare_api_shield';

  DataCloudflareApiShield({
    required super.localName,
    TfArg<bool>? normalize,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'normalize': ?normalize, 'zone_id': ?zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSensitive;

  /// A reference to the `cloudflare_api_shield` this data source reads, for
  /// arguments typed `RefTo<CloudflareApiShield>`.
  RefTo<CloudflareApiShield> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
