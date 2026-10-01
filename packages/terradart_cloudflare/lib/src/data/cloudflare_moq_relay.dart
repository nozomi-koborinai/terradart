// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../moq/cloudflare_moq_relay.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'asc': ?asc?.toTfJson(),
    'created_after': ?createdAfter?.toTfJson(),
    'created_before': ?createdBefore?.toTfJson(),
    'per_page': ?perPage?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_moq_relay`.
final class DataCloudflareMoqRelay extends Data {
  static const String tfType = 'cloudflare_moq_relay';

  DataCloudflareMoqRelay({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? relayId,
    DataMoqRelayFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'relay_id': ?relayId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMoqRelaySensitive;

  /// A reference to the `cloudflare_moq_relay` this data source reads, for
  /// arguments typed `RefTo<CloudflareMoqRelay>`.
  RefTo<CloudflareMoqRelay> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `relay_id` attribute.
  TfRef<String> get relayId => TfRef.attribute<String>(this, 'relay_id');
}
