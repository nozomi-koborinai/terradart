// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_spectrum_applications`.
const Set<String> _cloudflareSpectrumApplicationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_spectrum_applications`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumApplications extends Data {
  static const String tfType = 'cloudflare_spectrum_applications';

  DataCloudflareSpectrumApplications(
    super.localName, {
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationsSensitive;

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
