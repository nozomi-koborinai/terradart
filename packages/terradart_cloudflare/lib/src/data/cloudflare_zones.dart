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
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zones`.
///
/// Accepted Permissions
///
/// - `Zone Zone Read`
final class DataCloudflareZones extends Data {
  static const String tfType = 'cloudflare_zones';

  DataCloudflareZones(
    super.localName, {
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? order,
    TfArg<String>? status,
    TfArg<List<String>>? type,
    DataZonesAccount? account,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'match': ?match,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
           'status': ?status,
           'type': ?type,
           if (account != null) 'account': TfArg.literal(account.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZonesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<List<String>> get type => TfRef.attribute<List<String>>(this, 'type');
}
