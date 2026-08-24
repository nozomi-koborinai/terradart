// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (description != null) 'description': description!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (paused != null) 'paused': paused!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
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
    required TfArg<String> zoneId,
    required List<FilterBody> body,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (expression != null) 'expression': expression,
           if (paused != null) 'paused': paused,
           if (ref != null) 'ref': ref,
           'zone_id': zoneId,
           'body': TfArg.literal([for (final e in body) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareFilterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
