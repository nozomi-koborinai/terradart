// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_filter`.
const Set<String> _cloudflareFilterSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_filter` (derived from provider schema).
@immutable
final class DataFilterFilter {
  const DataFilterFilter({
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
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (paused != null) 'paused': paused!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
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
    TfArg<String>? zoneId,
    DataFilterFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filterId != null) 'filter_id': filterId,
           if (zoneId != null) 'zone_id': zoneId,
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
}
