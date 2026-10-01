// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_filter`.
const Set<String> _cloudflareFilterSensitive = <String>{};

/// Typed helper for the `body` block of
/// `cloudflare_filter` (derived from provider schema).
@immutable
final class FilterBody {
  const FilterBody({this.description, this.expression, this.paused, this.ref});

  final TfArg<String>? description;

  final TfArg<String>? expression;

  final TfArg<bool>? paused;

  final TfArg<String>? ref;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'paused': ?paused?.toTfJson(),
    'ref': ?ref?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_filter`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareFilter extends Resource {
  static const String tfType = 'cloudflare_filter';

  CloudflareFilter({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? expression,
    TfArg<bool>? paused,
    TfArg<String>? ref,
    required RefTo<CloudflareZone> zoneId,
    required List<FilterBody> body,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'expression': ?expression,
           'paused': ?paused,
           'ref': ?ref,
           'zone_id': zoneId.encodeAs('id'),
           'body': TfArg.literal([for (final e in body) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareFilter>`.
  RefTo<CloudflareFilter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `ref` attribute.
  TfRef<String> get refAttr => TfRef.attribute<String>(this, 'ref');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
