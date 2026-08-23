// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_address`.
const Set<String> _cloudflareEmailRoutingAddressSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_email_routing_address` (derived from provider schema).
@immutable
final class DataEmailRoutingAddressFilter {
  const DataEmailRoutingAddressFilter({this.direction, this.verified});

  final TfArg<String>? direction;

  final TfArg<bool>? verified;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (verified != null) 'verified': verified!.toTfJson(),
  };
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
    TfArg<String>? accountId,
    TfArg<String>? destinationAddressIdentifier,
    DataEmailRoutingAddressFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (destinationAddressIdentifier != null)
             'destination_address_identifier': destinationAddressIdentifier,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingAddressSensitive;

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
