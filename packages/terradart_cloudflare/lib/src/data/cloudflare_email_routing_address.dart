// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_routing_address.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_routing_address`.
const Set<String> _cloudflareEmailRoutingAddressSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_routing_address` (derived from provider schema).
@immutable
final class DataEmailRoutingAddressFilter {
  const DataEmailRoutingAddressFilter({this.direction, this.verified});

  final TfArg<DataEmailRoutingAddressFilterDirection>? direction;

  final TfArg<bool>? verified;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'verified': ?verified?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataEmailRoutingAddressFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataEmailRoutingAddressFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_email_routing_address`.
///
/// Accepted Permissions
///
/// - `Email Routing Addresses Read` - `Email Routing Addresses Write`
final class DataCloudflareEmailRoutingAddress extends Data {
  static const String tfType = 'cloudflare_email_routing_address';

  DataCloudflareEmailRoutingAddress({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? destinationAddressIdentifier,
    DataEmailRoutingAddressFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'destination_address_identifier': ?destinationAddressIdentifier,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingAddressSensitive;

  /// A reference to the `cloudflare_email_routing_address` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailRoutingAddress>`.
  RefTo<CloudflareEmailRoutingAddress> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `verified` attribute.
  TfRef<String> get verified => TfRef.attribute<String>(this, 'verified');
}
