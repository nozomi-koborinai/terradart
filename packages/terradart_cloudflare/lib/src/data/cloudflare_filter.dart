// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_filter`.
const Set<String> _cloudflareFilterSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_filter` (derived from provider schema).
@immutable
final class DataFilter {
  const DataFilter({
    this.description,
    this.expression,
    this.id,
    this.paused,
    this.ref,
  });

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<String>? id;

  final TfArg<bool>? paused;

  final TfArg<String>? ref;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'id': ?id?.toTfJson(),
    'paused': ?paused?.toTfJson(),
    'ref': ?ref?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_filter`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareFilter extends Data {
  static const String tfType = 'cloudflare_filter';

  DataCloudflareFilter({
    required super.localName,
    TfArg<String>? filterId,
    RefTo<CloudflareZone>? zoneId,
    DataFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filter_id': ?filterId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFilterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `ref` attribute.
  TfRef<String> get ref => TfRef.attribute<String>(this, 'ref');

  /// Reference to `filter_id` attribute.
  TfRef<String> get filterIdRef => TfRef.attribute<String>(this, 'filter_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
