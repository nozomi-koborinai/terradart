// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_moq_relay`.
const Set<String> _cloudflareMoqRelaySensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_moq_relay` (derived from provider schema).
@immutable
final class DataMoqRelayFilter {
  const DataMoqRelayFilter({
    this.asc,
    this.createdAfter,
    this.createdBefore,
    this.perPage,
  });

  final TfArg<bool>? asc;

  final TfArg<String>? createdAfter;

  final TfArg<String>? createdBefore;

  final TfArg<num>? perPage;

  Map<String, Object?> encode() => {
    if (asc != null) 'asc': asc!.toTfJson(),
    if (createdAfter != null) 'created_after': createdAfter!.toTfJson(),
    if (createdBefore != null) 'created_before': createdBefore!.toTfJson(),
    if (perPage != null) 'per_page': perPage!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_moq_relay`.
final class DataCloudflareMoqRelay extends Data {
  static const String tfType = 'cloudflare_moq_relay';

  DataCloudflareMoqRelay({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? relayId,
    DataMoqRelayFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (relayId != null) 'relay_id': relayId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMoqRelaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
