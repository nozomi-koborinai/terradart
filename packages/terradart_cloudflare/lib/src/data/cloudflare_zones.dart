// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zones`.
const Set<String> _cloudflareZonesSensitive = <String>{};

/// Typed helper for the `account` block of
/// `cloudflare_zones` (derived from provider schema).
@immutable
final class DataZonesAccount {
  const DataZonesAccount({this.id, this.name});

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zones`.
///
/// Accepted Permissions
///
/// - `Zone Zone Read`
final class DataCloudflareZones extends Data {
  static const String tfType = 'cloudflare_zones';

  DataCloudflareZones({
    required super.localName,
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? order,
    TfArg<String>? status,
    TfArg<List<String>>? type,
    DataZonesAccount? account,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (match != null) 'match': match,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (order != null) 'order': order,
           if (status != null) 'status': status,
           if (type != null) 'type': type,
           if (account != null) 'account': TfArg.literal(account.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZonesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
