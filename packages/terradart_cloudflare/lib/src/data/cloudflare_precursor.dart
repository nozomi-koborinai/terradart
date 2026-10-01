// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../precursor/cloudflare_precursor.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_precursor`.
const Set<String> _cloudflarePrecursorSensitive = <String>{};

/// Factory wrapper for `cloudflare_precursor`.
final class DataCloudflarePrecursor extends Data {
  static const String tfType = 'cloudflare_precursor';

  DataCloudflarePrecursor({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflarePrecursorSensitive;

  /// A reference to the `cloudflare_precursor` this data source reads, for
  /// arguments typed `RefTo<CloudflarePrecursor>`.
  RefTo<CloudflarePrecursor> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_mode` attribute.
  TfRef<String> get defaultMode =>
      TfRef.attribute<String>(this, 'default_mode');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
